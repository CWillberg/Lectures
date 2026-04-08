---
marp: true
header: 'Fracture & Fatigue - Parameter'
theme: h2
paginate: true
math: katex
---
<!-- _class: lead -->
# Fracture & Fatigue - Parameter
Prof. Dr.-Ing. Christian Willberg
Hochschule Magdeburg-Stendal

---

## Overview

- Cyclic loading parameters
- Stress state — uniaxial and multiaxial
- Principal stresses and stress directions
- Stress concentrations
- Fracture mechanics parameters — stress intensity factor
- Energy release rate
- Fatigue-relevant material parameters

---

## Cyclic Loading – Stress Parameters

$$\sigma_m = \frac{\sigma_{max} + \sigma_{min}}{2} \quad \text{(mean stress)}$$

$$\sigma_a = \frac{\sigma_{max} - \sigma_{min}}{2} \quad \text{(stress amplitude)}$$

$$\Delta\sigma = \sigma_{max} - \sigma_{min} \quad \text{(stress range)}$$

$$R = \frac{\sigma_{min}}{\sigma_{max}} \quad \text{(stress ratio)}$$

| Loading type | $R$ | $\sigma_m$ |
|---|---|---|
| Fully reversed | $-1$ | $0$ |
| Pulsating tension | $0$ | $\sigma_a$ |
| Fluctuating tension | $0 < R < 1$ | $> 0$ |

---

## Cyclic Loading – Parameter Relations

All cyclic parameters are interrelated — only **two are independent**:

$$\sigma_{max} = \sigma_m + \sigma_a \qquad \sigma_{min} = \sigma_m - \sigma_a$$

$$\sigma_a = \frac{\Delta\sigma}{2} \qquad \sigma_m = \frac{\sigma_{max}(1+R)}{2}$$

$$R = \frac{\sigma_m - \sigma_a}{\sigma_m + \sigma_a}$$

**Special cases:**

| $R$ | Loading condition | Consequence |
|---|---|---|
| $-1$ | Fully reversed | $\sigma_m = 0$, pure alternating |
| $0$ | Pulsating tension | $\sigma_{min} = 0$ |
| $+1$ | Static load | $\sigma_a = 0$, no fatigue |
| $< -1$ | Compressive mean | $\|\sigma_{min}\| > \sigma_{max}$ |

---

## Stress State — The Stress Tensor

In general, the stress state at a point is described by the **Cauchy stress tensor**:

$$\boldsymbol{\sigma} = \begin{pmatrix} \sigma_{xx} & \tau_{xy} & \tau_{xz} \\ \tau_{yx} & \sigma_{yy} & \tau_{yz} \\ \tau_{zx} & \tau_{zy} & \sigma_{zz} \end{pmatrix}$$

- **Normal stresses** $\sigma_{ii}$: act perpendicular to the face
- **Shear stresses** $\tau_{ij}$: act parallel to the face
- Symmetry: $\tau_{ij} = \tau_{ji}$ → 6 independent components

**Voigt notation (engineering):**
$$\boldsymbol{\sigma} = [\sigma_{xx},\, \sigma_{yy},\, \sigma_{zz},\, \tau_{yz},\, \tau_{xz},\, \tau_{xy}]^T$$

In fatigue and fracture, the **full stress state** — not just one component — determines crack initiation and propagation direction.

---

## Principal Stresses

**Principal stresses** are the normal stresses acting on planes where shear stress vanishes.

Found by solving the eigenvalue problem:

$$\det(\boldsymbol{\sigma} - \sigma_i \mathbf{I}) = 0$$

Yields three principal stresses $\sigma_1 \geq \sigma_2 \geq \sigma_3$ and their directions (principal axes).

**In 2D (plane stress):**

$$\sigma_{1,2} = \frac{\sigma_{xx}+\sigma_{yy}}{2} \pm \sqrt{\left(\frac{\sigma_{xx}-\sigma_{yy}}{2}\right)^2 + \tau_{xy}^2}$$

**Why relevant for fatigue and fracture?**
- Fatigue cracks grow **perpendicular to the maximum principal stress** $\sigma_1$ (Mode I)
- Crack initiation along **maximum shear stress** planes ($\approx 45°$ to $\sigma_1$) in Stage I
- Fracture criteria (Rankine, von Mises, Tresca) are expressed in principal stresses

---

## Maximum Shear Stress

