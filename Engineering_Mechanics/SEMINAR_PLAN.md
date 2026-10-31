# Engineering Mechanics — Seminar Plan (Statics)

Working plan for `Engineering_Mechanics/e_01` … `e_12`. Not a slide deck (not built by GitHub Pages) — internal reference only. Update the status checklist as seminars are completed.

## Topics, folders, exercise counts

Reordered 2026-10-31 at the professor's request (see status log). The course now runs to **13** seminars (`e_01`…`e_13`); `e_13` folder does not exist yet and will be created when that seminar is reached.

| # | Folder | Topic | Exercises (with full solutions) |
|---|--------|-------|----------------------------------|
| 1 | `e_01` | Concurrent force system (*zentrales Kraftsystem*) | 4 |
| 2 | `e_02` | General force system (*allgemeines Kraftsystem*) | 4 |
| 3 | `e_03` | Equilibrium & support reactions | 4 |
| 4 | `e_04` | **Worked examples** — equilibrium/support-reaction practice (basis: e_03) + distributed loads → equivalent resultant (inserted here, not later). No new theory. Solutions show the Schnittbild (free-body diagram) explicitly as its own figure. | 4 |
| 5 | `e_05` | Trusses & frames I (*Stabtragwerke*) — introduction + method of joints, examples | 3 (of 6 total across e_05+e_06) |
| 6 | `e_06` | Trusses & frames II — **method of sections** (Ritterschnittverfahren), *Stäbe* | 3 (of 6 total across e_05+e_06) |
| 7 | `e_07` | Hinges in beams (*Gelenkbalken*) — introduction | 3 |
| 8 | `e_08` | Hinges in beams — **worked calculations** (*Rechnen von Gelenken*) | 3 |
| 9 | `e_09` | Internal forces I (*innere Kräfte*) | 3 |
| 10 | `e_10` | Internal forces II | 3 |
| 11 | `e_11` | Internal forces III | 3 |
| 12 | `e_12` | Second moment of area (*Flächenträgheitsmoment*) | 3 |
| 13 | `e_13` | Normal and bending stress | 3 |

Exercise counts for e_08–e_13 were not explicitly given by the professor — defaulted to 3–4 to match the stated pattern; flag for review if a different count is wanted. "Distributed loads, beams & supports" (originally its own seminar) was folded into `e_04` as a worked example rather than kept as a separate slot.

## Constraints given for internal-force seminars (e_08–e_10)

- Maximum 3 load regions/segments per problem
- 2D only, all geometry/loads **collinear** (straight beams only, no frames)
- Diagrams go up to the **bending moment** ($M_b$) — no normal-force/torsion diagrams unless directly relevant

## Layout pitfall (learned in e_01 — avoid in e_02–e_12)

On a `bg right fit` slide (narrow ~570px text column), a single H1 line that wraps to 2+ lines overlaps the body text below it (the H1 appears to be positioned without reserving space for wrapped lines). Fix: split into `# Exercise N.N` (short, always 1 line) + `## Subtitle` (separate line, wraps safely) rather than one long `# Exercise N.N - Long Description` heading. Keep any table on such a slide to short, single-line cell contents — a wrapping 5-row table can overflow the slide bottom.

## Support-symbol convention (established in e_03, reuse wherever a support/Lager appears)

Any figure introducing a support type shows **two stacked parts**: the physical **model** (support symbol attached to the body) on top, then a small accent-colored arrow labeled *"freigeschnitten"*, then the **free-body equivalent** below (just a point with its reaction force(s)/moment — no support symbol). Support catalogue used: Loslager (1: F⊥), Festlager (2: Fx,Fy), Einspannung (3: Fx,Fy,M), Führung/sliding guide (2: one force ⊥ to slide direction + M, in either orientation), Pendelstütze (1: force along the strut, drawn at a genuine angle φ, not just vertical/horizontal).

## Theory-intro pattern (established in e_01, reuse where relevant)

