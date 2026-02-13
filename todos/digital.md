# Digital design & verification — Todo (4 people, ~6 weeks)

**Scope:** RV32I CPU, bus, DotProd16 register block, UART/SPI, verification, firmware demo. Work splits below assume 4 people; adjust names/ownership as needed.

**Dependencies:** Frozen memory map and analog interface (spec + analog’s “Analog block interface” doc). Analog behavioral model by end of Week 1 for integration.

---

## Week 1 — Foundation

**All**
- [ ] **Freeze interface + memory map** — Align on spec (memory map, acc_* pins). No RTL changes to interface after this without team agreement.

**CPU owner**
- [ ] **CPU skeleton** — RV32I subset skeleton; connects to bus; can fetch instructions (even if minimal decode).

**SoC / bus owner**
- [ ] **Bus skeleton** — Address decode, wiring for CPU, ROM, SRAM, accelerator placeholder.

**DotProd16 / accelerator RTL owner**
- [ ] **DotProd16 register block** — ACC_CTRL, ACC_STATUS, ACC_CFG, ACC_RESULT, ACC_RAW, ACC_X0..X15, ACC_W0..W15, ACC_CAL_OFFS, ACC_CAL_GAIN per spec. Wire to analog block interface (clk, rst_n, acc_start, acc_*); use behavioral model when available.

**Verification**
- [ ] **Testbench infra** — Top-level tb, clock/reset, bus driver/monitor; flow to run RTL sims and (later) regression.

**PD (coordination)**
- [ ] **Flow bring-up** — Tiny design through synthesis + Innovus to confirm flow works.

---

## Week 2–3 — CPU and integration

**CPU**
- [ ] **CPU runs a program** — Decode and execute enough RV32I for demo (e.g. load/store, ALU, branch). Boot ROM + minimal memory test in RTL sim.
- [ ] **Asm/C bring-up** — Simple tests and document how to build/run.

**SoC**
- [ ] **Full integration** — CPU + ROM + SRAM + DotProd16 + UART/SPI (or SPI only). All accelerator regs accessible; firmware can read/write them.
- [ ] **Top-level** — Wire all acc_* pins to/from analog block (behavioral model).

**DotProd16**
- [ ] **Calibration path** — Digital processing for ACC_RESULT (raw_adc − OFFS, gain, shift, clamp per spec).
- [ ] **Handshake** — Correct valid/ready for x/w streaming; START → poll DONE → read RESULT.

**Verification**
- [ ] **CPU tests** — Directed tests for CPU (fetch, decode, execute, load/store).
- [ ] **Bus / peripheral tests** — Address decode, register read/write, DotProd16 register access.
- [ ] **Accelerator transaction** — Test: write X/W, START, poll DONE, read RESULT with behavioral model.

---

## Week 4–5 — Demo and sign-off prep

**All digital**
- [ ] **End-to-end demo** — Firmware runs in RTL sim: load vectors, trigger accelerator, read result; compare to expected (e.g. golden C or behavioral).
- [ ] **Demo choice** — Pick AI (perceptron) or DSP (16-tap FIR); implement in firmware and document.

**Verification**
- [ ] **Regression** — Directed tests + regression; document pass criteria.
- [ ] **System test** — Firmware-based test as part of regression.

**SoC / DotProd16**
- [ ] **Stable for PD** — RTL stable; constraints (SDC) and pin list ready for PD. Coordinate with PD on analog interface pins.

**PD**
- [ ] **Constraints** — Refined SDC; timing closure iteration.
- [ ] **Gate-level netlist** — Available for smoke test when PD delivers.

**Verification (optional)**
- [ ] **Gate-level smoke test** — Run key tests on gate-level netlist after PD handoff.

---

## Week 6 — Final demo and repo

**All**
- [ ] **Final demo** — End-to-end with gate-level (or RTL) + report/plots.
- [ ] **Benchmark** — Short comparison vs pure digital MAC (latency or “1 ADC vs N” story).
- [ ] **Repo** — RTL, testbenches, firmware, docs committed; README updated.

---

## Role summary (4 people)

| Role | Focus |
|------|--------|
| **Person 1** | CPU core (RV32I), boot ROM, asm/C bring-up |
| **Person 2** | SoC integration, bus, UART/SPI, top-level wiring |
| **Person 3** | DotProd16 RTL (registers, calibration, analog interface) |
| **Person 4** | Verification (tb, CPU/bus/peripheral tests, regression, gate-level smoke) |

Adjust ownership so all Week 1–2 tasks are covered; some can pair (e.g. SoC + DotProd16 on integration).
