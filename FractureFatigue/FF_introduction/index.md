---
marp: true
header: 'Fracture & Fatigue - Introduction'
theme: h2
paginate: true
math: katex
---

<style>
footer {
    font-size: 14px;
    color: #888;
    text-align: right;
}
img[alt="ORCID"] {
    height: 15px !important;
    width: auto !important;
    vertical-align: top !important;
    display: inline !important;
    margin: 0 !important;
}
</style>
<!-- _class: lead -->
# Fracture & Fatigue
## Introduction

Prof. Dr.-Ing. Christian Willberg [![ORCID](../../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)

<div style="position: absolute; top: 200px; left: 850px;"> 
<img src="https://quickchart.io/qr?text=https://cwillberg.github.io/Lectures/FractureFatigue/FF_introduction/&light=0000&size=300&centerImageUrl=https://raw.githubusercontent.com/CWillberg/Lectures/main/assets/QR/h2.png"
     style="height:380px;width:auto;vertical-align:top;background-color:transparent;">
</div>


---



## Why Does This Matter?

- Structures fail — sometimes with catastrophic consequences
- Fatigue accounts for the majority of mechanical failures in practice
- Understanding failure mechanisms is the foundation of safe design

> **Goal:** Understand *why* materials fail and *how* to design against it.

---
### de Havilland Comet (1954)

- world's first commercial jet airliner

- 1954: two catastrophic in-flight breakups
- All 56 passengers and crew killed

**Root cause:** fatigue cracking at square window corners
- Each pressurization cycle: stress concentration $K_t \gg 1$
- After ~900 cycles → crack initiation → explosive decompression

![bg right fit](https://i.imgur.com/3fbH1Vm.jpeg)


---


### Aloha Airlines Flight 243 (1988)



**Boeing 737** — roof section tore off mid-flight

- 1 fatality, 65 injuries
- Aircraft — far beyond design life
- High-humidity Hawaiian routes accelerated corrosion

**Root cause:** multi-site fatigue damage
- Many small cracks at rivet holes linked up
- No single crack was detectable — combined effect was catastrophic

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/1/1e/Aloha_Airlines_Flight_243_fuselage.png)

---


## Eschede Train Disaster (1998)

**ICE 1, Germany** — deadliest rail accident in postwar German history

- 101 killed, 88 injured
- Speed at failure: ~200 km/h

**Root cause:** fatigue fracture of a rubber-tired wheel
- New wheel design introduced to reduce noise
- Fatigue crack grew undetected beneath the rubber layer
- Wheel disintegrated → derailment 

![bg right fit](https://i.redd.it/ad8daopd59e61.jpg)

---



## What These Cases Have in Common

| Case | Load type | Mechanism | Missed because... |
|---|---|---|---|
| Comet (1954) | Pressurization cycles | $K_t$ at corners | Not yet understood |
| Aloha (1988) | Flight cycles | Multi-site damage | Cracks too small individually |
| Eschede (1998) | Rolling contact | Hidden crack surface | Inspection method inadequate |

> In every case: the failure was **predictable** with the tools we will learn in this course.

---
# Course Structure

| # | Topic |
|---|---|
| 1 | Introduction & motivation |
| 2 | Material basics: atomic bonds & theoretical strength |
| 3 | Real strength & influencing parameters |
| 4 | Fracture mechanics |
| 5 | Fatigue & models |
| 6 | Design process |

---

<!-- _class: cols-2 -->
## Atomic Bonds

<div class="ldiv">

**Primary bonds**
- Covalent
- Ionic
- Metallic

→ high bond energy → high theoretical strength

</div>
<div class="rdiv">

**Secondary bonds**
- van der Waals
- Hydrogen bonds

→ lower energy → relevant for polymers, interfaces

</div>

---

## Theoretical vs. Real Strength

<!-- _class: cols-2 -->

<div class="ldiv">

**Theoretical strength**
- Derived from atomic bond forces
- Assumes perfect crystal lattice
- $\sigma_{th} \approx \frac{E}{10}$

</div>
<div class="rdiv">

**Real strength**
- Orders of magnitude lower
- Caused by: dislocations, grain boundaries, defects, surface conditions
- Depends on: temperature, loading rate, environment

</div>

---

## What is Fracture?

- Separation of a body under stress
- **Brittle fracture:** little to no plastic deformation
- **Ductile fracture:** significant plastic deformation before failure
- Defects and notches act as stress concentrators: $K_t = \frac{\sigma_{max}}{\sigma_{nom}}$

---

## What is Fatigue?

Failure under **cyclic loading** — at stresses well below static strength

Three regimes depending on load amplitude and number of cycles:

| Regime | Cycles $N_f$ | Dominant mechanism |
|---|---|---|
| Low Cycle Fatigue (LCF) | $< 10^4$ | Plastic deformation per cycle |
| High Cycle Fatigue (HCF) | $10^4 - 10^7$ | Elastic, crack initiation dominant |
| Very High Cycle (VHCF) | $> 10^7$ | Subsurface crack initiation |

---

<!-- _class: cols-2 -->
## Fatigue Regime I — Low Cycle Fatigue (LCF)

<div class="ldiv">

- High stress amplitudes: $\sigma > \sigma_y$
- **Plastic deformation** occurs every cycle
- Described by **Coffin-Manson** relation:

$$\Delta\varepsilon_p \cdot N_f^c = \varepsilon_f'$$

- Relevant for: pressure vessels, turbine discs, nuclear components

</div>
<div class="rdiv">

<!-- TODO: hysteresis loop sketch, plastic strain range -->

**Characteristic:**
- Wide hysteresis loop
- Cyclic hardening or softening possible
- Failure after relatively few cycles

</div>

---

<!-- _class: cols-2 -->
## Fatigue Regime II — High Cycle Fatigue (HCF)

<div class="ldiv">

- Stresses remain **macroscopically elastic**: $\sigma < \sigma_y$
- Crack **initiation** is the life-governing phase
- Described by **Wöhler (S-N) curve**:

$$\sigma_a = \sigma_f' \cdot (2N_f)^b$$

- Fatigue limit $\sigma_D$ exists for steels (not aluminium)
- Relevant for: airframes, automotive components, shafts

</div>
<div class="rdiv">

<!-- TODO: S-N curve sketch with fatigue limit marked -->

**Characteristic:**
- Narrow or closed hysteresis loop
- Most of life spent initiating a crack
- Surface condition, notches, residual stresses are critical

</div>

---

<!-- _class: cols-2 -->
## Fatigue Regime III — Crack Propagation

<div class="ldiv">

- Crack **already exists** (from manufacturing, inspection limit, LCF/HCF initiation)
- Governed by **fracture mechanics**
- **Paris Law:**

$$\frac{da}{dN} = C \cdot \Delta K^m$$

where $\Delta K = \Delta\sigma \cdot Y \cdot \sqrt{\pi a}$

- Three regions: threshold → stable growth → unstable fracture

</div>
<div class="rdiv">

<!-- TODO: da/dN vs ΔK plot, three regions -->

**Characteristic:**
- Crack grows cycle by cycle
- Basis of **damage tolerance** design
- Inspection intervals derived from crack growth rate

</div>

---

## The Three Regimes Together

$$\underbrace{\Delta\varepsilon_p \cdot N_f^c = \varepsilon_f'}_{\text{LCF — Coffin-Manson}}
\qquad
\underbrace{\sigma_a = \sigma_f' (2N_f)^b}_{\text{HCF — Wöhler}}
\qquad
\underbrace{\frac{da}{dN} = C\,\Delta K^m}_{\text{Crack growth — Paris}}$$

<!-- TODO: combined schematic: LCF / HCF / crack growth regimes on one N-axis -->

> In practice, all three regimes can be relevant for a single component — depending on the load history and life phase.

## From Strength to Design

---

## Design Process

- Material characterization → allowable stresses
- Safety factors and applicable standards
- **Damage tolerance concept:** how much damage can a structure sustain safely?

| Approach | Philosophy |
|---|---|
| Safe life | No crack allowed during service life |
| Fail safe | Redundant load paths if one fails |
| Damage tolerance | Crack allowed, but must be detectable |

---

## Tools in This Course

In the shell:
```julia
julia
]
add LinearAlgebra
```

We will use Julia for numerical examples and exercises throughout the course.

---

## Numerical Tools
- typically Finite Element Method
  - brief introduction
- Alternative for fracture - Peridynamics
  - we will do some analysis

---
## Mathematical basis
- matrices
- vectors
- eigenvectors
- eigenvalues


---

<!-- _class: lead -->
## Thank You
Questions?