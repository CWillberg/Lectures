---
marp: true
theme: h2
header: 'Peridynamics – Fundamentals'
footer: ''

title: Peridynamics – Bond-based, State-based, Correspondence
author: Christian Willberg

style: |
  section {
    font-family: 'Segoe UI', sans-serif;
    font-size: 23px;
    padding: 38px 48px;
    color: #1e2a3a;
  }
  section h1 {
    font-size: 34px;
    color: #1a5276;
    padding-bottom: 8px;
    margin-bottom: 18px;
  }
  section h2 {
    font-size: 24px;
    margin-bottom: 12px;
  }
  section h3 {
    font-size: 20px;
    margin-bottom: 8px;
  }
  .aufgabe {
    background: #fdf2e9;
    border: 2px solid #e67e22;
    border-radius: 8px;
    padding: 14px 20px;
    margin: 10px 0;
  }
  .aufgabe strong {
    color: #d35400;
  }
  .loesung {
    background: #eafaf1;
    border-left: 4px solid #27ae60;
    padding: 12px 18px;
    margin: 10px 0;
    border-radius: 0 6px 6px 0;
  }
  .eq {
    background: #f4ecf7;
    border: 1px solid #c39bd3;
    border-radius: 8px;
    padding: 10px 20px;
    text-align: center;
    margin: 12px 0;
  }
  .hinweis {
    background: #eaf2f8;
    border-left: 4px solid #2e86c1;
    padding: 10px 16px;
    margin: 8px 0;
    border-radius: 0 6px 6px 0;
    font-size: 20px;
  }
  .zwei-spalten {
    display: flex;
    gap: 36px;
  }
  .zwei-spalten > div {
    flex: 1;
  }
  table {
    border-collapse: collapse;
    width: 100%;
    margin: 10px 0;
    font-size: 19px;
  }
  th {
    background: #1a5276;
    color: white;
    padding: 7px 12px;
    text-align: left;
  }
  td {
    padding: 6px 12px;
    border-bottom: 1px solid #d5dbdb;
  }
  tr:nth-child(even) td {
    background: #f2f3f4;
  }
  ul { padding-left: 20px; margin: 6px 0; }
  li { margin-bottom: 4px; }

---

