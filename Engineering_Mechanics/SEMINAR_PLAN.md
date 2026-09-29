# Engineering Mechanics — Seminar Plan (Statics)

Working plan for `Engineering_Mechanics/e_01` … `e_12`. Not a slide deck (not built by GitHub Pages) — internal reference only. Update the status checklist as seminars are completed.

## Topics, folders, exercise counts

| # | Folder | Topic | Exercises (with full solutions) |
|---|--------|-------|----------------------------------|
| 1 | `e_01` | Concurrent force system (*zentrales Kraftsystem*) | 4 |
| 2 | `e_02` | General force system (*allgemeines Kraftsystem*) | 4 |
| 3 | `e_03` | Equilibrium & support reactions | 4 |
| 4 | `e_04` | Trusses & frames I — method of joints | 3 (of 6 total across e_04+e_05) |
| 5 | `e_05` | Trusses & frames II — **method of sections** (Ritterschnittverfahren) | 3 (of 6 total across e_04+e_05) |
| 6 | `e_06` | Distributed loads, beams & supports (statically determinate / indeterminate) | 3 |
| 7 | `e_07` | Hinges in beams (*Gelenkbalken*) | 3 |
| 8 | `e_08` | Internal forces I | 3 |
| 9 | `e_09` | Internal forces II | 3 |
| 10 | `e_10` | Internal forces III | 3 |
| 11 | `e_11` | Second moment of area (*Flächenträgheitsmoment*) | 3 |
| 12 | `e_12` | Normal and bending stress | 3 |

Exercise counts for e_03, e_08–e_12 were not explicitly given by the professor — defaulted to 3–4 to match the stated pattern; flag for review if a different count is wanted.

## Constraints given for internal-force seminars (e_08–e_10)

- Maximum 3 load regions/segments per problem
- 2D only, all geometry/loads **collinear** (straight beams only, no frames)
- Diagrams go up to the **bending moment** ($M_b$) — no normal-force/torsion diagrams unless directly relevant

## Layout pitfall (learned in e_01 — avoid in e_02–e_12)

On a `bg right fit` slide (narrow ~570px text column), a single H1 line that wraps to 2+ lines overlaps the body text below it (the H1 appears to be positioned without reserving space for wrapped lines). Fix: split into `# Exercise N.N` (short, always 1 line) + `## Subtitle` (separate line, wraps safely) rather than one long `# Exercise N.N - Long Description` heading. Keep any table on such a slide to short, single-line cell contents — a wrapping 5-row table can overflow the slide bottom.

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
- [ ] e_03 — Equilibrium & support reactions
- [ ] e_04 — Trusses & frames I (method of joints)
- [ ] e_05 — Trusses & frames II (method of sections)
- [ ] e_06 — Distributed loads, beams & supports
- [ ] e_07 — Hinges in beams
- [ ] e_08 — Internal forces I
- [ ] e_09 — Internal forces II
- [ ] e_10 — Internal forces III
- [ ] e_11 — Second moment of area
- [ ] e_12 — Normal and bending stress
