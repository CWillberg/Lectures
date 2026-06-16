---
marp: true
theme: h2
paginate: true
header: "Fracture & Fatigue — Fracture Mechanics Component Assessment"
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
## Fracture & Fatigue
## Fracture Mechanics Component Assessment

Prof. Dr.-Ing. Christian Willberg<a href="https://orcid.org/0000-0003-2433-9183"><img src="../../assets/styles/ORCIDiD_iconvector.png" alt="ORCID" style="height:15px;width:auto;vertical-align:top;background-color:transparent;"></a>
Hochschule Magdeburg-Stendal

<div style="position: absolute; top: 200px; left: 850px;"> 
<img src="https://quickchart.io/qr?text=https://cwillberg.github.io/Lectures/FractureFatigue/FF_design/&light=0000&size=300&centerImageUrl=https://raw.githubusercontent.com/CWillberg/Lectures/main/assets/QR/h2.png"
     style="height:380px;width:auto;vertical-align:top;background-color:transparent;">
</div>

---

<!-- _class: cols-2 -->

## Component Design Philosophies

<div class="ldiv">

### (a) Safe Life
*Dauer-/zeitfeste Auslegung*
→ Failure during service life is **excluded**
→ Verified through classical fatigue concepts

### (b) Damage Tolerance
*Schadenstolerante Auslegung*
→ Crack is **possible**, but **detected in time**
→ Inspection intervals based on remaining life

</div>
<div class="rdiv">

### (c) Fail Safe
*Auslegung auf kontrolliertes Versagen*
→ Failure of a **sub-structure** weakens the total structure
→ Time must remain for intervention before total failure

<div class="hinweis">

**Hierarchy:** (a) provides basic safety. (b) and (c) are subordinate safety levels, since (a) can never be guaranteed 100%.

</div>
</div>

---

<!-- _class: cols-2 -->
## Damage Tolerance – Basic Principle

<div class="ldiv">

**Procedure:**

1. Initial crack size $a_0$ from NDT detection limit
2. Crack growth analysis → **remaining life**
3. Inspection interval: at least **2 inspections** before failure


<div class="hinweis">

The inspection interval remains **constant** over the entire service life – unlike conventional practice of inspecting less frequently when new.

</div>

</div>
<div class="rdiv">

**Probability of Detection (PoD)**

$$P_\text{oD,total} = 1 - \prod_{i}(1 - P_\text{oND})^i$$

- $P_\text{oND}$ = probability of non-detection
- $P_\text{oND,total}$ = component failure probability
- PoD increases with crack size and number of inspections


</div>

---
![](./assets/damageTolerantDesign.png)
_Fig 6.1. taken from Uwe Zerbst · Mauro Madia: "Bruchmechanische
Bauteilbewertung"_

---

![](./assets/PoD.png)
_Fig 6.2. taken from Uwe Zerbst · Mauro Madia: "Bruchmechanische
Bauteilbewertung"_

---

## Initial Crack Size – Reference Values (BS 7910)

| Method | Min. depth $a$ (mm) | Min. length $2c$ (mm) | Sizing accuracy |
|---|---|---|---|
| Conventional UT | 3 | 15 | ±3 / ±10 mm |
| Phased Array (FPA) | 1.5 | 10 | ±1.5 / ±7 mm |
| Liquid penetrant (PT), unwelded | 4 | 20 | ±5 mm |
| Magnetic particle (MPI), unwelded | 4 | 20 | ±10 mm |
| Eddy current (ET) | 3 | 15 | – |

<div class="hinweis">

What is **missed** with a certain probability is **assumed to be present** → conservative but necessary assumption. Typical defect sizes: several millimetres.

</div>

---

## Proof Tests as Alternative to NDT

<div class="aufgabe">

**Basic principle:** A component that survives an overload will not fail under operating load → determine the critical crack size under overload as new $a_0$.

</div>

