---
marp: true
header: 'Fracture & Fatigue - HCF Parameter & Load Spectra'
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
## Fracture & Fatigue
## HCF – Parameter Measurement & Load Spectra

Prof. Dr.-Ing. Christian Willberg<a href="https://orcid.org/0000-0003-2433-9183"><img src="../../assets/styles/ORCIDiD_iconvector.png" alt="ORCID" style="height:15px;width:auto;vertical-align:top;background-color:transparent;"></a>
Hochschule Magdeburg-Stendal

<div style="position: absolute; top: 200px; left: 850px;"> 
<img src="https://quickchart.io/qr?text=https://cwillberg.github.io/Lectures/FF_HCF_parameter/&light=0000&size=300&centerImageUrl=https://raw.githubusercontent.com/CWillberg/Lectures/main/assets/QR/h2.png"
     style="height:380px;width:auto;vertical-align:top;background-color:transparent;">
</div>

---

## Overview

- HCF material parameters — what needs to be measured?
- Fatigue testing — specimen and methods
- The S-N curve — generation and statistics
- Haigh diagram & Smith diagram — mean stress effect
- Load spectra — real-world loading
- Cycle counting — Rainflow method
- Damage accumulation — Miner's rule
- Combining multiple load cases
- Remaining lifetime assessment

---

## What Parameters Does HCF Design Need?

**Minimum required:**
- Endurance limit $\sigma_D$ (or fatigue strength at $N_D$ cycles)
- S-N curve slope $k$ (Basquin exponent)
- Mean stress sensitivity (Goodman/Gerber coefficients)

---

**For complete characterisation:**
- Full S-N curve ($\sigma_a$ vs. $N_f$) at relevant $R$-ratio
- Scatter parameter $T_\sigma$ (ratio of 10%/90% survival stress)
- Notch sensitivity $q$ → fatigue notch factor $K_f$
- Surface finish correction factor $K_{surface}$
- Size effect factor $K_{size}$

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/1/1c/Woehlerlinie.png)

---

**For variable amplitude loading (additionally):**
- S-N curve below the endurance limit (slope $k_2$ for Miner modified)
- Load spectrum of the application

---

## Fatigue Test Specimens

<!-- _class: cols-2 -->
<div class="ldiv">

**Standardised geometries** (ISO 1143, ASTM E466):

**Smooth hourglass specimen:**
- Uniform gauge section, ground and polished
- Measures base material behaviour
- Typical diameter: $6$–$10\,\text{mm}$

**Notched specimen:**
- Defined $K_t$ → measures $K_f$ and notch sensitivity $q$

</div>
<div class="rdiv">

**Key requirements:**
- Final polish in **loading direction**
- Surface roughness $R_a < 0.2\,\mu\text{m}$
- No decarburisation, no machining residual stresses
- Axis alignment $< 0.05\,\text{mm}$

</div>

---

## Fatigue Testing Machines

<!-- _class: cols-2 -->
<div class="ldiv">

**Servo-hydraulic:**
- Load- or displacement-controlled
- $1$–$50\,\text{Hz}$, any waveform
- HCF, LCF, variable amplitude

**Resonance machine (Amsler, Rumul):**
- Natural frequency $50$–$300\,\text{Hz}$
- Constant amplitude sine only
- Economical for large test series

</div>
<div class="rdiv">

**Ultrasonic ($20\,\text{kHz}$):**
- $10^9$ cycles in $\approx 14\,\text{h}$
- Essential for VHCF
- Requires cooling / intermittent testing

**Rotating bending ($R = -1$):**
- Simple, large historical databases

</div>

---