<style>
footer { font-size: 14px; color: #888; text-align: right; }
</style>

# Peridynamics – Fundamentals
## Bond-based · State-based · Correspondence

Prof. Dr.-Ing.  Christian Willberg<a href="https://orcid.org/0000-0003-2433-9183"><img src="../../assets/styles/ORCIDiD_iconvector.png" alt="ORCID Symbol" style="height:15px;width:auto;vertical-align: top;background-color:transparent;"></a>
Magdeburg-Stendal University of Applied Sciences
Contact: christian.willberg@h2.de

<div style="position: absolute; top: 200px; left: 850px;"> 
<img src="https://quickchart.io/qr?text=https://cwillberg.github.io/Lectures/Peridynamics/pd_02/&light=0000&size=300&centerImageUrl=https://raw.githubusercontent.com/CWillberg/Lectures/main/assets/QR/h2.png"
     style="height:380px;width:auto;vertical-align:top;background-color:transparent;">
</div>

---
<!--paginate: true-->

# Motivation – Why Peridynamics?

<div class="zwei-spalten">
<div>

**Classical Continuum Mechanics (CM)**

- Equation of motion contains **spatial derivatives** of $\sigma$
- At cracks: derivatives are **undefined**
- Cracks must be prescribed or propagated via additional criteria (XFEM, CZM)

</div>
<div>

**Peridynamics (PD)**

- Based on **integral equations**
- No spatial derivatives required
- Cracks emerge **naturally** from material failure
- Well-suited for discontinuous problems

</div>
</div>

<div class="hinweis">

Silling (2000): "Reformulation of elasticity theory for discontinuities and long-range forces." The equation of motion remains valid across cracks.

</div>

---

# Basic Concept of Peridynamics

<div class="zwei-spalten">
<div>

- Each material point $\mathbf{x}$ interacts with all points $\mathbf{x}'$ within a **horizon** $\delta$
- Neighbourhood: $\mathcal{H}_\delta(\mathbf{x}) = \{\mathbf{x}' : |\mathbf{x}' - \mathbf{x}| \leq \delta\}$
- **Reference bond vector:** $\boldsymbol{\xi} = \mathbf{x}' - \mathbf{x}$
- **Relative displacement:** $\boldsymbol{\eta} = \mathbf{u}' - \mathbf{u}$

</div>
<div>

<div class="eq">

**General PD Equation of Motion**

$$\rho\,\ddot{\mathbf{u}}(\mathbf{x},t) = \int_{\mathcal{H}} \mathbf{f}(\boldsymbol{\eta}, \boldsymbol{\xi})\,dV' + \mathbf{b}(\mathbf{x},t)$$

</div>

- $\mathbf{f}$: pairwise force density between $\mathbf{x}$ and $\mathbf{x}'$
- $\mathbf{b}$: body force density
- $\rho$: mass density

</div>
</div>

<div class="hinweis">

Unit of $\mathbf{f}$: $[\text{N/m}^6]$ (force per volume²) — different from classical CM!

</div>

---

# Overview of PD Formulations

| Formulation | Abbrev. | Interaction | Material model |
|---|---|---|---|
| Bond-based | BB-PD | Pairwise | $\nu = 1/4$ (3D) fixed |
| Ordinary State-based | OSB-PD | Collective, central | Isotropic materials |
| Non-ordinary State-based | NOSB-PD | Collective, arbitrary | General constitutive laws |
| Correspondence | CCM | Via deformation gradient | Direct use of classical models |

<div class="hinweis">

Thread of this lecture: BB → OSB → NOSB → CCM. Each formulation extends the previous one.

</div>

---

# Part 1: Bond-based Peridynamics (BB-PD)

---

# BB-PD – Basic Idea

<div class="zwei-spalten">
<div>

- Each pair $(\mathbf{x}, \mathbf{x}')$ is connected by a **bond**
- The bond acts like a **spring** along the connection line
- Force is **pairwise** and **central** (Newton 3: $\mathbf{f}(\boldsymbol{\eta},\boldsymbol{\xi}) = -\mathbf{f}(-\boldsymbol{\eta},-\boldsymbol{\xi})$)

</div>
<div>

<div class="eq">

$$\mathbf{f}(\boldsymbol{\eta}, \boldsymbol{\xi}) = c\, s\, \frac{\boldsymbol{\xi} + \boldsymbol{\eta}}{|\boldsymbol{\xi} + \boldsymbol{\eta}|}$$

</div>

- $c$: micromodulus $[\text{N/m}^6]$
- $s$: bond stretch (relative elongation)

$$s = \frac{|\boldsymbol{\xi} + \boldsymbol{\eta}| - |\boldsymbol{\xi}|}{|\boldsymbol{\xi}|}$$

</div>
</div>

<div class="hinweis">

**Limitation:** Pairwise central forces fix the ratio $K/G$, constraining Poisson's ratio to $\nu = 1/4$ (3D) or $\nu = 1/3$ (2D).

</div>

---

# BB-PD – Micromodulus and Energy Equivalence

$c$ is determined by matching classical strain energy (energy equivalence):

<div class="eq">

$$c = \frac{2E}{\delta^2 A} \quad \text{(1D)} \qquad c = \frac{12E}{\pi\delta^4} \quad \text{(2D, plane stress)} \qquad c = \frac{18K}{\pi\delta^5} \quad \text{(3D)}$$

</div>

**Failure criterion – critical stretch:**

<div class="eq">

$$s_c = \sqrt{\frac{5\pi G_{Ic}}{9 E \delta}} \quad \text{(3D)}$$

</div>

When $s > s_c$: bond breaks irreversibly → damage variable per point:

$$\phi(\mathbf{x},t) = 1 - \frac{\int_{\mathcal{H}} \mu(\boldsymbol{\xi},t)\,dV'}{\int_{\mathcal{H}} dV'} \in [0,1]$$

---

# Exercise 1 – Bond-based: Micromodulus and Stretch

<div class="aufgabe">

**Exercise 1:** A 1D steel bar ($E = 210\,\text{GPa}$, $A = 1\,\text{mm}^2$) has horizon $\delta = 3\,\text{mm}$.

(a) Calculate the micromodulus $c$ (1D).

(b) A bond of length $|\boldsymbol{\xi}| = 2\,\text{mm}$ is stretched to $|\boldsymbol{\xi} + \boldsymbol{\eta}| = 2.012\,\text{mm}$. Calculate the bond stretch $s$.

(c) The critical energy release rate is $G_{Ic} = 2{,}500\,\text{J/m}^2$. Calculate $s_c$ (3D formula). Does the bond from (b) fail?

</div>

---

# Solution – Exercise 1

<div class="loesung">

**(a)** Micromodulus (1D):
$$c = \frac{2E}{\delta^2 A} = \frac{2 \cdot 210{,}000\,\text{N/mm}^2}{(3\,\text{mm})^2 \cdot 1\,\text{mm}^2} = \frac{420{,}000}{9} \approx \mathbf{46{,}667\,\text{N/mm}^4}$$

**(b)** Bond stretch:
$$s = \frac{2.012 - 2.000}{2.000} = \frac{0.012}{2} = \mathbf{0.006} = 0.6\,\%$$

**(c)** Critical stretch (3D):
$$s_c = \sqrt{\frac{5\pi \cdot 2.5\,\text{N/mm}}{9 \cdot 210{,}000\,\text{N/mm}^2 \cdot 3\,\text{mm}}} = \sqrt{\frac{39.27}{5{,}670{,}000}} \approx \sqrt{6.93\cdot10^{-6}} \approx \mathbf{0.00263}$$

Since $s = 0.006 > s_c = 0.00263$: **bond fails.**

</div>

---

# Part 2: Ordinary State-based Peridynamics (OSB-PD)

---

# OSB-PD – Basic Idea

<div class="zwei-spalten">
<div>

**Problem with BB-PD:** Pairwise forces → $\nu$ is fixed.

**Solution:** The force of a bond depends on the **entire deformation state** of the neighbourhood → **State** concept.

A **peridynamic state** $\underline{\mathbf{A}}\langle\boldsymbol{\xi}\rangle$ is a function that maps each bond $\boldsymbol{\xi}$ to a value.

</div>
<div>

<div class="eq">

**OSB-PD Equation of Motion**

$$\rho\,\ddot{\mathbf{u}} = \int_{\mathcal{H}} \bigl(\underline{T}\langle\boldsymbol{\xi}\rangle - \underline{T}'\langle-\boldsymbol{\xi}\rangle\bigr)\,dV' + \mathbf{b}$$

</div>

- $\underline{T}\langle\boldsymbol{\xi}\rangle$: force density state from $\mathbf{x}$ on $\mathbf{x}'$
- Forces remain **central** (ordinary), but depend on the collective deformation

</div>
</div>

<div class="hinweis">

OSB-PD allows arbitrary $\nu$ for isotropic materials. The force direction stays along the deformed bond.

</div>

---

# OSB-PD – Dilatation and Force Density State

**Step 1 – Dilatation** (volumetric strain of the neighbourhood):

<div class="eq">

$$\theta(\mathbf{x}) = \frac{3}{\delta^3} \int_{\mathcal{H}} \underline{\omega}\langle\boldsymbol{\xi}\rangle\, |\boldsymbol{\xi}|\, s(\boldsymbol{\xi})\,dV'$$

</div>

**Step 2 – Force density state** (LPS – Linear Peridynamic Solid):

<div class="eq">

$$\underline{T}\langle\boldsymbol{\xi}\rangle = \underline{\omega}\langle\boldsymbol{\xi}\rangle \left(a\,\theta + b\,s(\boldsymbol{\xi})\right) \frac{\boldsymbol{\xi}+\boldsymbol{\eta}}{|\boldsymbol{\xi}+\boldsymbol{\eta}|}$$

</div>

Material parameters from $K$ and $G$:

$$a = \frac{3K - 5G}{\delta^3} \qquad b = \frac{15G}{2\delta^3} \quad \text{(3D, constant weight } \underline{\omega}=1\text{)}$$

---

# Exercise 2 – OSB-PD: Parameters and Dilatation

<div class="aufgabe">

**Exercise 2:** An isotropic material has $E = 70\,\text{GPa}$, $\nu = 0.33$, horizon $\delta = 3\,\text{mm}$. All bonds are uniformly stretched with $s = 0.001$ (hydrostatic load), $\underline{\omega} = 1$.

(a) Calculate $K$ and $G$ from $E$ and $\nu$.

(b) Calculate the OSB parameters $a$ and $b$.

(c) Calculate the dilatation $\theta$ (use $\int_{\mathcal{H}} |\boldsymbol{\xi}|\,dV' = \frac{3\pi\delta^4}{4}$ in 3D).

(d) Compare: what is the classical volumetric strain $\varepsilon_{vol}$ for the same hydrostatic loading?

</div>

---

# Solution – Exercise 2

<div class="loesung">

**(a)**
$$K = \frac{E}{3(1-2\nu)} = \frac{70{,}000}{3 \cdot 0.34} = 68{,}627\,\text{MPa} \qquad G = \frac{E}{2(1+\nu)} = \frac{70{,}000}{2.66} = 26{,}316\,\text{MPa}$$

**(b)**
$$a = \frac{3 \cdot 68{,}627 - 5 \cdot 26{,}316}{27} = \frac{74{,}301}{27} \approx 2{,}752\,\text{MPa/mm}^3 \qquad b = \frac{15 \cdot 26{,}316}{54} \approx 7{,}310\,\text{MPa/mm}^3$$

**(c)**
$$\theta = \frac{3}{\delta^3} \cdot s \cdot \frac{3\pi\delta^4}{4} = \frac{3}{27} \cdot 0.001 \cdot \frac{3\pi \cdot 81}{4} \approx \mathbf{0.003} = 3\varepsilon$$

**(d)** Under hydrostatic load: $\varepsilon_{vol} = 3\varepsilon = 3 \cdot 0.001 = 0.003$ ✓ — consistent with classical CM.

</div>

---

# Part 3: Non-ordinary State-based Peridynamics (NOSB-PD)

---

# NOSB-PD – Basic Idea

<div class="zwei-spalten">
<div>

**Problem with OSB-PD:** Force density state must still be central (along the bond).

**NOSB-PD:** No restriction on force direction. Allows **arbitrary constitutive laws** — including anisotropic materials.

**Key:** Compute a local **deformation gradient** $\mathbf{F}$ from the neighbourhood.

</div>
<div>

<div class="eq">

**Deformation Gradient (PD)**

$$\mathbf{F} = \left[\int_{\mathcal{H}} \underline{\omega}\langle\boldsymbol{\xi}\rangle\, (\boldsymbol{\xi}+\boldsymbol{\eta})\otimes\boldsymbol{\xi}\,dV'\right] \mathbf{K}^{-1}$$

with shape tensor:

$$\mathbf{K} = \int_{\mathcal{H}} \underline{\omega}\langle\boldsymbol{\xi}\rangle\,\boldsymbol{\xi}\otimes\boldsymbol{\xi}\,dV'$$

</div>

</div>
</div>

<div class="hinweis">

$\mathbf{K}$ depends only on the reference configuration and is computed once during initialisation. $\mathbf{F}$ is updated at every time step.

</div>

---

# NOSB-PD – Force Density State

From $\mathbf{F}$, a classical material model yields the **1st Piola–Kirchhoff stress tensor** $\mathbf{P}$:

$$\mathbf{P} = \mathbf{F}\,\mathbf{S} \quad \text{(with 2nd PK stress } \mathbf{S} \text{ from hyperelasticity etc.)}$$

The **force density state** then follows as:

<div class="eq">

$$\underline{T}\langle\boldsymbol{\xi}\rangle = \underline{\omega}\langle\boldsymbol{\xi}\rangle\,\mathbf{P}\,\mathbf{K}^{-1}\boldsymbol{\xi}$$

</div>

<div class="hinweis">

**Advantage:** Any classical material model (plasticity, viscoelasticity, anisotropy) can be used directly. **Disadvantage:** Zero-energy modes may occur → stabilisation required.

</div>

---

# NOSB-PD – Zero-Energy Modes

<div class="zwei-spalten">
<div>

**Problem:** The non-local $\mathbf{F}$ averages over the horizon. Deformation modes that leave $\mathbf{F}$ unchanged produce **no restoring force** → numerical instability (hourglass effect).

**Stabilisation (Silling):**

$$\underline{T}_{stab}\langle\boldsymbol{\xi}\rangle = \underline{T}\langle\boldsymbol{\xi}\rangle + \underline{\omega}\langle\boldsymbol{\xi}\rangle\,G_s\,(\boldsymbol{\eta} - \mathbf{F}\boldsymbol{\xi})$$

</div>
<div>

- $G_s$: stabilisation parameter (typically $\sim 0.05\,G$)
- $(\boldsymbol{\eta} - \mathbf{F}\boldsymbol{\xi})$: deviation of actual from affine deformation
- No effect for smooth fields (vanishes for affine $\mathbf{u}$)

</div>
</div>

<div class="hinweis">

Zero-energy modes are a central challenge in NOSB-PD and remain an active research topic. The stabilisation parameter must be chosen carefully to avoid polluting the solution.

</div>

---

# Exercise 3 – NOSB-PD: Deformation Gradient

<div class="aufgabe">

**Exercise 3 (1D simplified):** A point $x = 0$ has two neighbours: $x_1' = +\delta$ and $x_2' = -\delta$ with $\delta = 2\,\text{mm}$, $\underline{\omega} = 1$. Displacements: $u(x) = 0$, $u(x_1') = 0.004\,\text{mm}$, $u(x_2') = -0.004\,\text{mm}$.

(a) Calculate $K = \int_{\mathcal{H}} \xi^2\,dV'$ (discrete: sum over both neighbours, $dV' = 1\,\text{mm}^3$).

(b) Calculate $\int_{\mathcal{H}} (\xi + \eta)\,\xi\,dV'$ discretely.

(c) Calculate $F = \left[\int (\xi+\eta)\xi\,dV'\right] / K$ and interpret the result physically.

</div>

---

# Solution – Exercise 3

<div class="loesung">

**(a)** Shape tensor (1D, scalar):
$$K = \xi_1^2 \cdot dV' + \xi_2^2 \cdot dV' = (+2)^2 \cdot 1 + (-2)^2 \cdot 1 = 4 + 4 = \mathbf{8\,\text{mm}^5}$$

**(b)** $\eta_1 = u_1' - u = 0.004\,\text{mm}$, $\eta_2 = -0.004\,\text{mm}$:
$$\int (\xi+\eta)\xi\,dV' = (2 + 0.004)\cdot 2\cdot 1 + (-2 - 0.004)\cdot(-2)\cdot 1 = 4.008 + 4.008 = \mathbf{8.016\,\text{mm}^4}$$

**(c)**
$$F = \frac{8.016}{8} = \mathbf{1.002}$$

**Interpretation:** $F = 1 + \varepsilon = 1 + 0.002$ corresponds to a uniform longitudinal strain of $\varepsilon = 0.2\,\%$ — consistent with $u(x') = \varepsilon \cdot x'$.

</div>

---

# Part 4: Correspondence Material Model (CCM)

---

# CCM – Basic Idea

<div class="zwei-spalten">
<div>

**Idea:** Use the PD deformation gradient $\mathbf{F}$ directly with a **classical material model** (Hooke, plasticity, …) — without reformulating the material model peridynamically.

**Procedure:**
1. Compute $\mathbf{F}$ from PD neighbourhood (as in NOSB)
2. Compute $\boldsymbol{\varepsilon} = \frac{1}{2}(\mathbf{F}+\mathbf{F}^T) - \mathbf{I}$ (linear elasticity)
3. Compute $\boldsymbol{\sigma}$ with classical constitutive law
4. Convert $\boldsymbol{\sigma}$ to PD force density state

</div>
<div>

<div class="eq">

**CCM Force Density State**

$$\underline{T}\langle\boldsymbol{\xi}\rangle = \underline{\omega}\langle\boldsymbol{\xi}\rangle\,\boldsymbol{\sigma}\,\mathbf{K}^{-1}\boldsymbol{\xi}$$

</div>

<div class="hinweis">

CCM = NOSB with linear stress–strain law and infinitesimal strains. For large deformations: $\mathbf{P} = \boldsymbol{\sigma}\,\mathbf{F}^{-T}$ (Nanson's formula).

</div>

</div>
</div>

---

# CCM – Complete Algorithm

| Step | Operation | Formula |
|---|---|---|
| 1 | Shape tensor | $\mathbf{K} = \int_{\mathcal{H}} \underline{\omega}\,\boldsymbol{\xi}\otimes\boldsymbol{\xi}\,dV'$ |
| 2 | Deformation gradient | $\mathbf{F} = \left[\int_{\mathcal{H}} \underline{\omega}\,(\boldsymbol{\xi}+\boldsymbol{\eta})\otimes\boldsymbol{\xi}\,dV'\right]\mathbf{K}^{-1}$ |
| 3 | Strain tensor | $\boldsymbol{\varepsilon} = \tfrac{1}{2}(\mathbf{F}+\mathbf{F}^T) - \mathbf{I}$ |
| 4 | Stress tensor | $\boldsymbol{\sigma} = \mathbf{C}:\boldsymbol{\varepsilon}$ (Voigt notation) |
| 5 | Force density state | $\underline{T}\langle\boldsymbol{\xi}\rangle = \underline{\omega}\,\boldsymbol{\sigma}\,\mathbf{K}^{-1}\boldsymbol{\xi}$ |
| 6 | Force density | $\mathbf{f} = \int_{\mathcal{H}}(\underline{T}\langle\boldsymbol{\xi}\rangle - \underline{T}'\langle-\boldsymbol{\xi}\rangle)\,dV'$ |

<div class="hinweis">

Step 1 and $\mathbf{K}^{-1}$ are computed once during initialisation (reference configuration).

</div>

---

# Exercise 4 – CCM: Full Calculation (2D)

<div class="aufgabe">

**Exercise 4:** A point at $\mathbf{x} = \mathbf{0}$ has four neighbours (2D, $\delta = 1\,\text{mm}$, $\underline{\omega}=1$, $dV'=1\,\text{mm}^2$):

| Neighbour | $\boldsymbol{\xi}$ [mm] | $\boldsymbol{\eta}$ [mm] |
|---|---|---|
| 1 | $(1,\,0)$ | $(0.001,\,0)$ |
| 2 | $(-1,\,0)$ | $(-0.001,\,0)$ |
| 3 | $(0,\,1)$ | $(0,\,-0.0003)$ |
| 4 | $(0,\,-1)$ | $(0,\,0.0003)$ |

Material: $E = 210\,\text{GPa}$, $\nu = 0.30$, plane stress.

(a) Compute $\mathbf{K}$ (2×2). (b) Compute $\mathbf{F}$ (2×2). (c) Compute $\boldsymbol{\varepsilon}$. (d) Compute $\sigma_{11}$, $\sigma_{22}$.

</div>

---

# Solution – Exercise 4

<div class="loesung">

**(a)** $\mathbf{K} = \sum_i \boldsymbol{\xi}_i \otimes \boldsymbol{\xi}_i \cdot dV'$:
$$\mathbf{K} = \begin{bmatrix}1^2+1^2 & 0 \\ 0 & 1^2+1^2\end{bmatrix} = \begin{bmatrix}2 & 0 \\ 0 & 2\end{bmatrix}\,\text{mm}^4 \quad\Rightarrow\quad \mathbf{K}^{-1} = \begin{bmatrix}0.5 & 0 \\ 0 & 0.5\end{bmatrix}\,\text{mm}^{-4}$$

**(b)** $\mathbf{N} = \sum_i (\boldsymbol{\xi}_i+\boldsymbol{\eta}_i)\otimes\boldsymbol{\xi}_i$:
$$\mathbf{N} = \begin{bmatrix}1.001\cdot1+0.999\cdot1 & 0 \\ 0 & 0.9997\cdot1+1.0003\cdot1\end{bmatrix} = \begin{bmatrix}2.000 & 0 \\ 0 & 2.000\end{bmatrix}$$
$$\mathbf{F} = \mathbf{N}\,\mathbf{K}^{-1} = \begin{bmatrix}1.001 & 0 \\ 0 & 0.9997\end{bmatrix}$$

**(c)** $\boldsymbol{\varepsilon} = \mathbf{F} - \mathbf{I}$: $\varepsilon_{11} = 0.001$, $\varepsilon_{22} = -0.0003$, $\varepsilon_{12} = 0$

**(d)** Plane stress: $\sigma_{11} = \frac{E}{1-\nu^2}(\varepsilon_{11}+\nu\varepsilon_{22}) = 230{,}769\cdot(0.001-0.000\,09) \approx \mathbf{210\,\text{MPa}}$, $\quad\sigma_{22} \approx \mathbf{0\,\text{MPa}}$ (Poisson contraction compensates).

</div>

---

# Comparison of All Formulations

| Property | BB-PD | OSB-PD | NOSB-PD | CCM |
|---|---|---|---|---|
| Poisson's ratio | $\nu = 1/4$ fixed | arbitrary | arbitrary | arbitrary |
| Material model | Micromodulus $c$ | LPS params $a,b$ | Arbitrary (via $\mathbf{F}$) | Classical $\mathbf{C}$ directly |
| Force direction | Central (bond) | Central (bond) | Arbitrary | Arbitrary |
| Zero-energy modes | No | No | Yes | Yes |
| Implementation effort | Low | Medium | High | Medium |
| Anisotropy | No | No | Yes | Yes |

<div class="hinweis">

**Recommendation:** BB-PD for simple isotropic problems; CCM for direct coupling with classical FEM material models (e.g. PeriLab).

</div>

---

# Horizon $\delta$ – Influence and Choice

<div class="zwei-spalten">
<div>

**Physical meaning:**
- $\delta$ is a material length parameter (internal length)
- As $\delta \to 0$, PD converges to classical CM
- Coupling to discretisation: $\delta \sim 3{-}4 \cdot \Delta x$

**Effect on results:**
- Too large: smears cracks
- Too small: surface effects (surface correction needed)

</div>
<div>

| Ratio $m = \delta/\Delta x$ | Behaviour |
|---|---|
| $m < 2$ | Insufficient connectivity |
| $m = 3$ | Good compromise |
| $m = 4{-}5$ | Better convergence, more costly |
| $m \to \infty$ | Classical CM |

<div class="hinweis">

Surface correction is required because boundary points have an incomplete horizon → underestimated stiffness without correction.

</div>

</div>
</div>

---

# Summary

<div class="zwei-spalten">
<div>

**BB-PD**
- Simplest formulation
- Spring force along bond
- $\nu = 1/4$ (3D) restriction
- Failure: critical stretch $s_c$

**OSB-PD**
- Dilatation $\theta$ + bond stretch $s$
- Parameters $a$, $b$ from $K$, $G$
- Arbitrary $\nu$, isotropic

</div>
<div>

**NOSB-PD**
- Deformation gradient $\mathbf{F}$ from neighbourhood
- Arbitrary constitutive laws
- Zero-energy modes → stabilisation

**CCM**
- $\mathbf{F}$ → $\boldsymbol{\varepsilon}$ → $\boldsymbol{\sigma}$ → $\underline{T}$
- Direct use of classical material models
- Standard approach in PeriLab

</div>
</div>

<div class="hinweis">

**Key thread:** Each formulation overcomes a limitation of its predecessor — at the cost of increased complexity and potential numerical instabilities.

</div>