**Maximum shear stress** — critical for crack initiation (Stage I, slip-band driven):

$$\tau_{max} = \frac{\sigma_1 - \sigma_3}{2}$$

Acts on planes inclined at **45°** to the principal stress directions.

**Mohr's circle** — graphical representation of stress transformation:

$$\sigma_n = \frac{\sigma_1+\sigma_3}{2} + \frac{\sigma_1-\sigma_3}{2}\cos 2\theta$$

$$\tau = \frac{\sigma_1-\sigma_3}{2}\sin 2\theta$$

**Relevance:**
- PSBs and Stage I cracks nucleate on **maximum shear stress planes**
- Fretting fatigue and torsional fatigue are shear-dominated → $\tau_{max}$ governs
- Multiaxial fatigue criteria (Tresca, critical plane) are based on $\tau_{max}$

---

## Stress Triaxiality

**Stress triaxiality** $h$ describes the ratio of hydrostatic to deviatoric stress:

$$h = \frac{\sigma_m^{hydro}}{\sigma_{eq}} = \frac{(\sigma_1+\sigma_2+\sigma_3)/3}{\sigma_{eq}}$$

where $\sigma_{eq}$ is the von Mises equivalent stress:

$$\sigma_{eq} = \frac{1}{\sqrt{2}}\sqrt{(\sigma_1-\sigma_2)^2+(\sigma_2-\sigma_3)^2+(\sigma_3-\sigma_1)^2}$$

**Why relevant?**

| Stress state | Triaxiality $h$ | Effect |
|---|---|---|
| Uniaxial tension | $1/3$ | Reference state |
| Plane strain (crack tip) | $> 1$ | Suppresses plasticity → brittle behaviour |
| Pure shear | $0$ | No hydrostatic component |

High triaxiality at crack tips **suppresses plastic deformation** → plane strain condition → lower $K_{Ic}$ → more dangerous.

---

## Stress Concentrations

Real components contain **notches, holes, fillets, keyways** — local stress amplification occurs.

**Stress concentration factor** $K_t$ (elastic, theoretical):

$$K_t = \frac{\sigma_{max}}{\sigma_{nom}}$$

where $\sigma_{nom}$ is the nominal (average) stress in the net section.

**Example — circular hole in infinite plate under tension:**

$$K_t = 3$$

**Elliptical notch (Inglis solution):**

$$K_t = 1 + 2\sqrt{\frac{a}{\rho}} \approx 2\sqrt{\frac{a}{\rho}} \quad \text{for } a \gg \rho$$

where $a$ = notch half-length, $\rho$ = notch root radius.

**Fatigue notch factor** $K_f \leq K_t$: accounts for notch sensitivity $q$:

$$K_f = 1 + q(K_t - 1) \qquad 0 \leq q \leq 1$$

---

## Fracture Mechanics — Crack Opening Modes

Three fundamental modes of crack loading:


<div class="zwei-spalten">
<div>

**Mode I — Opening**
- Load perpendicular to crack plane
- Most common in fatigue
- Governed by $K_I$

**Mode II — In-plane shear**
- Load parallel to crack, perpendicular to crack front
- Governed by $K_{II}$

</div>
<div>

**Mode III — Out-of-plane shear**
- Load parallel to crack and crack front (tearing)
- Governed by $K_{III}$

**Mixed mode:**
$$K_{eff} = \sqrt{K_I^2 + K_{II}^2 + \frac{K_{III}^2}{1-\nu}}$$

</div>
</div>

In fatigue, cracks tend to reorient to **pure Mode I** (Stage II) — the direction minimising mixed-mode contributions.

---


---

## Energy Release Rate — Griffith Criterion

**Griffith (1921)** — fracture occurs when the energy released by crack extension equals the energy required to create new surfaces:

$$G = -\frac{d\Pi}{da} \geq G_c = 2\gamma_s$$

where $\gamma_s$ = specific surface energy, $\Pi$ = total potential energy.

**For a central crack of length $2a$ in an infinite plate under tension $\sigma$:**