**Reversed conservatism rules:**

| Situation | Conservative means… |
|---|---|
| Normal assessment | **Underestimate** toughness and critical crack size |
| Proof test event | **Overestimate** critical crack size (→ lower predicted remaining life) |

<div class="hinweis">

K-factor, J-integral and $L_r$ must be **overestimated** at the proof test event. Normal conservatism applies again for the subsequent remaining life calculation.

</div>

---

<!-- _class: cols-2 -->

## Fail Safe – Leak Before Break

<div class="ldiv">

**Principle**:
1. Small surface crack on inner wall grows to **wall penetration**
2. Recharacterised as through-thickness crack → grows to critical length $2c$
3. Key: time between **leak detection** and **global failure**

</div>
<div class="rdiv">

**Decision factors:**
- Is the leak visible from outside?
- Sensors for pressure drop or leaking medium?
- What hazard does the medium pose (explosion, toxicity)?

➜ crack shape evolution from different $a/c$ ratios under membrane and bending load

**Crack Arrest Analysis (reactor emergency cooling)**

</div>

---

![](./assets/leakBeforeFailure.png)

_Fig 6.4. taken from Uwe Zerbst · Mauro Madia: "Bruchmechanische
Bauteilbewertung"_

---

<!-- _class: cols-2 -->

## Fracture Mechanics in Failure Analysis

<div class="ldiv">

**Typical questions:**
- Cause of failure? (design error vs. operational error)
- Is continued operation under modified loading possible?

→ Shrink-fit sleeve caused bending stress (371 MPa) not foreseen in original design
→ BM analysis: $K_{Ic} = 58\ \text{MPa}\sqrt{\text{m}}$ → $a_c = 8.6\ \text{mm}$ (matches fractographic ≈7–8 mm) ✓

</div>

---



**Striation counting**
$$N \approx \int \frac{dN}{da}\,da = \text{area under striation density diagram}$$
DC-10 fan disc: ≈15,000 cycles → fatigue started at commissioning



**Stretch zone width (SZW)**

Measure SZW on fracture surface → reconstruct initiation toughness:

$$J = \frac{2.5}{d_N^* \cdot E} \cdot \text{SZW}$$

$$\delta_5 = \frac{1.25}{d_N^*} \cdot \frac{E}{\sigma_Y} \cdot \text{SZW}$$

<div class="hinweis">

Striations are not always resolvable: problems arise with variable amplitude loading, multiple initiation sites, or high-strength materials (Phase I growth has no striations).

</div>

</div>

---

## The Fracture Mechanics Triangle


<div class="eq">

$$\underbrace{K,\; J,\; \delta}_{\text{Crack driving force}} \quad \longleftrightarrow \quad \underbrace{K_\text{mat},\; J_\text{mat}}_{\text{Crack resistance}} \quad \longleftrightarrow \quad \underbrace{a}_{\text{Crack size}}$$

</div>

**Two known → third calculable:**

| Case | Given | Result |
|---|---|---|
| (a) | Toughness + load | Critical crack size $a_c$ → NDT specification |
| (b) | Toughness + crack size | Critical stress → operational safety check |
| (c) | Crack + load | Minimum required toughness → material selection |
| (d) | Initial crack + stress | Remaining life → inspection interval |
| (e) | In-service crack found | Modified load scheme + restricted remaining life |

---

![](./assets/fractureTriangle.png)

_Fig 6.11. taken from Uwe Zerbst · Mauro Madia: "Bruchmechanische
Bauteilbewertung"_

---

<!-- _class: cols-2 -->

## Component Loading – Don't Overlook Hidden Loads

<div class="ldiv">

➜ – stress state in railway axle from press fit alone (no external load):
- **Compressive stresses** under the press seat
- **Tensile stresses** at the shaft shoulder between press seats

➜  – effect on remaining life:

<div class="loesung">

