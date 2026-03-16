# One-Page Spec — DotProd16 Mixed-Signal Accelerator (v1)

## Purpose
Memory-mapped peripheral that computes a **16-element dot product** (AI perceptron / DSP FIR primitive). CPU loads inputs, triggers compute, polls/interrupts on done, reads result.

---

## 1) External Block Interface (pins)

### Clock / Reset
- `clk` : system clock (from digital)
- `rst_n` : active-low reset (from digital)

### Control (digital → analog)
- `acc_start` : start transaction (pulse or level)
- `acc_mode[1:0]` : optional (00=dotprod16, 01=FIR_step, others reserved)
- `acc_clear` : clear internal state (optional; can be implicit on start)

### Status (analog → digital)
- `acc_busy` : 1 while compute/convert in progress
- `acc_done` : 1 when result valid (pulse or level)
- `acc_err` : sticky error (optional)

### Data stream (digital ↔ analog) — recommended
- `idx[3:0]` : element index 0..15
- `x_in[7:0]` : signed int8 (two’s complement)
- `w_in[7:0]` : signed int8 (two’s complement)
- `xw_valid` : qualifies `idx/x_in/w_in`
- `xw_ready` : analog ready for next pair

### Result (analog → digital)
- `result_code[11:0]` : raw ADC output code (width TBD 8–12; target 10)
- `result_valid` : qualifies `result_code`

**Transaction contract**
1. Stream 16 (x,w) pairs using valid/ready
2. Assert `acc_start`
3. Wait for `acc_done` / `result_valid`
4. CPU reads `RESULT` register

---

## 2) Memory Map (32-bit regs)

Base address example: `ACC_BASE = 0x4000_0000`

| Offset | Name | R/W | Description |
|---:|---|:--:|---|
| 0x00 | `ACC_CTRL` | W | start/clear/mode |
| 0x04 | `ACC_STATUS` | R | busy/done/error |
| 0x08 | `ACC_CFG` | R/W | format/scaling |
| 0x0C | `ACC_RESULT` | R | signed result (processed) |
| 0x10 | `ACC_RAW` | R | raw ADC code + debug |
| 0x20..0x5C | `ACC_X0..ACC_X15` | R/W | x[i] values |
| 0x60..0x9C | `ACC_W0..ACC_W15` | R/W | w[i] values |
| 0xA0 | `ACC_CAL_OFFS` | R/W | offset calibration |
| 0xA4 | `ACC_CAL_GAIN` | R/W | gain calibration |

---

## 2.1 `ACC_CTRL` (0x00) — Write-only
- `[0] START` : write 1 to begin compute (self-clears)
- `[1] CLEAR` : write 1 to reset internal state (self-clears)
- `[3:2] MODE` : 00=dotprod16, 01=FIR_step, others reserved
- `[4] INT_EN` : optional
- others reserved

**Busy behavior:** if `BUSY=1`, ignore START or set `ERR` (choose one).

---

## 2.2 `ACC_STATUS` (0x04) — Read-only
- `[0] BUSY`
- `[1] DONE` : set when result latched; cleared by reading `ACC_RESULT` or writing `CLEAR`
- `[2] ERR` : sticky error; cleared by `CLEAR`
- `[3] SAT` : sticky saturation flag (optional)
- others reserved

---

## 2.3 `ACC_CFG` (0x08) — R/W (keep minimal)
- `[2:0] X_FMT` : 0 = signed int8 in low byte
- `[5:3] W_FMT` : 0 = signed int8 in low byte
- `[9:6] SHIFT` : post-scale right shift (0–15)
- `[10] CLAMP_EN` : clamp to int16 before presenting
- others reserved

---

## 2.4 `ACC_RESULT` (0x0C) — Read-only
- `[15:0] RESULT_S16` : signed int16 result after calibration + scaling
- others reserved

**Processing (in digital wrapper)**
- `centered = raw_adc - OFFS`
- `scaled = (centered * GAIN_Q) >> 8`  (example Q8.8 gain)
- `result = scaled >> SHIFT` (optional)

---

## 2.5 `ACC_RAW` (0x10) — Read-only
- `[11:0] ADC_CODE`
- `[23:16] IDX_LAST` : last accepted index (debug)
- `[31:24] FLAGS` : optional debug

---

## 2.6 X/W registers (0x20..0x9C) — R/W
- `ACC_Xi[7:0] = x[i]` (signed int8)
- `ACC_Wi[7:0] = w[i]` (signed int8)
- Upper bits read as 0
- Recommended rule: X/W writes only when `BUSY=0`

---

## 2.7 Calibration registers
- `ACC_CAL_OFFS` (0xA0): `[11:0] OFFS` raw ADC offset code
- `ACC_CAL_GAIN` (0xA4): `[15:0] GAIN_Q` fixed-point gain (default 1.0)

---

## 3) Software transaction sequence

### Init (optional)
1. Write `ACC_CAL_OFFS`, `ACC_CAL_GAIN`
2. Write `ACC_CFG`

### Dot product
1. Write `ACC_X0..ACC_X15`, `ACC_W0..ACC_W15`
2. Write `ACC_CTRL.START=1`
3. Poll `ACC_STATUS.DONE==1`
4. Read `ACC_RESULT` (clears DONE); optionally read `ACC_RAW`

### Error
- If `ERR==1`, write `ACC_CTRL.CLEAR=1`, then retry.

---

## 4) Fixed decisions (v1 contract)
- Inputs: signed int8 `x[i], w[i]`
- Output: signed int16 `RESULT_S16` after digital calibration/scaling
- ADC target resolution: 10 bits (acceptable range 8–12 if interface stable)
- Accelerator is transactional (no streaming DMA in v1)
