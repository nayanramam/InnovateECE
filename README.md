# README — RISC-V Tinycore + Mixed-Signal Dot-Product Accelerator (SKY130)

# GOOGLE DRIVE: https://drive.google.com/drive/folders/1zZt69og0J0-NFTqRXsQrdFw97J4vwyx0?usp=drive_link

## Intent
Build a small, verifiable **RV32I-based SoC** with a **memory-mapped mixed-signal accelerator** that computes a **dot product / MAC** (AI/DSP primitive). Deliver “chip-like” artifacts: **digital RTL → verification → Innovus P&R GDS**, plus **analog schematic/layout/post-layout sims in Virtuoso (SKY130)**, tied together with a simple transactional interface.

Timeframe: ~2 months. Team: 1 analog, 3 digital (design/verif), 1 physical design.

---

## Target Demo (choose one)
- **AI demo:** 1-layer perceptron classifier (dot product + threshold) on a small feature vector.
- **DSP demo:** 16-tap FIR output sample (same dot-product primitive), show frequency response attenuation.

---

## Architecture (high level)

### Digital
- Minimal RISC-V core (RV32I subset), ROM/SRAM, simple bus
- UART (or SPI) for I/O + debug
- Memory-mapped **DotProd16** peripheral (register file + start/done/result capture)

### Analog
- Switched-cap / charge-domain MAC (or equivalent accumulator approach)
- 8–10 bit SAR ADC (digitize accumulator result)
- Simple DAC if required (or direct CDAC-style encoding if it simplifies)
- Bias/reference + buffering as needed

### Interface Philosophy
Transactional accelerator:
1. CPU loads x/w vectors via registers
2. CPU writes `START`
3. CPU polls `DONE`
4. CPU reads `RESULT`

---

## Deliverables (definition of “done”)

### System
- Firmware demo + co-sim results (end-to-end correctness)
- A short benchmark comparison vs pure digital MAC (latency proxy, or “1 ADC conversion vs N” conversion count story)

### Digital (RTL → signoff-ish)
- RTL: CPU + SoC integration + DotProd16 peripheral
- Verification: directed tests + regression (CPU, bus, peripheral)
- PD: synthesis + Innovus P&R → **GDS**, STA timing report(s), utilization/congestion screenshots
- Gate-level netlist + smoke test

### Analog (Virtuoso / SKY130)
- Schematic + layout for chosen blocks
- DRC/LVS clean
- Post-layout extracted sims:
  - functional dot-product path at TT
  - basic corner sanity (TT/SS/FF minimum)
  - ADC monotonicity / basic performance plot(s)
  - calibration behavior (offset/gain)

---

## Team Roles & Responsibilities

### Analog Lead
- Owns MAC/accumulator + ADC (+DAC if needed), plus mixed-signal timing expectations
- Provides early behavioral model (week 1–2) for integration
- Delivers schem/layout/DRC/LVS/post-layout sims

### Digital Designer A — CPU Core
- Implements RV32I subset required for demo
- Boot ROM + memory test
- Provides simple asm/C tests and bring-up

### Digital Designer B — SoC Integration
- Bus + address decoding
- DotProd16 register block (CTRL/STATUS/X/W/RESULT)
- UART/SPI peripheral
- Top-level wrapper wiring to analog interface pins

### Digital Verification Lead
- Testbench infra + directed/regression tests
- System test: run firmware in RTL sim
- Gate-level smoke test after PD handoff (optional but encouraged)

### Physical Design Lead (Innovus)
- Owns constraints (SDC), synthesis, floorplan, power grid, P&R
- Pin planning for analog interface
- Delivers digital GDS + timing/power summaries
- Coordinates top-level assembly approach (separate GDS blocks by default)

---

## Milestones (2-month plan)

### Week 1
- Freeze interface + memory map (see spec)
- Behavioral analog stub for digital integration
- Digital: CPU skeleton + bus skeleton
- PD: flow bring-up; tiny design through Innovus

### Week 2–3
- CPU runs a simple program in RTL sim
- Accelerator regs fully integrated; firmware can read/write them
- Analog transistor-level schematic “works” at TT (at least for ADC/comparator + accumulator concept)
- PD: first P&R pass on digital SoC

### Week 4–5
- End-to-end demo works with behavioral analog model
- Analog block(s) stable enough for layout start
- PD: constraints refined; timing closure iteration

### Week 6–7
- Analog layout + DRC/LVS + post-layout extraction
- Replace behavioral model with extracted netlist where feasible
- Gate-level smoke test

### Week 8
- Final demo + plots + short report
- Repo cleanup + final artifacts packaged

---

## Scope Control (avoid blow-ups)
- Keep accelerator transactional (no streaming DMA v1).
- Keep precision modest (signed int8 inputs; ~10-bit ADC).
- Prefer calibration in digital (offset/gain) over perfect analog accuracy.
- “Chip-quality artifacts” > fancy features.

---

## Stretch Goals (only if ahead)
- Local weight memory inside accelerator (reduce bus writes)
- Interrupt-driven completion
- Simple padframe / IO ring planning
- Better ADC characterization (INL/DNL, ENOB)