Crack **under press seat**: ~**5× longer** remaining life than crack at the shaft shoulder — same crack size, same external loading.

</div>

</div>
<div class="rdiv">

<div class="hinweis">

All loads must be included as input — they are often the dominant factor:

- Residual stresses (welding, heat treatment)
- Press-fit / shrink-fit stresses
- Thermal stresses
- Self-weight and inertia

</div>

> Local stress concentration at press-fit edges is why engineering design places **relief undercuts** at those positions.

</div>

---
![](./assets/pressure.png)
_Fig 6.12. taken from Uwe Zerbst · Mauro Madia: "Bruchmechanische
Bauteilbewertung"_

---



## Cyclic Stress–Strain Curve



| Phenomenon | Condition | Mechanism |
|-----|-----|-----|
| Cyclic **hardening** | Low-strength materials | Dislocation multiplication |
| Cyclic **softening** | High-strength materials | Breakdown of metastable state |
| Cyclic **creep** (ratcheting) | Constant stress | Dislocation barrier overcoming |
| Cyclic **relaxation** | Constant strain ≠ 0 | Stress reduction |




---

**Ramberg–Osgood (cyclic):**

$$\varepsilon_a = \frac{\sigma_a}{E} + \left(\frac{\sigma_a}{K'}\right)^{1/n'}$$

Cyclic yield strength:
$$\sigma'_Y = K' \cdot (0.002)^{n'}$$

Hysteresis loop (Masing):
$$\varepsilon = \frac{\sigma}{E} + \left(\frac{\sigma}{2K'}\right)^{1/n'}$$

---

![](./assets/cyclichardening.png)
_Fig 6.14. taken from Uwe Zerbst · Mauro Madia: "Bruchmechanische
Bauteilbewertung"_

---

<!-- _class: cols-2 -->

<div class="ldiv">


![](./assets/cyclicRelax.png)


</div>


<div class="rdiv">

![](./assets/cyclic_creep.png)

_Fig 6.15. taken from Uwe Zerbst · Mauro Madia: "Bruchmechanische
Bauteilbewertung"_

</div>



---

## 6.3.2.3 Estimating Cyclic Parameters from Hardness

When measured data are unavailable, $K'$ and $\sigma'_Y$ can be estimated from Brinell hardness HB:

<div class="eq">

$$K' = 9.8\!\times\!10^{-3}(\text{HB})^2 - 1.26(\text{HB}) + 705 \quad (R_m/\sigma_Y \leq 1.2)$$

$$\sigma'_Y = 2.5\!\times\!10^{-3}(\text{HB})^2 + 1.49(\text{HB})$$

$$n' = -0.37\log(\sigma'_Y/K') \qquad \text{HV} = 8.716 + 0.963\,\text{HB} + 0.0002\,\text{HB}^2$$

</div>

<div class="hinweis">

These are **empirical estimates** — use measured cyclic curves whenever possible, especially for weld zones (HAZ and weld metal differ significantly from base metal; test on thermally simulated specimens).

</div>

---

## 6.3.2.4 Crack Idealisation and Recharacterisation

➜ **Fig. 6.19** (orientation recharacterisation), **Fig. 6.20** (idealisation types), **Fig. 6.21** (co-planar crack interaction), **Fig. 6.22** (subsurface → surface; surface → through-thickness)

**Orientation:** Project real crack perpendicular to principal stresses $\sigma_{H1}$, $\sigma_{H2}$:

$$\frac{c}{c_0} = \cos^2\!\beta + \tfrac{1}{2}(1-\lambda)\sin\beta\cos\beta + \lambda^2\sin^2\!\beta \qquad (\sigma_{H1}\text{-plane})$$

**Co-planar cracks** (BS 7910, Tab. 6.2): merge when spacing $s \leq \max(a_1, a_2)$

**Subsurface crack near surface:** If $p \leq a$ → recharacterise as surface crack (➜ **Fig. 6.22a**)

<div class="hinweis">

**Mixed-mode exception** (BS 7910): If the angle between actual crack plane and the plane with highest K exceeds **20°**, or if principal stresses are of comparable magnitude with opposite signs → full mixed-mode analysis required.

</div>

---

<!-- _class: cols-2 -->

## 6.4 CDF vs. FAD Assessment

➜ **Fig. 6.23** (CDF and FAD principles side by side)

<div class="ldiv">

### CDF (Crack Driving Force)
Plastic correction: $K_J = K / f(L_r)$

Failure when: $K_J \geq K_\text{mat}$

$$J = \frac{K^2}{E'} \cdot f(L_r)^{-2}$$

**Advantage:** material side and component side remain **strictly separate** in thinking

</div>
<div class="rdiv">

### FAD (Failure Assessment Diagram)
Failure locus: $K_r = f(L_r)$

Assessment point $(K_r, L_r)$ must lie **inside** the curve:

$$K_r = \frac{K}{K_\text{mat}}, \quad L_r = \frac{\sigma_\text{ref}}{\sigma_Y}$$

Standard in R6, BS 7910, API 579-1/ASME FFS-1

<div class="loesung">

CDF = FAD: **identical results**, different representation only.

</div>
</div>

---

## 6.4.2.2 Assessment Against Stable Crack Initiation

➜ **Fig. 6.24** (Demo 6.2: critical load, CDF + FAD), **Fig. 6.25** (Demo 6.3: critical crack depth)

**Criterion:** $K_J < K_\text{mat}$ at $J_i$ or $J_{0.2BL}$

**Demo 6.2** – plate, Al alloy, $\sigma_Y = 242$ MPa, $J_i = 10$ N/mm, $a = 3$ mm, $a/c = 1$:

| Assessment option | Critical load $F_c$ |
|---|---|
| BS 7910 Option 1 | **460.2 kN** |
| BS 7910 Option 2 (less conservative) | **474.5 kN** |

**Demo 6.3** – same geometry, $F = 300$ kN, $a/c = 0.2$: Option 1 → $a_c =$ **4.05 mm**, Option 2 → **4.30 mm**

**Demo 6.4** – $F = 500$ kN → minimum required toughness: $K_\text{mat} \geq$ **45.5 MPa√m** (Opt. 1), **34.5 MPa√m** (Opt. 2)

---

## 6.4.2.3 Assessment Against Ductile Crack Instability

➜ **Fig. 6.26** (J–a diagram, tangent criterion), **Fig. 6.27** (parameter influence), **Fig. 6.28** (σ–a method), **Fig. 6.29** (fuselage panel), **Fig. 6.30** (FAD)

**Two conditions for stable crack growth:**

<div class="eq">

$$J < J_\text{mat}(a) \qquad \text{and} \qquad \frac{dJ}{da}\bigg|_\sigma < \frac{dJ_\text{mat}}{da}$$

</div>

**σ–a method (Fig. 6.28):**
1. Start at $a_0$, increment by $\Delta a_i$
2. For each crack depth: raise load until $J(\sigma,\, a_0\!+\!\Delta a_i) = J_\text{mat}(\Delta a_i)$
3. Plot $(\sigma, a)$ pairs → **maximum = instability load**

<div class="loesung">

**Demo 6.5:** Instability load $F_c =$ **520 kN** vs. 460 kN at stable initiation → 60 kN of stable crack growth capacity (➜ Fig. 6.31, 6.32)

</div>

---

<!-- _class: cols-2 -->

## 6.4.2.4 Plastic Collapse & 6.4.2.5 Constraint

<div class="ldiv">

### Plastic Collapse (➜ Fig. 6.33)

Occurs when the FAD path reaches the vertical cut-off at $L_r^\text{max}$:

$$L_r^\text{max} = \frac{1}{2}\left(\frac{\sigma_Y + R_m}{\sigma_Y}\right)$$

<div class="hinweis">

Compare instability and collapse load — the **lower** governs. In Fig. 6.33, collapse was ~13 % below instability pressure. Experiment: only 1 % above predicted collapse.

</div>

</div>
<div class="rdiv">

### Constraint Correction (➜ Fig. 6.34, 6.35, 6.36)

Small cracks / thin sections → lower triaxiality → **higher effective toughness**:

$$K_\text{mat}^c = K_\text{mat} \cdot f(\beta_T,\, L_r)$$

In FAD: replace $K_\text{mat}$ with $K_\text{mat}^c(L_r)$ → failure locus shifts upward

<div class="loesung">

**Demo 6.6** – constraint correction increases critical load by **14 %** (658 → **749 kN**)

</div>
</div>

---

<!-- _class: cols-2 -->

## 6.4.2.6 Probabilistic Analysis

➜ **Fig. 6.37** (scatter), **Fig. 6.38** (Monte Carlo in FAD), **Fig. 6.39–6.41** (Demos 6.7–6.8, R6 method)

<div class="ldiv">

**Monte Carlo method (preferred):**
- Input data as probability distributions
- Many repeated BM analyses
- Fraction of failed analyses = $P_f$

**Typical COV values:**

| Parameter | COV |
|---|---|
| Young's modulus $E$ | 0.05 |
| Yield strength $\sigma_Y$ | 0.07 |
| Tensile strength $R_m$ | 0.05 |
| Weld metal $\sigma_Y$, $R_m$ | 0.10 |

</div>
<div class="rdiv">

**Reliability index:**
$$\beta = -\Phi^{-1}(P_f)$$

| $P_f$ | $\beta$ |
|---|---|
| $10^{-3}$ | 3.09 |
| $10^{-4}$ | 3.71 |
| $10^{-6}$ | 4.75 |

**Target** (ISO 2394): $P_f = 10^{-3}$ to $10^{-6}$ per year

**Demo 6.7:** $P_f = 10^{-4}$ → $F_c = 430$ kN; $P_f = 10^{-3}$ → $F_c = 439$ kN
**Demo 6.8:** $P_f = 10^{-3}$ → $a_c = 3.41$ mm

</div>

---

## 6.5 Life Estimation – Basic Iteration

➜ **Fig. 6.42** (schematic of remaining life procedure)

<div class="aufgabe">

**Iterative crack growth loop:**
1. Initial crack $a_0$ → compute $\Delta K(a_0)$
2. From $da/dN$–curve (NASGRO, Eq. 4.117): crack increment $\Delta a$ per cycle
3. $a \leftarrow a + \Delta a$ → check failure criterion ($K_\text{max} \geq 0.7\,K_\text{mat}$?)
4. No → continue. **Yes → remaining life $N$ reached.**

</div>

**Residual stresses** enter the stress ratio, not $\Delta K$:
$$R = \frac{K_\text{min} + K_r}{K_\text{max} + K_r}$$

<div class="hinweis">

For elliptical cracks: compute deepest point **and** surface points **separately** → realistic $a/c$ evolution. Fixed $a/c$ can cause large errors in life prediction.

</div>

---

## 6.5.2 Remaining Life – Demo 6.9

➜ **Fig. 6.43** (crack dimensions and K-factors vs. cycles)

**Plate under bending** ($\sigma_b = 100$ MPa), Paris law per BS 7910:
$$\frac{da}{dN} = 5.21\!\times\!10^{-13} \cdot \Delta K^3 \quad \left[\frac{\text{mm}}{\text{cycle}},\;\text{MPa}\sqrt{\text{mm}}\right]$$

| $N$ (cycles) | $a$ (mm) | $c$ (mm) | $K_I^A$ (MPa√mm) | $K_I^C$ (MPa√mm) |
|---|---|---|---|---|
| 0 | 1.00 | 1.00 | 100 | 125 |
| 0.5 M | 1.26 | 1.50 | 119 | 137 |
| 1.5 M | 2.32 | 3.20 | 145 | 183 |
| 2.5 M | 4.08 | 7.33 | 160 | 245 |

<div class="loesung">

Under **bending**, the crack **flattens** ($a/c$ decreases). Under tension it would deepen. This is why separate point tracking matters.

</div>

---

<!-- _class: cols-2 -->

## 6.5.3 Total Life – Short Crack Regime

➜ **Fig. 6.44** (K at circular void), **Fig. 6.45** ($P_J$ Wöhler curve), **Fig. 6.46** (crack closure build-up), **Fig. 6.47** (cyclic R-curve analysis)

<div class="ldiv">

**Total life** = fracture mechanics from a **fatigue-relevant initial defect** $a_i$

**Requirements:**

1. **EP crack tip parameter** ($J$ or $P_J = \sqrt{J/a}$) for short cracks

2. **Gradual build-up of crack closure** (IBESS):
$$\frac{1 - U_{SC}(a)}{1 - U_{LC}} = \frac{\Delta K_{th,SC}(a) - \Delta K_{th,eff}}{\Delta K_{th,LC} - \Delta K_{th,eff}}$$

3. **Initial crack size $a_i$** from cyclic R-curve:
→ load at which arrest → propagation = **component fatigue limit**

</div>
<div class="rdiv">

**Multiple crack growth** above fatigue limit (➜ **Fig. 6.48–6.50**)

At the fatigue limit: exactly **one** crack at the arrest/propagation boundary.

Above fatigue limit: multiple cracks grow simultaneously at stress hot spots (e.g. weld toes).

**IBESS Monte Carlo:**
- Divide weld toe into sections
- Assign statistical geometry + material + $a_i$ per section
- Repeat on multiple load levels → probabilistic Wöhler curve

➜ **Fig. 6.51** (Wöhler curve construction), **Fig. 6.52** (IBESS result)

<div class="hinweis">

FAT classes: set failure criterion at $N = 2\!\times\!10^6$ cycles.

</div>
</div>

---

## 6.5.4 FAD Under Creep Loading

➜ **Fig. 6.53** (creep effect on stress–strain curve and FAD failure locus)

**Time as additional parameter:**

- Creep deformation → stress–strain curve softens with time
- $K_r$ decreases, $L_r$ increases → assessment point moves along the FAD path
- Critical load and crack size become **time-dependent**

<div class="hinweis">

Creep crack growth is driven by the $C^*$-integral — the time-dependent analogue of the J-integral (see Sections 3.11 and 4.5). The FAD failure locus is recalculated at each time step.

</div>

---

<!-- _class: cols-2 -->

## Summary

<div class="ldiv">

**Design philosophies:**
- Safe Life · Damage Tolerance · Fail Safe
- Hierarchical, often combined

**Fracture mechanics triangle:**
- Stress ↔ Crack size ↔ Toughness
- 5 problem types (a)–(e)

**Assessment (Figs. 6.23–6.36):**
- CDF = FAD (identical results)
- Stable initiation → instability → collapse
- Constraint correction can increase critical load significantly

</div>
<div class="rdiv">

**Life estimation (Figs. 6.42–6.52):**
- Remaining life: $a_0$ from NDT → iterative crack growth
- Total life: $a_i$ from cyclic R-curve
- Residual stresses → R-ratio, not $\Delta K$
- Elliptical cracks: A-point and C-point separately

**Probabilistic (Figs. 6.37–6.41):**
- Monte Carlo preferred over PSF (BS 7910 ≥ 2019)
- $P_f = 10^{-3} \ldots 10^{-6}$ per year (ISO 2394)

</div>

---

<!-- _class: lead -->

# Questions?

Prof. Dr.-Ing. Christian Willberg | Hochschule Magdeburg-Stendal