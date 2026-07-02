---
marp: true
theme: h2
header: 'Fracture & Fatigue – Seminar Micromechanics'
paginate: true
---

<style>
img[alt="ORCID"] {
  height: 15px !important;
  width: auto !important;
  vertical-align: top !important;
  display: inline !important;
  margin: 0 !important;
}
section {
  font-family: 'Segoe UI', sans-serif;
  font-size: 23px;
  color: #1e2a3a;
}
h1 { font-size: 34px; color: #1a5276; }
h2 { font-size: 24px; color: #1a5276; }
h3 { font-size: 20px; color: #1a5276; }
.aufgabe {
  border: 2px solid #e67e22;
  background: #fdf2e9;
  padding: 12px 16px;
  border-radius: 6px;
  margin: 8px 0;
}
.loesung {
  border-left: 5px solid #27ae60;
  background: #eafaf1;
  padding: 12px 16px;
  margin: 8px 0;
}
.eq {
  border: 2px solid #c39bd3;
  background: #f4ecf7;
  padding: 10px 16px;
  border-radius: 6px;
  text-align: center;
  margin: 8px 0;
}
.hinweis {
  border-left: 5px solid #2e86c1;
  background: #eaf2f8;
  padding: 10px 16px;
  font-size: 20px;
  margin: 8px 0;
}
.zwei-spalten {
  display: flex;
  gap: 2em;
}
.zwei-spalten > div { flex: 1; }
table th { background: #1a5276; color: white; }
table tr:nth-child(even) { background: #f2f3f4; }
</style>

# Seminar — Micromechanics
## Exercises 8.1 – 8.4

Prof. Dr.-Ing. Christian Willberg<a href="https://orcid.org/0000-0003-2433-9183"><img src="../../assets/styles/ORCIDiD_iconvector.png" alt="ORCID" style="height:15px;width:auto;vertical-align:top;background-color:transparent;"></a>
Hochschule Magdeburg-Stendal

<div style="position: absolute; top: 200px; left: 850px;">
<img src="https://quickchart.io/qr?text=https://cwillberg.github.io/Lectures/Fracture/Fatigue/FF_seminar_micromechanics/&light=0000&size=300&centerImageUrl=https://raw.githubusercontent.com/CWillberg/Lectures/main/assets/QR/h2.png"
     style="height:380px;width:auto;vertical-align:top;background-color:transparent;">
</div>

---

## Overview

| Exercise | Topic |
|---|---|
| 8.1 | Volume fractions from Voigt-Reuss and Hashin-Shtrikman bounds |
| 8.2 | Hashin-Shtrikman principle applied to a 1D bar |
| 8.3 | Strain compatibility at a phase interface |
| 8.4 | Stress state at particle-matrix interface (Eshelby + interface conditions) |

**Prerequisites from lecture:**
- Voigt-Reuss bounds (Section 8.3.2.2)
- Hashin-Shtrikman bounds (Section 8.3.3.2)
- Eshelby solution for ellipsoidal inclusions (Section 8.2.1.4)
- Equivalent eigenstrain concept (Section 8.2.2)

---

## Exercise 8.1 — Volume Fractions from Bounds

<div class="aufgabe">

A heterogeneous, macroscopically **isotropic** material has a measured effective bulk modulus $K^*$.

The microstructure consists of **two isotropic phases** with elastic properties $K^I$, $\mu^I$, $K^M$, $\mu^M$.

**Given:** $K^I = 10\,K^M$, $\mu^I = 10\,\mu^M$, $K^* = 5\,K^M$

**Task:** Use the **Voigt-Reuss** and **Hashin-Shtrikman** bounds to determine the range of admissible volume fractions $c_I$ (and $c_M = 1 - c_I$).

</div>

<div class="hinweis">
Strategy: both bounds give $K^* = f(c_I)$. Set each bound equal to $K^* = 5K^M$ and solve for $c_I$. This gives two limiting values that bracket the admissible range.
</div>

---

## Exercise 8.1 — Voigt-Reuss Bounds: Setup

**Voigt bound** (arithmetic mean of stiffnesses — upper bound):

<div class="eq">

$$K^*_{\text{Voigt}} = c_I K^I + c_M K^M = c_I \cdot 10K^M + (1-c_I) K^M = K^M(1 + 9c_I)$$

</div>

**Reuss bound** (arithmetic mean of compliances — lower bound):

<div class="eq">

$$\frac{1}{K^*_{\text{Reuss}}} = \frac{c_I}{K^I} + \frac{c_M}{K^M} = \frac{c_I}{10K^M} + \frac{1-c_I}{K^M} = \frac{1}{K^M}\left(1 - \frac{9c_I}{10}\right)$$

$$K^*_{\text{Reuss}} = \frac{10\,K^M}{10 - 9c_I}$$

</div>

The true $K^*$ satisfies: $K^*_{\text{Reuss}} \leq K^* \leq K^*_{\text{Voigt}}$

---

## Exercise 8.1 — Voigt-Reuss Bounds: Solution

Set each bound equal to $K^* = 5K^M$ and solve for $c_I$.

**From Voigt bound** (upper bound → $K^*$ cannot exceed $K^*_{\text{Voigt}}$):

$$5K^M = K^M(1+9c_I) \quad \Rightarrow \quad c_I = \frac{4}{9} \approx \mathbf{0.44}$$

Since $K^*_{\text{Voigt}}$ is the upper bound, we need $c_I \leq$ this value → $c_I \leq 0.44$? 

No — for fixed $K^* = 5K^M$, larger $c_I$ increases $K^*_{\text{Voigt}}$, so the bound is satisfied for $c_I \geq 0.44$.

**From Reuss bound** (lower bound):

$$5K^M = \frac{10K^M}{10-9c_I} \quad \Rightarrow \quad 10-9c_I = 2 \quad \Rightarrow \quad c_I = \frac{8}{9} \approx \mathbf{0.88}$$

<div class="loesung">

**Result — Voigt-Reuss bounds:**

$$0.44 \leq c_I \leq 0.88$$

</div>

---

## Exercise 8.1 — Hashin-Shtrikman Bounds: Setup

The HS bounds for isotropic two-phase material ($K_M < K^I$):

**Lower HS bound** ($C^0 = C^M$, softer phase as reference):

<div class="eq">

$$K^*_{\text{HS}-} = K^M + c_I\left[\frac{1}{K^I-K^M} + \frac{3c_M}{3K^M+4\mu^M}\right]^{-1}$$

</div>

**Upper HS bound** ($C^0 = C^I$, stiffer phase as reference):

<div class="eq">

$$K^*_{\text{HS}+} = K^I + c_M\left[\frac{1}{K^M-K^I} + \frac{3c_I}{3K^I+4\mu^I}\right]^{-1}$$

</div>

With $K^I = 10K^M$ and $\mu^I = 10\mu^M$, note: $3K^M + 4\mu^M$ and $3K^I + 4\mu^I = 10(3K^M+4\mu^M)$.

<div class="hinweis">
Since $\mu^I/\mu^M = K^I/K^M = 10$, all moduli scale by the same factor — the problem is self-similar in the ratio 10.
</div>

---

## Exercise 8.1 — HS Lower Bound

Substitute $K^I = 10K^M$, $\mu^I = 10\mu^M$, $c_M = 1-c_I$:

$$K^*_{\text{HS}-} = K^M + c_I\left[\frac{1}{9K^M} + \frac{3(1-c_I)}{3K^M+4\mu^M}\right]^{-1}$$

Set $K^*_{\text{HS}-} = 5K^M$ and solve for $c_I$.

After rearrangement (using the specific ratio $\mu^M = \mu^M$, keeping the expression general):

$$5K^M - K^M = c_I\left[\frac{1}{9K^M} + \frac{3(1-c_I)}{3K^M+4\mu^M}\right]^{-1}$$

$$\frac{4}{c_I} = \frac{9K^M \cdot (3K^M+4\mu^M)}{3K^M+4\mu^M + 27K^M(1-c_I)} \cdot \frac{1}{K^M}$$

For the specific case with $\mu^M = K^M$ (representative value consistent with $\nu \approx 1/4$):
$3K^M+4\mu^M = 7K^M$

$$c_{I,\text{lower}} \approx \mathbf{0.56}$$

---

## Exercise 8.1 — HS Upper Bound

**Upper HS bound** set equal to $K^* = 5K^M$:

$$K^*_{\text{HS}+} = 10K^M + (1-c_I)\left[\frac{1}{K^M-10K^M} + \frac{3c_I}{30K^M+40\mu^M}\right]^{-1} = 5K^M$$

$$-5K^M = (1-c_I)\left[-\frac{1}{9K^M} + \frac{3c_I}{7\cdot 10K^M}\right]^{-1}$$

Solving for $c_I$:

$$c_{I,\text{upper}} \approx \mathbf{0.79}$$

<div class="loesung">

**Result — Hashin-Shtrikman bounds:**

$$0.56 \leq c_I \leq 0.79$$

This is a **significantly narrower** range than Voigt-Reuss ($0.44 \leq c_I \leq 0.88$).

</div>

---

## Exercise 8.1 — Comparison and Interpretation

<!-- _class: cols-2 -->
<div class="ldiv">

| Bound pair | Lower $c_I$ | Upper $c_I$ | Width |
|---|---|---|---|
| Voigt-Reuss | 0.44 | 0.88 | 0.44 |
| Hashin-Shtrikman | 0.56 | 0.79 | 0.23 |

The HS bounds are **nearly twice as tight** as Voigt-Reuss.

</div>
<div class="rdiv">

**Physical interpretation:**

- The measured $K^* = 5K^M = 0.5K^I$ lies between the pure-phase values
- Both bound pairs are consistent with this, but HS excludes more extreme microstructures
- HS bounds assume **isotropic** microstructure — more information → tighter range

<div class="hinweis">
Additional microstructural information (e.g. inclusion shape) would narrow the range further.
</div>

</div>

---

## Exercise 8.2 — HS Principle on a 1D Bar

<div class="aufgabe">

Apply the **Hashin-Shtrikman variational principle** to the 1D example of a heterogeneous tensile bar.

</div>

<!-- _class: cols-2 -->
<div class="ldiv">

![h:220](./assets/Abb8.33.png)

<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;">
Fig. 8.33 from Gross & Seelig, Bruchmechanik (2016)
</div>
</div>
<div class="rdiv">

Two phases with Young's moduli $E_1$, $E_2$ and volume fractions $c_1$, $c_2 = 1-c_1$, arranged in **series** (Reuss configuration).

The bar has total length $L$, loaded by prescribed displacement $u$.

Choose the trial field: piecewise constant stress polarisation
$$\hat{\tau}(x) = \tau_\alpha = \text{const} \quad \text{in phase } \alpha$$

</div>

---

## Exercise 8.2 — HS Principle: Lower Bound

**Choose reference material** $E^0 = E_1$ (softer, if $E_1 < E_2$).

Stress polarisation $\hat{\tau} = [E(\mathbf{x}) - E^0]\varepsilon(\mathbf{x})$.

With piecewise constant $\tau_\alpha$ in each phase, the HS functional reduces to:

<div class="eq">

$$F(\tau_\alpha) = -\sum_\alpha c_\alpha \tau_\alpha (E_\alpha - E^0)^{-1}\tau_\alpha + \sum_\alpha c_\alpha(\tau_\alpha - \bar{\tau})\tilde{\varepsilon}_\alpha + 2\bar{\tau}\varepsilon^0$$

</div>

In 1D with $E^0 = E_1$: phase 1 has $\tau_1 = 0$ (reference phase), phase 2 has free $\tau_2$.

The 1D Green's function for the homogeneous reference bar gives:
$$\tilde{\varepsilon}(\tau) = -\frac{\tau}{E_1} \quad \text{(uniform strain response)}$$

---

## Exercise 8.2 — Stationarity Condition

Setting $\partial F/\partial\tau_2 = 0$:

$$-\frac{2\tau_2}{E_2 - E_1} + 2c_2\left(-\frac{1}{E_1}\right)(\tau_2 - c_2\tau_2) + 2c_2\frac{\tau_2}{E_1} + 2c_2\varepsilon^0 = 0$$

After simplification with $\bar{\tau} = c_2\tau_2$:

$$\tau_2\left[\frac{1}{E_2-E_1} + \frac{c_1}{E_1}\right] = \varepsilon^0$$

$$\tau_2 = \frac{\varepsilon^0}{\dfrac{1}{E_2-E_1}+\dfrac{c_1}{E_1}} = \frac{E_1(E_2-E_1)\varepsilon^0}{E_1 + c_1(E_2-E_1)}$$

Inserting into $F(\tau_2) = \varepsilon^0(E^* - E^0)\varepsilon^0$:

<div class="eq">

$$E^*_{\text{HS}} = \frac{E_1 E_2}{c_1 E_2 + c_2 E_1}$$

</div>

---

## Exercise 8.2 — Result and Interpretation

Choosing **$E^0 = E_1$** (lower reference) and **$E^0 = E_2$** (upper reference) both yield:

<div class="loesung">

$$E^*_{\text{HS}-} = E^*_{\text{HS}+} = \frac{E_1 E_2}{c_1 E_2 + c_2 E_1}$$

The upper and lower HS bounds **coincide** — this is the **exact** effective stiffness.

</div>

**Why?** In 1D, the series arrangement forces **uniform stress** throughout the bar. The Reuss assumption ($\hat{\sigma} = \text{const}$) is therefore exact:

$$E^*_{\text{Reuss}} = \left(\frac{c_1}{E_1}+\frac{c_2}{E_2}\right)^{-1} = \frac{E_1 E_2}{c_1 E_2 + c_2 E_1}$$

<div class="hinweis">
In 1D, both bounds collapse to the exact solution. This shows that the HS principle is optimal — when the microstructure actually realises a bound, both bounds give the same value.
</div>

---

## Exercise 8.3 — Strain Compatibility at a Phase Interface

<div class="aufgabe">

Two isotropic linear-elastic materials (a) and (b) with Lamé constants $\lambda_a, \mu_a$ and $\lambda_b, \mu_b$ are **perfectly bonded**.

At an arbitrary point $P$ on the interface, the strain state $\varepsilon^a_{ij}$ in material (a) is known.

**Determine** the strain state $\varepsilon^b_{ij}$ in material (b) at point $P$.

</div>

<!-- _class: cols-2 -->
<div class="ldiv">

![h:220](./assets/Abb8.34.png)

<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;">
Fig. 8.34 from Gross & Seelig, Bruchmechanik (2016)
</div>
</div>
<div class="rdiv">

**Interface conditions** (local coordinates $x_1, x_2$ in-plane, $x_3$ normal):

Traction continuity:
$$\sigma^a_{i3} = \sigma^b_{i3} \quad (i = 1,2,3)$$

Displacement continuity (tangential strains):
$$\varepsilon^a_{11} = \varepsilon^b_{11}, \quad \varepsilon^a_{12} = \varepsilon^b_{12}, \quad \varepsilon^a_{22} = \varepsilon^b_{22}$$

</div>

---

## Exercise 8.3 — Strategy

**Known** from material (a): all 6 strain components $\varepsilon^a_{ij}$

**Also known** from displacement continuity: $\varepsilon^b_{11}$, $\varepsilon^b_{12}$, $\varepsilon^b_{22}$

**Unknown**: $\varepsilon^b_{13}$, $\varepsilon^b_{23}$, $\varepsilon^b_{33}$

**Strategy:** Use the constitutive law for isotropic material (Lamé form):

<div class="eq">

$$\sigma_{ij} = \lambda\,\varepsilon_{kk}\,\delta_{ij} + 2\mu\,\varepsilon_{ij}$$

</div>

Step 1: Compute $\sigma^a_{i3}$ from known strains in material (a).

Step 2: Set $\sigma^b_{i3} = \sigma^a_{i3}$ (traction continuity).

Step 3: Express $\sigma^b_{i3}$ in terms of unknown strains in (b) → solve for unknowns.

---

## Exercise 8.3 — Shear Components

**Shear stresses** at interface (only $\varepsilon_{13}$ and $\varepsilon_{23}$ appear):

From material (a):
$$\sigma^a_{13} = 2\mu_a\,\varepsilon^a_{13}, \qquad \sigma^a_{23} = 2\mu_a\,\varepsilon^a_{23}$$

From material (b):
$$\sigma^b_{13} = 2\mu_b\,\varepsilon^b_{13}, \qquad \sigma^b_{23} = 2\mu_b\,\varepsilon^b_{23}$$

Traction continuity $\sigma^a_{\gamma 3} = \sigma^b_{\gamma 3}$ ($\gamma = 1,2$):

<div class="loesung">

$$\varepsilon^b_{\gamma 3} = \frac{\mu_a}{\mu_b}\,\varepsilon^a_{\gamma 3} \qquad (\gamma = 1,2)$$

</div>

The shear strains transform by the **ratio of shear moduli**. If $\mu_b > \mu_a$: the stiffer material deforms less in shear for the same traction.

---

## Exercise 8.3 — Normal Component

**Normal stress** $\sigma_{33}$ involves the volume strain $\varepsilon_{kk} = \varepsilon_{11}+\varepsilon_{22}+\varepsilon_{33}$:

From material (a):
$$\sigma^a_{33} = \lambda_a(\varepsilon^a_{11}+\varepsilon^a_{22}+\varepsilon^a_{33}) + 2\mu_a\,\varepsilon^a_{33} = \lambda_a(\varepsilon^a_{11}+\varepsilon^a_{22}) + (\lambda_a+2\mu_a)\varepsilon^a_{33}$$

From material (b) — with $\varepsilon^b_{11} = \varepsilon^a_{11}$, $\varepsilon^b_{22} = \varepsilon^a_{22}$ (continuity):
$$\sigma^b_{33} = \lambda_b(\varepsilon^a_{11}+\varepsilon^a_{22}) + (\lambda_b+2\mu_b)\varepsilon^b_{33}$$

Setting $\sigma^a_{33} = \sigma^b_{33}$ and solving for $\varepsilon^b_{33}$:

<div class="loesung">

$$\varepsilon^b_{33} = \frac{(\lambda_a+2\mu_a)\,\varepsilon^a_{33} + (\lambda_a-\lambda_b)(\varepsilon^a_{11}+\varepsilon^a_{22})}{\lambda_b+2\mu_b}$$

</div>

---

## Exercise 8.3 — Complete Solution and Discussion

<div class="loesung">

**Complete strain state in material (b) at point P:**

$$\varepsilon^b_{11} = \varepsilon^a_{11}, \qquad \varepsilon^b_{22} = \varepsilon^a_{22}, \qquad \varepsilon^b_{12} = \varepsilon^a_{12}$$

$$\varepsilon^b_{\gamma 3} = \frac{\mu_a}{\mu_b}\,\varepsilon^a_{\gamma 3} \qquad (\gamma = 1,2)$$

$$\varepsilon^b_{33} = \frac{(\lambda_a+2\mu_a)\,\varepsilon^a_{33} + (\lambda_a-\lambda_b)(\varepsilon^a_{11}+\varepsilon^a_{22})}{\lambda_b+2\mu_b}$$

</div>

**Observations:**
- In-plane strains are **continuous** (kinematic constraint)
- Out-of-plane shear strains scale by $\mu_a/\mu_b$ (traction constraint)
- Normal strain $\varepsilon^b_{33}$ depends on **both** the normal strain and in-plane volumetric strain via the mismatch in $\lambda$
- For identical materials ($\lambda_a = \lambda_b$, $\mu_a = \mu_b$): all strains are continuous ✓

---

## Exercise 8.4 — Stress at Particle-Matrix Interface

<div class="aufgabe">

An isotropic composite with **spherical particles** (I) in a **matrix** (M) is loaded by uniaxial macro stress $\Sigma$ in $x_3$-direction.

Determine the **stress state in the matrix** at the equatorial point P of the particle-matrix interface, using the result from Exercise 8.3 and the Eshelby solution.

</div>

<!-- _class: cols-2 -->
<div class="ldiv">

![h:260](./assets/Abb8.35.png)

<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;">
Fig. 8.35 from Gross & Seelig, Bruchmechanik (2016)
</div>
</div>
<div class="rdiv">

**Geometry:** Point P is at the equator of the sphere, i.e. on the $x_1, x_2$-plane ($x_3 = 0$).

At P, the interface normal points in the $x_1$-direction (local $x_3 \to x_1$ in the interface coordinate system).

**Strategy:**
1. Compute strain in particle (I) from Eshelby solution
2. Apply Exercise 8.3 result to get strain in matrix at P
3. Compute matrix stress from constitutive law

</div>

---

## Exercise 8.4 — Strain in the Particle (Eshelby)

From the Eshelby solution for a spherical inhomogeneity under remote uniaxial stress $\sigma^0_{33} = \Sigma$ (all other $\sigma^0_{ij} = 0$):

The strain inside the particle is **uniform**:

<div class="eq">

$$\varepsilon^I_{ij} = A^\infty_I : C_M^{-1} : \sigma^0$$

</div>

For the spherical isotropic case, the concentration tensor $A^\infty_I$ involves the Eshelby tensor parameters $\alpha(\nu_M)$ and $\beta(\nu_M)$:

$$\varepsilon^I_{33} = \frac{\Sigma}{3K^I\cdot(\ldots)}, \qquad \varepsilon^I_{11} = \varepsilon^I_{22} = \frac{\varepsilon^I_{33} \cdot (\ldots)}{(\ldots)}$$

For the special case $\nu_M = \nu_I = 2/7$ (i.e. $K = 2\mu$):

The Eshelby tensor components simplify significantly, and $\alpha = 3/7$, $\beta = 6/7$.

---

## Exercise 8.4 — Interface Conditions at Point P

At the equatorial point P, the interface normal is $\mathbf{n} = \mathbf{e}_1$.

The interface conditions from Exercise 8.3 apply with $x_3 \to x_1$ (normal direction):

**Continuity of tangential strains** ($x_2$- and $x_3$-tangential at P):
$$\varepsilon^M_{22} = \varepsilon^I_{22}, \qquad \varepsilon^M_{33} = \varepsilon^I_{33}, \qquad \varepsilon^M_{23} = \varepsilon^I_{23}$$

**Traction continuity in normal direction $x_1$:**
$$\sigma^M_{11} = \sigma^I_{11}, \qquad \sigma^M_{12} = \sigma^I_{12}, \qquad \sigma^M_{13} = \sigma^I_{13}$$

**Unknown** at P in the matrix: $\varepsilon^M_{11}$ (normal strain), which follows from $\sigma^M_{11} = \sigma^I_{11}$ applied to the matrix constitutive law.

---

## Exercise 8.4 — Matrix Stress at Point P

From the interface conditions and constitutive laws, the matrix stress components at P are:

**From traction continuity** ($\sigma^M_{11} = \sigma^I_{11}$):

$$\sigma^M_{11} = \lambda_I(\varepsilon^I_{11}+\varepsilon^I_{22}+\varepsilon^I_{33}) + 2\mu_I\varepsilon^I_{11}$$

**From tangential strain continuity** ($\varepsilon^M_{22} = \varepsilon^I_{22}$, $\varepsilon^M_{33} = \varepsilon^I_{33}$):

$$\sigma^M_{22} = \lambda_M(\varepsilon^M_{11}+\varepsilon^M_{22}+\varepsilon^M_{33}) + 2\mu_M\varepsilon^M_{22}$$

$$\sigma^M_{33} = \lambda_M(\varepsilon^M_{11}+\varepsilon^M_{22}+\varepsilon^M_{33}) + 2\mu_M\varepsilon^M_{33}$$

where $\varepsilon^M_{11}$ is obtained from Exercise 8.3:

$$\varepsilon^M_{11} = \frac{(\lambda_I+2\mu_I)\varepsilon^I_{11} + (\lambda_I-\lambda_M)(\varepsilon^I_{22}+\varepsilon^I_{33})}{\lambda_M+2\mu_M}$$

---

## Exercise 8.4 — Results and Discussion

<!-- _class: cols-2 -->
<div class="ldiv">

![h:300](./assets/Abb8.36.png)

<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;">
Fig. 8.36 from Gross & Seelig, Bruchmechanik (2016)
</div>
</div>
<div class="rdiv">

Normalised stresses $\sigma/\Sigma$ at point P as functions of stiffness ratio $\log(\mu^I/\mu^M)$ for $\nu_M = \nu_I = 2/7$:

**Soft inclusion** ($\mu^I \ll \mu^M$, $\log \to -\infty$):
- $\sigma^M_{33}/\Sigma \to 1$ (matrix carries full load)
- $\sigma^M_{11}/\Sigma, \sigma^M_{22}/\Sigma \to 0$ (no constraint)
- Particle acts like a void

**Rigid inclusion** ($\mu^I \gg \mu^M$, $\log \to +\infty$):
- $\sigma^M_{33}/\Sigma$ increases significantly
- $\sigma^M_{11}/\Sigma$ becomes compressive (particle squeezes matrix laterally)
- High stress concentration at equator → likely failure initiation site

</div>

---

## Exercise 8.4 — Physical Interpretation

<div class="hinweis">
The equatorial point P is the <b>critical location</b> for matrix failure initiation in composites with stiff particles under uniaxial tension.
</div>

**Why is the equator critical?**

- Under $x_3$-tension, the stiff particle constrains lateral contraction of the matrix
- At P ($x_1$-normal), the matrix is pulled apart in $x_3$ and compressed in $x_1$ by the particle constraint
- The combination of $\sigma^M_{33}$ (tension) and $\sigma^M_{11}$ (compression) creates a stress state that can exceed the matrix strength

**Relevance for damage mechanics (Chapter 9):**
- Debonding initiates at the equator for stiff particles under tension
- Void nucleation follows → ductile damage
- This micromechanical insight is the basis for Gurson-type porous plasticity models

---

## Summary — Exercises 8.1 – 8.4

| Exercise | Key result | Method |
|---|---|---|
| 8.1 | $0.44 \leq c_I \leq 0.88$ (VR), $0.56 \leq c_I \leq 0.79$ (HS) | Invert bound formulas |
| 8.2 | $E^* = E_1 E_2/(c_1 E_2 + c_2 E_1)$ exact | HS = Reuss in 1D |
| 8.3 | $\varepsilon^b_{\gamma 3} = (\mu_a/\mu_b)\varepsilon^a_{\gamma 3}$; $\varepsilon^b_{33}$ from traction continuity | Interface BC |
| 8.4 | Stress concentration at equator of stiff particle | Eshelby + Ex. 8.3 |

**Key insights:**
- HS bounds are significantly tighter than Voigt-Reuss → more useful for phase fraction estimation
- In 1D, HS bounds collapse to the exact Reuss solution
- Interface strain/stress jumps depend on property mismatch and component orientation
- The equatorial stress concentration in stiff-particle composites is the microstructural origin of ductile damage

<div class="hinweis">
These results connect directly to damage mechanics in Chapter 9: microcrack and void nucleation are controlled by stress concentrations at defects, computed via the tools developed here.
</div>