$$G = \frac{\sigma^2 \pi a}{E'} \quad \text{with } E' = \begin{cases} E & \text{plane stress} \\ E/(1-\nu^2) & \text{plane strain} \end{cases}$$

**Irwin's relation** — connects $G$ and $K$:

$$G_I = \frac{K_I^2}{E'} \qquad G_{II} = \frac{K_{II}^2}{E'} \qquad G_{III} = \frac{K_{III}^2}{2\mu}$$

**Mixed mode total energy release rate:**

$$G = \frac{K_I^2 + K_{II}^2}{E'} + \frac{K_{III}^2}{2\mu}$$

---

## Energy Release Rate — Physical Interpretation

**$G$ is the thermodynamic driving force for crack extension:**

$$G = -\frac{d\Pi}{dA} \quad \left[\frac{\text{J}}{\text{m}^2} = \frac{\text{N}}{\text{m}}\right]$$

- $d\Pi$ = change in potential energy (strain energy released minus work done by external forces)
- $dA$ = new crack area created

**Two contributions to $\Pi$:**

$$G = \underbrace{\frac{d U_{ext}}{dA}}_{\text{work by external forces}} - \underbrace{\frac{d U_{strain}}{dA}}_{\text{strain energy stored}}$$

**Fixed grip (displacement controlled):** $G = -\frac{dU_{strain}}{dA}\Big|_u$ — strain energy **decreases**

**Dead load (force controlled):** $G = +\frac{dU_{strain}}{dA}\Big|_F$ — strain energy **increases**, but external work increases faster

**Both give the same $G$** for the same crack configuration — $G$ is a state quantity.

---

## Energy Release Rate — Fatigue

**Under cyclic loading**, the cyclic energy release rate drives crack growth:

$$\Delta G = G_{max} - G_{min} = \frac{K_{max}^2 - K_{min}^2}{E'} = \frac{\Delta K \cdot (K_{max}+K_{min})}{E'}$$

For $R \geq 0$:

$$\Delta G = \frac{(\Delta K)^2 (1+R)}{E'(1-R)}$$

**Alternative Paris-type law using $\Delta G$:**

$$\frac{da}{dN} = C_G \cdot (\Delta G)^{m/2}$$

**Advantages of $\Delta G$ over $\Delta K$:**
- Naturally accounts for mixed-mode loading
- Thermodynamically consistent driving force
- Useful when $K_I$ and $K_{II}$ contributions are comparable (e.g. shear-mode fatigue, fretting)

**Critical value:** $G_c = K_{Ic}^2 / E'$ — fracture toughness expressed as energy per unit area.

---

## Equivalent (von Mises) Stress

For **multiaxial stress states**, a single scalar measure is needed to compare with uniaxial material data.

**Von Mises equivalent stress** (distortion energy criterion):

$$\sigma_{eq} = \sqrt{\frac{1}{2}\left[(\sigma_1-\sigma_2)^2 + (\sigma_2-\sigma_3)^2 + (\sigma_3-\sigma_1)^2\right]}$$

In terms of tensor components:

$$\sigma_{eq} = \sqrt{\sigma_{xx}^2 + \sigma_{yy}^2 + \sigma_{zz}^2 - \sigma_{xx}\sigma_{yy} - \sigma_{yy}\sigma_{zz} - \sigma_{xx}\sigma_{zz} + 3(\tau_{xy}^2 + \tau_{yz}^2 + \tau_{xz}^2)}$$

**Yield condition (von Mises):**

$$\sigma_{eq} \geq R_{p0.2}$$

**Physical meaning:** yielding occurs when the **distortion strain energy** reaches a critical value — hydrostatic stress does not cause yielding.

---

## Equivalent Stress — Tresca Criterion

**Tresca equivalent stress** (maximum shear stress criterion):

$$\sigma_{eq,T} = \sigma_1 - \sigma_3 = 2\tau_{max}$$

**Yield condition:**

$$\sigma_1 - \sigma_3 \geq R_{p0.2}$$

**Comparison: von Mises vs. Tresca**

| Property | von Mises | Tresca |
|---|---|---|
| Based on | Distortion energy | Maximum shear stress |
| Conservative? | Less conservative | More conservative |
| Error vs. experiment | $< 5\%$ for ductile metals | Up to 15% |
| Used in | General multiaxial fatigue | Pressure vessel codes |
| Relevant for fatigue | Crack initiation (bulk) | Shear-driven initiation (PSBs) |

**Relation between both:**

$$\sigma_{eq,Mises} = \frac{\sqrt{3}}{2} \cdot \sigma_{eq,Tresca} \cdot \frac{1}{\cos(\theta - \pi/6)}$$

where $\theta$ is the Lode angle — they coincide only for $\theta = 0°$ and $\theta = 30°$.

---

## Equivalent Stress in Fatigue — Multiaxial Loading

**Problem:** S-N curves and Wöhler curves are generated under **uniaxial** loading. Real components experience **multiaxial** cyclic stress.

**Approach 1 — von Mises amplitude:**

$$\sigma_{a,eq} = \sqrt{\frac{1}{2}\left[(\sigma_{a,1}-\sigma_{a,2})^2 + (\sigma_{a,2}-\sigma_{a,3})^2 + (\sigma_{a,3}-\sigma_{a,1})^2\right]}$$

Compare $\sigma_{a,eq}$ with uniaxial $\sigma_D$ — valid for **proportional** loading (principal stress directions fixed).

**Approach 2 — Critical plane method:**
- Identifies the plane experiencing maximum fatigue damage
- Accounts for both normal stress $\sigma_n$ and shear stress $\tau$ on that plane
- Required for **non-proportional** loading (rotating principal axes)

**Sines criterion** (for proportional loading):

$$\sigma_{a,eq} + k \cdot (\sigma_{m,1}+\sigma_{m,2}+\sigma_{m,3}) \leq \sigma_D$$

where $k$ accounts for mean stress sensitivity of the material.

---

## Equivalent Stress — Summary and Relevance

**Which equivalent stress to use?**

| Situation | Recommended criterion |
|---|---|
| Proportional multiaxial, ductile material | von Mises ($\sigma_{eq}$) |
| Shear-dominated (torsion, fretting) | Tresca or critical plane |
| Non-proportional multiaxial | Critical plane method |
| Pressure vessel design | Tresca (conservative) |
| Crack tip plasticity (FCG) | von Mises (plastic zone size) |

**Key message:**
- Uniaxial fatigue data alone is **not sufficient** for multiaxial loading
- The equivalent stress maps the multiaxial state onto a scalar → enables use of S-N curves
- Always check whether loading is **proportional** before applying simple $\sigma_{eq}$ approaches
- For non-proportional loading: critical plane analysis or more advanced models required

---

## Stress Intensity Factor $K$

**$K$ characterises the amplitude of the stress field singularity at the crack tip:**

$$\sigma_{ij} = \frac{K}{\sqrt{2\pi r}} f_{ij}(\theta) + \text{higher order terms}$$

**For Mode I (most important):**

$$K_I = \sigma \cdot Y(a/W) \cdot \sqrt{\pi a}$$

where:
- $\sigma$ = applied nominal stress
- $a$ = crack length (or half-length for internal crack)
- $Y(a/W)$ = geometry correction factor (depends on specimen/component geometry)
- $W$ = characteristic dimension (width)

**Units:** $\text{MPa}\sqrt{\text{m}}$

**Under cyclic loading:**

$$\Delta K = \Delta\sigma \cdot Y \cdot \sqrt{\pi a} = (\sigma_{max}-\sigma_{min}) \cdot Y \cdot \sqrt{\pi a}$$

---

## Geometry Correction Factors $Y$

$Y$ accounts for the effect of finite geometry, free surfaces, and crack shape.

**Common cases:**

| Configuration | $Y$ |
|---|---|
| Central crack, infinite plate | $1.0$ |
| Edge crack, semi-infinite plate | $1.12$ |
| Central crack, finite width $W$ | $\sqrt{\sec(\pi a/W)}$ |
| Embedded elliptical crack | $\approx 1/\Phi$ (elliptic integral) |
| Surface semi-elliptical crack | $\approx 1.12/\Phi$ |

**Important:** $Y$ is **not constant** — it increases as $a/W$ increases → crack accelerates even at constant $\Delta\sigma$.

For complex geometries: $Y$ determined by **finite element analysis**.

---

## Energy Release Rate $G$

**Griffith's energy approach** — alternative to $K$, more fundamental:

$$G = -\frac{d\Pi}{da} \quad \text{(energy released per unit crack area advance)}$$

where $\Pi$ = total potential energy of the system.

**Relation to $K$ (Irwin):**

$$G_I = \frac{K_I^2}{E'} \quad \text{where } E' = \begin{cases} E & \text{plane stress} \\ E/(1-\nu^2) & \text{plane strain} \end{cases}$$

**Fracture criterion:**

$$G \geq G_c \quad \Leftrightarrow \quad K_I \geq K_{Ic}$$

**In fatigue — cyclic energy release rate:**

$$\Delta G = \frac{(\Delta K)^2}{E'} \quad \text{— alternative driving force for FCG}$$

$\Delta G$ is sometimes preferred over $\Delta K$ for mixed-mode fatigue crack growth.

---

## Fracture Toughness $K_{Ic}$

**$K_{Ic}$** is the critical stress intensity factor under **plane strain** conditions — a true material property.

**Fracture condition:**
$$K_I = K_{Ic} \quad \Rightarrow \quad \text{unstable crack growth}$$

**Critical crack size** for a given stress:
$$a_c = \frac{1}{\pi}\left(\frac{K_{Ic}}{\sigma \cdot Y}\right)^2$$

**Typical values:**

| Material | $K_{Ic}$ [MPa$\sqrt{\text{m}}$] |
|---|---|
| High-strength steel | 50–100 |
| Structural steel | 100–200 |
| Aluminium alloy | 20–45 |
| Titanium alloy | 40–80 |
| Ceramics | 1–5 |
| CFRP (laminate) | 20–60 |

**Plane strain condition** (valid $K_{Ic}$ test):
$$B,\, a \geq 2.5\left(\frac{K_{Ic}}{R_{p0.2}}\right)^2$$

---

## Fatigue Crack Growth Parameters

**Paris law material constants** $C$ and $m$:

$$\frac{da}{dN} = C \cdot (\Delta K)^m$$

Determined from standardised **FCG tests** (ASTM E647) on compact tension (CT) or middle tension (MT) specimens.

**Threshold stress intensity range** $\Delta K_{th}$:
- Below $\Delta K_{th}$: crack does not propagate
- Typical: $\Delta K_{th} \approx 2$–$10\,\text{MPa}\sqrt{\text{m}}$
- Decreases with increasing $R$-ratio
- Influenced by microstructure, environment, crack closure

**Complete FCG description (NASGRO equation):**

$$\frac{da}{dN} = C \left(\frac{1-f}{1-R}\Delta K\right)^m \frac{\left(1-\frac{\Delta K_{th}}{\Delta K}\right)^p}{\left(1-\frac{K_{max}}{K_{Ic}}\right)^q}$$

where $f$ = crack opening function (closure), $p$, $q$ = curve shape exponents.

---

## Mean Stress Effects — Goodman & Gerber

Mean stress $\sigma_m > 0$ reduces the allowable stress amplitude for a given fatigue life.

**Modified Goodman (linear, conservative):**

$$\frac{\sigma_a}{\sigma_D} + \frac{\sigma_m}{R_m} = 1$$

**Gerber (parabolic, less conservative):**

$$\frac{\sigma_a}{\sigma_D} + \left(\frac{\sigma_m}{R_m}\right)^2 = 1$$

**Soderberg (most conservative — uses $R_{p0.2}$ instead of $R_m$):**

$$\frac{\sigma_a}{\sigma_D} + \frac{\sigma_m}{R_{p0.2}} = 1$$

**In terms of $\Delta K$ (Walker equation for FCG):**

$$\frac{da}{dN} = C \left(\frac{\Delta K}{(1-R)^{1-\gamma}}\right)^m$$

Higher $R$ → higher mean $K$ → faster crack growth at same $\Delta K$.

---

## Summary — Key Parameters

**Cyclic loading:**
$\sigma_m$, $\sigma_a$, $\Delta\sigma$, $R$ — two are sufficient to define the cycle

**Stress state:**
Full tensor $\boldsymbol{\sigma}$, principal stresses $\sigma_1 \geq \sigma_2 \geq \sigma_3$, $\tau_{max}$, triaxiality $h$

**Stress concentrations:**
$K_t$ (elastic), $K_f$ (fatigue notch factor), notch sensitivity $q$

**Fracture mechanics:**
$K_I$, $K_{II}$, $K_{III}$, $\Delta K$, $G$, $\Delta G$ — crack tip driving forces

---

**Material resistance:**
$K_{Ic}$ (fracture toughness), $\Delta K_{th}$ (threshold), $C$, $m$ (Paris constants)

**Mean stress correction:**
Goodman, Gerber, Soderberg, Walker ($R$-ratio effect on FCG)

---
<!-- _class: lead -->
## Thank you

**Questions?**

Prof. Dr.-Ing. Christian Willberg
christian.willberg@h2.de
Hochschule Magdeburg-Stendal