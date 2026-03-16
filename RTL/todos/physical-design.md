# Physical design — Todo (1 person, ~6 weeks)

**Scope:** Synthesis, constraints (SDC), Innovus P&R, digital GDS, STA, power/summaries, pin planning for analog interface, top-level assembly approach.

**Dependencies:** Stable RTL and frozen memory map from digital; analog interface pin list and any block placement/size info from analog.

---

## Week 1 — Flow and block-level

- [ ] **Flow bring-up** — Synthesis + Innovus run on a tiny design (e.g. minimal block or stub) to confirm tools and scripts work.
- [ ] **Initial SDC** — Clock(s), reset, basic constraints; align with digital on clock domains and timing intent.
- [ ] **Pin planning** — Reserve pins for analog interface (acc_* from spec); document for analog and digital.

---

## Week 2–3 — First real P&R

- [ ] **Synthesis** — Full digital SoC (CPU + bus + DotProd16 + UART/SPI); reasonable area and timing.
- [ ] **Floorplan** — Die size, core area, placement of major blocks; leave space or placeholder for analog block(s) if separate GDS.
- [ ] **First P&R pass** — Place, clock tree, route; generate netlist and initial timing report.
- [ ] **Congestion / utilization** — Check; capture screenshots; iterate floorplan if needed.

---

## Week 4–5 — Timing and sign-off

- [ ] **Constraints refined** — SDC updated from digital; fix any missing or wrong constraints.
- [ ] **Timing closure** — STA reports clean (or documented waivers); iterate P&R until met.
- [ ] **Power** — Power grid in place; power summary or report for documentation.
- [ ] **Digital GDS** — Tape-out ready (or handoff ready) digital GDS.
- [ ] **Gate-level netlist** — Deliver to verification for gate-level smoke test.
- [ ] **Top-level assembly** — Document approach: separate GDS blocks (digital vs analog) and how they combine; coordinate with analog on boundary.

---

## Week 6 — Handoff and report

- [ ] **Timing report(s)** — Final STA; attach or link in repo.
- [ ] **Utilization / congestion** — Final screenshots and numbers for report.
- [ ] **Handoff package** — GDS, netlist, SDC, and any view needed for integration or tape-out.
- [ ] **Report** — Short PD section: flow, constraints, timing summary, power, top-level assembly.

---

## Scope (don’t expand)

- Separate GDS blocks by default (digital + analog); no full custom padframe/IO ring unless ahead of schedule.
- Pin planning for analog is required; full chip assembly is “document and coordinate,” not necessarily single merged GDS in v1.