![bg fit](https://www.tec-science.com/wp-content/uploads/2021/03/en-fatigue-test-setup.jpg)

![bg fit](https://www.tec-science.com/wp-content/uploads/2021/03/en-fatigue-testanimation-rotating-bending-test.jpg)

---

## Measuring the S-N Curve — Staircase Method

<!-- _class: cols-2 -->
<div class="ldiv">

**Goal:** determine endurance limit $\sigma_D$ and scatter $s$

**Procedure:**
- Tests run sequentially
- Failure → decrease $\sigma_a$ by step $\Delta\sigma$
- Runout (survival at $N_D$) → increase $\sigma_a$ by $\Delta\sigma$
- Step size: $\Delta\sigma \approx 0.5 \cdot s$
- Minimum **15–20 specimens**

**Result (Dixon-Mood estimator):**
$$\sigma_D = \bar{\sigma}_a \pm 1.04 \cdot \Delta\sigma \cdot \frac{\sum i \cdot n_i}{\sum n_i}$$

</div>
<div class="rdiv">

![w:500](https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Staircase_method.svg/800px-Staircase_method.svg.png)

</div>

---

## Statistical Evaluation of S-N Data

**Log-normal distribution** assumed for $N_f$ at fixed $\sigma_a$:

$$\log N_f \sim \mathcal{N}(\mu_{\log N},\, s_{\log N}^2)$$

**Scatter parameters:**

$$T_N = \frac{N_{10\%}}{N_{90\%}} \quad \text{(cycle scatter)} \qquad T_\sigma = \sqrt[k]{T_N} \quad \text{(stress scatter)}$$

Typical values: $T_N = 1{:}5$ to $1{:}100$, $\quad T_\sigma = 1{:}1.1$ to $1{:}1.5$

**Design S-N curve** at survival probability $P_s = 97.7\%$ ($\mu - 2s$):

$$\sigma_{D,97.7\%} = \sigma_{D,50\%} \cdot T_\sigma^{-0.5}$$

<!-- IMAGE: S-N diagram (double-logarithmic):
  x-axis: N_f from 10^4 to 10^7
  y-axis: σ_a in MPa
  data points as scatter cloud
  three lines: P_s = 50% (mean), P_s = 97.7% (lower design line), P_s = 2.3% (upper)
  scatter band T_N and T_σ indicated
  knee at N_D with σ_D marked -->

---

## The S-N Curve — Mathematical Description

**Basquin's power law** (HCF region):

$$\sigma_a^k \cdot N_f = C \quad \Leftrightarrow \quad \log N_f = \log C - k \cdot \log \sigma_a$$

Slope $k$ (Wöhler exponent): steels $k \approx 5$–$8$, aluminium $k \approx 4$–$6$

**Two-slope model** (Miner modified, Haibach):

$$k_2 = 2k_1 - 1 \quad \text{for } \sigma_a < \sigma_D$$

**Component endurance limit** (all correction factors applied):

$$\sigma_{D,component} = \frac{\sigma_D \cdot K_{surface} \cdot K_{size}}{K_f} \qquad K_f = 1 + q(K_t - 1)$$

<!-- IMAGE: S-N curve with two branches:
  Branch 1 (HCF): slope -1/k_1 from N=10^4 to N_D=10^7
  Branch 2 (Miner modified): slope -1/k_2 continuing downward
  Horizontal dashed line: Miner original (no contribution below σ_D)
  Knee at (N_D, σ_D) clearly marked -->

---

## Haigh Diagram — Mean Stress Effect

**Axes:**
- X-axis: mean stress $\sigma_m$
- Y-axis: stress amplitude $\sigma_a$

**Interpretation:**
- Each curve represents a number of load cycles
- Region **inside** the curve: safe
- Region **outside**: fatigue failure expected

**Boundary curves:**
$$\text{Goodman:} \quad \frac{\sigma_a}{\sigma_D} + \frac{\sigma_m}{R_m} = 1$$
$$\text{Gerber:} \quad \frac{\sigma_a}{\sigma_D} + \left(\frac{\sigma_m}{R_m}\right)^2 = 1$$
$$\text{Soderberg:} \quad \frac{\sigma_a}{\sigma_D} + \frac{\sigma_m}{R_{p0.2}} = 1$$
$$\text{FKM:} \quad \frac{\sigma_a}{\sigma_D} + M_\sigma \cdot \frac{\sigma_m}{\sigma_D} = 1 \qquad M_\sigma \approx 0.00035 \cdot R_m - 0.1$$

![bg right 90%](https://www.tec-science.com/wp-content/uploads/2021/03/de-dauerschwingversuch-haigh-diagramm-erstellung.jpg)

---

## Haigh Diagram — Application

**Lines of constant $R$-ratio** run as **straight lines through the origin:**

$$\sigma_a = \frac{1-R}{1+R} \cdot \sigma_m$$

| $R$ | Position in Haigh diagram |
|---|---|
| $-1$ | Vertical line at $\sigma_m = 0$ |
| $0$ | Line with slope $1$ ($45°$) |
| $+1$ | Horizontal line at $\sigma_a = 0$ |

- Each $R$-line intersects the boundary curve → gives $\sigma_D(R)$
- Measurement points from staircase tests at different $R$ lie on these lines

![bg right 90%](https://www.tec-science.com/wp-content/uploads/2021/03/de-dauerschwingversuch-haigh-diagramm-spannungsverhaeltnis.jpg)

---

## Smith Diagram

**Structure:**
- X-axis: mean stress $\sigma_m$
- Y-axis: maximum stress $\sigma_{max} = \sigma_m + \sigma_a$ and minimum stress $\sigma_{min} = \sigma_m - \sigma_a$

**Construction:**
- Bisector ($\sigma_{max} = \sigma_{min} = \sigma_m$) = static case
- Upper and lower boundary lines from fatigue tests at different $R$:

$$\sigma_{max}(\sigma_m) = \sigma_m + \sigma_D\left(1 - \frac{\sigma_m}{R_m}\right)$$

$$\sigma_{min}(\sigma_m) = \sigma_m - \sigma_D\left(1 - \frac{\sigma_m}{R_m}\right)$$

- Horizontal limits: tensile strength $R_m$ (top) and compressive strength $-R_m$ (bottom)

![bg right 80%](https://www.ing-hanke.de/wp-content/uploads/2020/03/Dauerfestigkeitsschaulbild_Smith-Diagramm.jpg)

---

## Smith vs. Haigh — Comparison

| Property | Smith Diagram | Haigh Diagram |
|---|---|---|
| Y-axis | $\sigma_{max}$, $\sigma_{min}$ | $\sigma_a$ |
| Clarity | Better for practitioners | Better for calculation |
| $R$-lines | Through intersection with bisector | Through origin |
| Usage | Design practice | Science / FKM guideline |

**Conversion between both:**

$$\sigma_a = \frac{\sigma_{max} - \sigma_{min}}{2} \qquad \sigma_m = \frac{\sigma_{max} + \sigma_{min}}{2}$$

**Both diagrams are equivalent** — same information, different representation.

> **Rule of thumb:** Smith for visual communication in design meetings, Haigh for numerical assessment per FKM guideline.

---

## Measuring Mean Stress Sensitivity

**Test programme:** staircase at multiple $R$-ratios

| $R$ | $\sigma_m / \sigma_a$ | Purpose |
|---|---|---|
| $-1$ | $0$ | Baseline $\sigma_D$ |
| $-0.5$ | $1/3$ | Slight tensile mean |
| $0$ | $1$ | Pulsating tension |
| $+0.5$ | $3$ | High tensile mean |

Each $R$-ratio gives one data point $(\sigma_{m,i},\, \sigma_{D,i})$ on the Haigh / Smith diagram.

**Fitting:** Goodman for conservative design; Gerber or FKM for less conservative.

<!-- IMAGE: Haigh diagram with measured data points:
  Four data points at R = -1, -0.5, 0, +0.5
  Error bars at each point (scatter from staircase)
  Fitted Goodman line and Gerber parabola through the points
  Legend with R-values -->

---

## Real-World Loading — Load Spectra

**Components never experience constant amplitude loading in practice.**

<!-- _class: cols-2 -->
<div class="ldiv">

**Examples:**
- Automotive: road roughness → random
- Wind turbine: wind gusts → stochastic
- Aircraft: gust + manoeuvre loads
- Ship hull: irregular sea state

**Consequences:**
- S-N curve not directly applicable
- Need: characterise load history → spectrum
- Need: count cycles → Rainflow
- Need: accumulate damage → Miner

</div>
<div class="rdiv">

<!-- IMAGE: Two time series stacked:
  Top: constant amplitude (lab test) — regular sine wave
  Bottom: variable amplitude (reality) — irregular signal σ(t)
  x-axis: time t, y-axis: σ(t)
  Both on same time axis, clear contrast between regular and irregular -->

</div>

---

## Load Spectra — Definition and Measurement

**Step 1 — Measurement:**
- Strain gauges / load cells on real component or prototype
- Record $\sigma(t)$ over representative service period
- Duration: capture all operating conditions (seasons, load cases)

**Step 2 — Cumulative frequency distribution** $H(\sigma_a)$:

$$H(\sigma_a) = \text{number of cycles with amplitude} \geq \sigma_a$$

**Step 3 — Amplitude histogram:**

$$n_i = \text{cycles in amplitude class } i, \qquad H_0 = \sum_i n_i$$

<!-- IMAGE: Three representations of the load spectrum side by side:
  Left: time series σ(t) — measured signal
  Centre: histogram — bar chart of n_i over σ_a,i (amplitude classes)
  Right: cumulative frequency H(σ_a) double-logarithmic — falling curve
  All three consistently labelled and connected by arrows -->

---

## Load Spectra — Shape Parameters

**Standard spectrum shapes** (log-log linear):

$$\log H = \log H_0 - p \cdot \log\left(\frac{\sigma_a}{\sigma_{a,max}}\right)$$

Spectrum exponent $p$ characterises shape:

| $p$ | Shape | Typical application |
|---|---|---|
| $p \rightarrow \infty$ | Block programme | Conservative laboratory test |
| $p = 1$ | Linear | Moderate variation |
| $p \approx 3$–$5$ | Steep | Road vehicles |

<!-- IMAGE: Spectrum diagram (double-logarithmic):
  x-axis: σ_a / σ_a,max from 0.1 to 1.0
  y-axis: H from 1 to H_0 (e.g. 10^6)
  Four curves for p = ∞, p = 1, p = 3, p = 5
  Shaded region for typical vehicle loading (p = 3..5) -->

---

## Cycle Counting — Rainflow Method

<!-- _class: cols-2 -->
<div class="ldiv">

**Problem:** what is a "cycle" in an irregular signal?

$$\sigma(t): 100 \to 50 \to 120 \to 30 \to 80 \to \ldots$$

**Rainflow counting** (Endo & Matsuishi, 1968; ASTM E1049):

**Physical basis:** extracts cycles corresponding to **closed hysteresis loops** in $\sigma$-$\varepsilon$ space — directly linked to energy dissipated per cycle.

**Algorithm (simplified):**
1. Rearrange signal starting at global maximum
2. Identify all peaks and valleys
3. "Rain flows" down pagoda profile
4. Each closed flow path = one cycle
5. Result: matrix $n_{ij}(\sigma_m, \sigma_a)$

</div>
<div class="rdiv">

<!-- IMAGE: Rainflow visualisation in two parts:
  Top: time series σ(t) as pagoda profile (rotated 90°), peaks and valleys numbered,
  rain flow paths as blue lines, each completed path = one cycle
  Bottom: corresponding hysteresis loops in σ-ε diagram
  Colour coding linking paths above to loops below -->

</div>

---

## Rainflow Matrix

**Result of rainflow counting:**

$$\text{Matrix entry } n_{ij} = \text{cycles with } (\sigma_{m,i},\, \sigma_{a,j})$$

**Damage contribution of each class:**

$$d_{ij} = \frac{n_{ij}}{N_f(\sigma_{a,j},\, \sigma_{m,i})}$$

where $N_f$ is read from S-N curve with mean stress correction:

$$\sigma_{a,eq} = \frac{\sigma_{a,j}}{1 - \sigma_{m,i}/R_m} \quad \text{(Goodman)}$$

<!-- IMAGE: Rainflow matrix as 3D bar chart or colour map:
  x-axis: mean stress σ_m in classes (e.g. -200 to +400 MPa)
  y-axis: amplitude σ_a in classes (e.g. 0 to 300 MPa)
  z-axis or colour: cycle count n_ij (logarithmic scale)
  Diagonals σ_min=0 (R=0) and σ_max=const indicated -->

---

## Damage Accumulation — Miner's Rule

**Palmgren-Miner linear damage hypothesis:**

$$D = \sum_{i} \frac{n_i}{N_{f,i}} \leq 1$$

**Three variants — treatment of cycles below $\sigma_D$:**

| Variant | Below $\sigma_D$ | Conservative? |
|---|---|---|
| Miner original | $N_{f,i} = \infty$ → no damage | For spectra with few large cycles |
| Miner modified (Haibach) | $k_2 = 2k_1-1$ → partial damage | Recommended for broadband spectra |
| Miner consistent | Reduced $\sigma_D$ | Specific standards |

**Recommended:** Miner modified (Haibach) per FKM guideline.

**Observed scatter of $D_{fail}$:**

$$0.3 \leq D_{fail} \leq 3 \quad \Rightarrow \quad \text{use } D_{allow} = 0.3\text{–}0.5 \text{ for design}$$

---

## Miner's Rule — Sequence Effects

**Miner does not capture load sequence — but sequence matters:**

<!-- _class: cols-2 -->
<div class="ldiv">

**High → Low sequence:**
- Large cycle creates plastic zone + compressive residual stress
- Subsequent small cycles: retarded growth
- Actual life **longer** than Miner → Miner non-conservative

**Low → High sequence:**
- Small cycles accumulate no significant residual stress
- Large cycles propagate uninhibited
- Actual life **shorter** than Miner → Miner conservative

</div>
<div class="rdiv">

<!-- IMAGE: Two load sequences and their S-N result:
  Top left: High-Low sequence as time series (large then small amplitudes)
  Bottom left: Low-High sequence (small then large)
  Right: S-N diagram with three horizontal lines at D=1:
    - Miner prediction (D=1, dashed)
    - Actual failure High-Low (above, D>1)
    - Actual failure Low-High (below, D<1)
  Arrows labelled: "non-conservative" top, "conservative" bottom -->

</div>

---

## From Spectrum to Fatigue Life — Complete Workflow

$$\boxed{\sigma(t)} \xrightarrow{\text{Rainflow}} \boxed{n_{ij}(\sigma_m, \sigma_a)} \xrightarrow{\text{Goodman}} \boxed{\sigma_{a,eq,i}} \xrightarrow{\text{S-N curve}} \boxed{N_{f,i}} \xrightarrow{\text{Miner}} \boxed{D_{spectrum}}$$

$$N_{life} = \frac{H_0}{D_{spectrum}} \quad \text{[spectrum repetitions]} \qquad t_{life} = N_{life} \cdot t_{spectrum}$$

**Safety factor** $j_D$ applied to life or stress:

| Consequence of failure | $j_D$ |
|---|---|
| Non-critical, inspectable | $1.2$–$1.5$ |
| Critical, monitorable | $1.5$–$2.0$ |
| Safety-critical, no inspection | $2.0$–$2.5$ |

<!-- IMAGE: Complete workflow as flowchart -->

---

## Combining Load Cases — Multiple Spectra

**Real components experience several distinct load cases:**

<!-- _class: cols-2 -->
<div class="ldiv">

**Example — wind turbine:**
- LC1: normal operation
- LC2: start-up / shut-down
- LC3: storm survival
- LC4: emergency stop

Each load case has:
- Rainflow matrix $n_{ij}^{(k)}$
- Occurrence frequency $f_k$ [per year]
- Duration $t_k$ [hours per year]

</div>
<div class="rdiv">

**Total damage per year:**

$$D_{year} = \sum_{k=1}^{K} f_k \cdot D_k$$

where:

$$D_k = \sum_{i,j} \frac{n_{ij}^{(k)}}{N_f(\sigma_{a,eq,ij}^{(k)})}$$

is the damage per single occurrence of load case $k$.

</div>

---

## Miner Summation — Multiple Load Cases

**Step-by-step procedure:**

**Step 1 — Rainflow count each load case separately:**
$$n_{ij}^{(k)} \quad k = 1 \ldots K$$

**Step 2 — Mean stress correction for each class:**
$$\sigma_{a,eq,ij}^{(k)} = \frac{\sigma_{a,ij}^{(k)}}{1 - \sigma_{m,ij}^{(k)}/R_m} \quad \text{(Goodman)}$$

**Step 3 — Read $N_f$ from S-N curve for each class:**
$$N_{f,ij}^{(k)} = \frac{C}{\left(\sigma_{a,eq,ij}^{(k)}\right)^{k_1}} \quad \text{(Basquin)}$$

**Step 4 — Damage per load case occurrence:**
$$D_k = \sum_{i,j} \frac{n_{ij}^{(k)}}{N_{f,ij}^{(k)}}$$

**Step 5 — Total damage per service year:**
$$D_{year} = \sum_{k=1}^{K} f_k \cdot D_k$$

---

## Remaining Lifetime — Basic Calculation

**Given:** component has already accumulated $t_{used}$ years of service.

**Damage already consumed:**
$$D_{used} = t_{used} \cdot D_{year}$$

**Remaining damage budget:**
$$D_{remain} = D_{allow} - D_{used} \qquad \text{with } D_{allow} = 0.3\text{–}1.0$$

**Remaining lifetime:**
$$t_{remain} = \frac{D_{remain}}{D_{year}} = \frac{D_{allow} - D_{used}}{D_{year}}$$

**Total design lifetime:**
$$t_{design} = \frac{D_{allow}}{D_{year}}$$

**Condition for continued safe operation:**
$$D_{used} \leq D_{allow} \quad \Leftrightarrow \quad t_{used} \leq t_{design}$$

---

## Remaining Lifetime — With Changing Load History

<!-- _class: cols-2 -->
<div class="ldiv">

**Phase 1:** years $0$ to $t_1$, damage rate $D_{year,1}$

$$D_1 = t_1 \cdot D_{year,1}$$

**Phase 2:** years $t_1$ to $t_1 + t_2$, damage rate $D_{year,2}$

$$D_2 = t_2 \cdot D_{year,2}$$

**Failure criterion:**

$$D_1 + D_2 = D_{allow}$$

**Remaining life after phase 1:**

$$t_{remain} = \frac{D_{allow} - D_1}{D_{year,2}}$$

</div>
<div class="rdiv">

**General multi-phase life:**

$$\sum_{p=1}^{P} t_p \cdot D_{year,p} = D_{allow}$$

**Remaining life at inspection after phase $P$:**

$$t_{remain} = \frac{D_{allow} - \sum_{p=1}^{P} t_p \cdot D_{year,p}}{D_{year,future}}$$

> **Key:** each phase uses its own $D_{year}$ — damage budget is shared across all phases.

</div>

---

## Worked Example — Remaining Lifetime

**Given data:**

| Load case | Frequency | Damage per occurrence |
|---|---|---|
| LC1 normal operation | $8500\,\text{h/year}$ | $D_1 = 4.2 \times 10^{-8}$ per hour |
| LC2 start/stop | $365\,\text{cycles/year}$ | $D_2 = 1.1 \times 10^{-5}$ per cycle |
| LC3 storm | $12\,\text{events/year}$ | $D_3 = 8.5 \times 10^{-5}$ per event |

**Annual damage:**
$$D_{year} = 8500 \cdot 4.2\times10^{-8} + 365 \cdot 1.1\times10^{-5} + 12 \cdot 8.5\times10^{-5}$$
$$D_{year} = 3.57\times10^{-4} + 4.02\times10^{-3} + 1.02\times10^{-3} = 5.40\times10^{-3}$$

**Design lifetime** ($D_{allow} = 0.5$):
$$t_{design} = \frac{0.5}{5.40\times10^{-3}} = 92.6\,\text{years}$$

**After 20 years of operation:**
$$D_{used} = 20 \cdot 5.40\times10^{-3} = 0.108 \qquad t_{remain} = \frac{0.5 - 0.108}{5.40\times10^{-3}} = 72.6\,\text{years}$$

---

## Remaining Lifetime — Inspection-Based Update

**After an inspection, a crack of size $a_{insp}$ is found.**

**Remaining life from fracture mechanics:**

$$t_{remain} = \frac{2}{(m-2) \cdot C \cdot (\Delta\sigma \cdot Y \cdot \sqrt{\pi})^m} \left(a_c^{1-m/2} - a_{insp}^{1-m/2}\right) \quad (m \neq 2)$$

**Decision tree at inspection:**

| Finding | Action |
|---|---|
| No crack, $D_{used} < D_{allow}$ | Continue, schedule next inspection |
| No crack, $D_{used} \geq D_{allow}$ | Replace or retire component |
| Crack $a_{insp} < a_{allow}$ | Monitor, shorten inspection interval |
| Crack $a_{insp} \geq a_{allow}$ | Repair or retire immediately |

**Inspection interval planning:**

$$t_{inspect} \leq \frac{t_{remain}(a_{det})}{j_{insp}} \qquad j_{insp} \geq 2$$

---

## Influence Factors on Component Endurance Limit

$$\sigma_{D,component} = \frac{\sigma_{D,specimen} \cdot K_{surface} \cdot K_{size}}{K_f}$$

| Factor | Symbol | Effect | Typical range |
|---|---|---|---|
| Surface roughness | $K_{surface}$ | Rough → earlier PSB initiation | $0.6$–$1.0$ |
| Size effect | $K_{size}$ | Larger volume → higher defect probability | $0.7$–$1.0$ |
| Shot peening | $b_3$ | Compressive residual stress → beneficial | $1.0$–$1.3$ |
| Fatigue notch factor | $K_f = 1+q(K_t-1)$ | Stress concentration | $1.0$–$3.0$ |

<!-- IMAGE: Bar chart "Influence of factors on σ_D":
  y-axis: σ_D,component / σ_D,specimen (normalised, 0 to 1.4)
  x-axis: cumulative factors:
    1. Reference (specimen): 1.0
    2. + Roughness (K_surface = 0.7): 0.70
    3. + Size (K_size = 0.85): 0.60
    4. + Notch (K_f = 1.8): 0.33
    5. + Shot peening (b_3 = 1.2): 0.40 -->

---

## Summary

**HCF parameter measurement:**
- Staircase method → $\sigma_D$, scatter $T_\sigma$, standard deviation $s$
- Basquin fit → slope $k$, constant $C$
- Multiple $R$-ratios → Haigh / Smith diagram, mean stress sensitivity $M_\sigma$

**Real-world loading & damage:**
- Rainflow counting → matrix $n_{ij}^{(k)}(\sigma_m, \sigma_a)$ per load case
- Miner modified (Haibach): $k_2 = 2k_1-1$ below $\sigma_D$

**Multiple load cases:**
$$D_{year} = \sum_{k=1}^{K} f_k \cdot D_k \qquad D_k = \sum_{i,j} \frac{n_{ij}^{(k)}}{N_{f,ij}^{(k)}}$$

**Remaining lifetime:**
$$t_{remain} = \frac{D_{allow} - D_{used}}{D_{year,future}} \qquad D_{allow} = 0.3\text{–}0.5$$

After crack found → switch to fracture mechanics: $t_{remain} = \int_{a_{insp}}^{a_c} \frac{da}{C(\Delta K)^m}$

---
<!-- _class: lead -->
## Thank you

**Questions?**

Prof. Dr.-Ing. Christian Willberg<a href="https://orcid.org/0000-0003-2433-9183"><img src="../../assets/styles/ORCIDiD_iconvector.png" alt="ORCID" style="height:15px;width:auto;vertical-align:top;background-color:transparent;"></a>
christian.willberg@h2.de
Hochschule Magdeburg-Stendal