# Analog — Todo (1 person, ~6 weeks)

**Scope:** MAC/accumulator + 8–10 bit SAR ADC (+ DAC if needed), bias/reference, behavioral model, schematic, layout, DRC/LVS, post-layout sims.

**Dependency:** Digital needs your behavioral model and frozen interface early so they can integrate.

---

## Week 1 — Unblock digital

- [ ] **Freeze interface** — Lock pin list and timing (when you sample x/w, when acc_busy/acc_done/result_valid assert, cycles from acc_start to result_valid). Document in a short “Analog block interface” note; share with team.
- [ ] **Behavioral model** — Implement Verilog (or Verilog-AMS) stub: same pins as spec, accepts 16 (x,w) via valid/ready, computes dot product in behavior, outputs 10-bit result_code with correct acc_busy/acc_done/result_valid. Not the real design; placeholder for integration.
- [ ] **Validate transaction** — Run spec Section 3 sequence (write X/W, START, poll DONE, read RESULT) in sim with your model.
- [ ] **Handoff model** — Push model to repo; confirm SoC owner can plug it in and run register + firmware tests.

---

## Week 2 — One path at transistor level

- [ ] **Choose order** — Decide MAC-first or ADC-first.
- [ ] **First block in Virtuoso** — Schematic for chosen block (MAC/accumulator or 10-bit SAR ADC); schematic-level sim at TT showing block works.
- [ ] **Second block** — Add the other block (ADC or MAC); connect in schematic.

---

## Week 3 — Full path at schematic

- [ ] **Dot-product path at TT** — Single transaction at transistor level: load 16 (x,w), trigger, read result_code; compare to behavioral model (within a few LSB).
- [ ] **Interface glue** — Any control/sequencing logic and pin buffering needed to meet acc_* timing.

---

## Week 4 — Layout

- [ ] **Layout first block** — DRC/LVS clean; extract; post-layout sim at TT; fix major issues.
- [ ] **Layout remaining** — Other block(s) + glue; full DRC/LVS clean.

---

## Week 5 — Post-layout verification

- [ ] **Functional** — Dot-product path at TT with extracted netlist.
- [ ] **Corners** — TT, SS, FF sanity (at least pass/fail).
- [ ] **ADC** — Monotonicity sweep + basic performance plot (code vs input).
- [ ] **Calibration** — Show offset/gain correction in sim (digital calibration registers).

---

## Week 6 — Handoff and report

- [ ] **Handoff** — Extracted netlist (+ timing/load notes if any) for optional swap with behavioral model in full flow.
- [ ] **Support gate-level** — Answer timing/interface questions if digital runs gate-level smoke test.
- [ ] **Report** — Short analog section: block description, schematic/layout summary, post-layout results (TT/SS/FF, ADC plot, calibration).
- [ ] **Repo** — All analog sources, extracted netlists, behavioral model committed and documented.

---

## Scope control (don’t expand)

- Transactional only (no streaming DMA).
- Signed int8 inputs; ~10-bit ADC; calibration in digital (offset/gain).
- Chip-quality artifacts over extra features; skip INL/DNL/ENOB in v1.