- Open the theory section with **Newton's second law** ($\vec F = m\vec a$) as the motivating principle, showing equilibrium as the $\vec a = 0$ special case
- Add a **concept sketch** for any new type of force system being introduced (e.g. concurrent-force fan diagram in e_01)
- Present the **angle/trigonometric method** and the **vector method** side by side (cols-2) as two equally valid solution routes wherever both apply

## Content conventions (per seminar file)

- Each exercise: problem statement **with a figure**, immediately followed by a full step-by-step worked solution (not just an answer).
- Figures: TikZ, compiled via the local TinyTeX pipeline (`lualatex` → PDF → PyMuPDF → PNG), same visual style/colors as `assets/Figures/werkstoffeigenschaften.png` (mainblue `#001158`, accent `#8592bc`, lightaccent `#e7e9f2`).
- Figures stored **per seminar** in `e_XX/assets/<name>.png` (flat, no `Figures` subfolder — matches the `composites_01/assets/` convention used elsewhere in the repo), referenced as `./assets/<name>.png` from that seminar's `index.md`.
- TikZ sources kept alongside the PNGs (`.tex` next to `.png`) for later edits.
- Language: English.
- Replaces the earlier generic Statics+Dynamics placeholder topics — e_01–e_12 titles/headers/QR text need updating to match this table.

## Status

- [x] e_01 — Concurrent force system (4 exercises: cable/ring, resultant of 3 forces, block on incline, boom & cable)
- [x] e_02 — General force system (4 exercises: parallel-force resultant, force-couple equivalent, pin+couple equilibrium, force+couple → single force)
- [x] e_03 — Equilibrium & support reactions (Loslager/Festlager/Einspannung/Führung(2 variants)/Pendelstütze — each shown as model + freigeschnittenes Freikörperbild; Freischneiden; 1 concurrent + 4 general-system exercises, all statically determinate)
- [x] e_04 — Worked examples (4 exercises: beam with two point loads, cantilever + applied couple, beam with full UDL + point load, beam with partial UDL + link support; every solution shows a dedicated Schnittbild figure)
- [x] e_05 — Trusses I (truss idealization, two-force members, m+r=2j, method of joints, zero-force-member rules; 3 exercises: symmetric apex-load triangle, off-centre 2-triangle truss with a confirmed zero-force member, triangle with a horizontal joint load)
- [x] e_06 — Trusses II (method of sections / Ritterschnittverfahren; moment-centre trick and the parallel-chords ΣF shortcut; 3 exercises, all on the same 5-joint Warren truss: symmetric load/right-portion cut, asymmetric load/left-portion cut, and a ΣFy-only shortcut on the first cut)
- [x] e_07 — Hinges in beams, introduction (hinge vs. rigid joint vs. support, cut-at-the-hinge procedure; 3 exercises, all single-hinge: fixed+hinge+roller+overhang, pin+roller+hinge+roller, fixed+hinge+full-span UDL)
- [x] e_08 — Hinges in beams, worked calculations (no new theory; 3 exercises: hinge next to a Pendelstütze with nonzero hinge $G_x$, two hinges/three segments solved outside-in, hinge segment loaded by a pure applied couple)
- [x] e_09 — Internal forces I (N/V/M via the cut method, sign convention: tension/clockwise-shear/sagging; 3 exercises: simply-supported point load (linear M, step V), cantilever tip load (hogging M, cut from the free end), full UDL (parabolic M, linear V))
- [ ] e_10 — Internal forces II
- [ ] e_11 — Internal forces III
- [ ] e_12 — Second moment of area
- [ ] e_13 — Normal and bending stress (folder to be created)

### 2026-10-31 reorder log

Professor moved the sequence around in conversation: e_04 becomes a pure practice seminar (no new theory) reusing e_03's support/equilibrium content, with distributed-load-to-resultant added as this week's new worked example rather than deferred to a later "distributed loads" seminar. Trusses (old e_04/e_05) shift to e_05/e_06. Hinges (old e_07) splits into an intro seminar (e_07) and a calculation-practice seminar (e_08). Internal forces I–III and the remaining old topics (2nd moment of area, normal/bending stress) all shift back by one slot accordingly, extending the course to 13 seminars.
