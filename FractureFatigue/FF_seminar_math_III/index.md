---
marp: true
header: 'Fracture & Fatigue - Basics'
theme: h2
paginate: true
math: katex

style: |
  section {
    font-family: 'Segoe UI', sans-serif;
    font-size: 23px;
    padding: 38px 48px;
    color: #1e2a3a;
    background-image: url("../../assets/styles/background.png");
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
# Basics
## Stress, Strain, and Tensors

Prof. Dr.-Ing. Christian Willberg
Hochschule Magdeburg-Stendal


<div style="position: absolute; top: 200px; left: 850px;"> 
<img src="https://quickchart.io/qr?text=https://cwillberg.github.io/Lectures/FractureFatigue/FF_seminar_math_III/&light=0000&size=300&centerImageUrl=https://raw.githubusercontent.com/CWillberg/Lectures/main/assets/QR/h2.png"
     style="height:380px;width:auto;vertical-align:top;background-color:transparent;">
</div>

---

# Overview Seminar III

<div class="zwei-spalten">
<div>

**Part 1 – Fundamentals**
- Stress tensor – derivation and meaning
- Strain tensor – derivation and meaning
- Stress-strain relationship (Hooke's law)
- Tensor notation and operations

</div>
<div>

**Part 2 – Principal Stresses**
- Eigenvalue problem – mathematical derivation
- Eigenvectors – physical meaning
- Principal stresses and principal directions
- Von Mises stress

</div>
</div>

---

# What is Stress?

## Definition & Motivation

<div class="eq">

$$\sigma = \frac{F}{A} \qquad [\sigma] = \frac{\text{N}}{\text{m}^2} = \text{Pa}$$

</div>

<div class="hinweis">

**Problem:** Forces act in different directions on different faces of a body. A single scalar is not enough — we need **9 components** to fully describe the stress state at a point.

</div>

- Normal force on face → **normal stress** $\sigma$
- Tangential force on face → **shear stress** $\tau$
- For a 3D body: 3 faces × 3 directions = **stress tensor**

---

# Stress Tensor – Derivation

Consider a small cubic element with forces acting on each face:

<div class="eq">

$$\boldsymbol{\sigma} = \begin{bmatrix}
\sigma_{xx} & \sigma_{xy} & \sigma_{xz} \\
\sigma_{yx} & \sigma_{yy} & \sigma_{yz} \\
\sigma_{zx} & \sigma_{zy} & \sigma_{zz}
\end{bmatrix}$$

</div>

**Notation:**
- First index: face normal direction
- Second index: force direction
- Example: $\sigma_{xy}$ = stress on $x$-face in $y$-direction

<div class="hinweis">

**Important:** $\boldsymbol{\sigma}$ is **symmetric**: $\sigma_{ij} = \sigma_{ji}$ — follows from moment equilibrium. Only 6 independent components!

</div>

---

# Stress Components

<div class="eq">

$$\boldsymbol{\sigma} = \begin{bmatrix}
\sigma_{xx} & \tau_{xy} & \tau_{xz} \\
\tau_{xy} & \sigma_{yy} & \tau_{yz} \\
\tau_{xz} & \tau_{yz} & \sigma_{zz}
\end{bmatrix}$$

</div>

<div class="zwei-spalten">
<div>

**Normal stresses (diagonal):** $\sigma_{xx},\, \sigma_{yy},\, \sigma_{zz}$
- Perpendicular to surface
- Tension (+) or compression (−)

</div>
<div>

**Shear stresses (off-diagonal):** $\tau_{xy},\, \tau_{xz},\, \tau_{yz}$
- Parallel to surface
- Cause deformation by sliding

</div>
</div>

---

# Stress Vector on a Surface

Given stress tensor $\boldsymbol{\sigma}$ and surface normal $\vec{n}$:

<div class="eq">

$$\vec{t} = \boldsymbol{\sigma} \cdot \vec{n}$$

$$\begin{bmatrix}
\sigma_{xx} & \sigma_{xy} & \sigma_{xz} \\
\sigma_{yx} & \sigma_{yy} & \sigma_{yz} \\
\sigma_{zx} & \sigma_{zy} & \sigma_{zz}
\end{bmatrix}
\begin{bmatrix} n_x \\ n_y \\ n_z \end{bmatrix}
= \begin{bmatrix} t_x \\ t_y \\ t_z \end{bmatrix}$$

</div>

<div class="hinweis">

This is **Cauchy's stress formula** — it connects the stress tensor to the actual force per unit area on any arbitrarily oriented surface.

</div>

---

# Exercise 2.1 – Stress Tensor

<div class="aufgabe">

**Exercise 2.1:** Given stress tensor (in MPa):

$$\boldsymbol{\sigma} = \begin{bmatrix}
100 & 50 & 0 \\
50 & 80 & 0 \\
0 & 0 & 60
\end{bmatrix}$$

**a)** Identify all normal stress components

**b)** Identify all shear stress components

**c)** Calculate the stress vector on a surface with normal $\vec{n} = \begin{bmatrix} 1 \\ 0 \\ 0 \end{bmatrix}$

</div>

---

# Solution – Exercise 2.1

<div class="loesung">

**a)** Normal stresses: $\sigma_{xx} = 100$ MPa, $\sigma_{yy} = 80$ MPa, $\sigma_{zz} = 60$ MPa

**b)** Shear stresses: $\tau_{xy} = \tau_{yx} = 50$ MPa; all others zero

**c)** Stress vector on the $x$-face:

$$\vec{t} = \begin{bmatrix} 100 & 50 & 0 \\ 50 & 80 & 0 \\ 0 & 0 & 60 \end{bmatrix} \begin{bmatrix} 1 \\ 0 \\ 0 \end{bmatrix} = \begin{bmatrix} 100 \\ 50 \\ 0 \end{bmatrix} \text{ MPa}$$

</div>

→ The $x$-face carries a **normal stress of 100 MPa** and a **shear stress of 50 MPa** in the $y$-direction. This is simply the first column of $\boldsymbol{\sigma}$.

---

# What is Strain?

## Definition & Motivation

<div class="eq">

$$\epsilon = \frac{\Delta L}{L_0} = \frac{L - L_0}{L_0} \qquad \text{dimensionless}$$

</div>

**Types:**
- **Normal strain:** elongation or compression
- **Shear strain:** change in angle between originally perpendicular lines

<div class="hinweis">

Like stress, we need a **tensor** to describe the complete deformation state at a point. A scalar strain is only valid for a single direction in a 1D problem.

</div>

---

# Strain Tensor – Derivation

For small deformations, the strain tensor is derived from the **displacement field** $\vec{u}$:

<div class="eq">

$$\epsilon_{ij} = \frac{1}{2}\left(\frac{\partial u_i}{\partial x_j} + \frac{\partial u_j}{\partial x_i}\right)$$

$$\boldsymbol{\epsilon} = \begin{bmatrix}
\epsilon_{xx} & \gamma_{xy}/2 & \gamma_{xz}/2 \\
\gamma_{xy}/2 & \epsilon_{yy} & \gamma_{yz}/2 \\
\gamma_{xz}/2 & \gamma_{yz}/2 & \epsilon_{zz}
\end{bmatrix}$$

</div>

<div class="hinweis">

Also symmetric: $\epsilon_{ij} = \epsilon_{ji}$. Engineering shear strains $\gamma_{ij} = 2\epsilon_{ij}$ (factor of 2!) are what strain gauges measure.

</div>

---

# Exercise 2.2 – Strain Tensor

<div class="aufgabe">

**Exercise 2.2:** A rectangular element deforms with displacement field:
$$u_x = 0.002 \cdot x, \qquad u_y = 0.001 \cdot y, \qquad u_z = 0$$

**a)** Calculate $\epsilon_{xx} = \dfrac{\partial u_x}{\partial x}$

**b)** Calculate $\epsilon_{yy} = \dfrac{\partial u_y}{\partial y}$

**c)** If the element was originally 100 mm × 50 mm, what are the new dimensions?

</div>

---

# Solution – Exercise 2.2

<div class="loesung">

**a)** $\epsilon_{xx} = \dfrac{\partial (0.002\, x)}{\partial x} = 0.002$

**b)** $\epsilon_{yy} = \dfrac{\partial (0.001\, y)}{\partial y} = 0.001$

**c)** New dimensions:

$$L_x = 100 \cdot (1 + 0.002) = \mathbf{100.2 \text{ mm}}$$
$$L_y = 50 \cdot (1 + 0.001) = \mathbf{50.05 \text{ mm}}$$

</div>

→ Small strains → small dimensional changes. At 0.2% strain the bar grows by just 0.2 mm — yet for brittle materials this is already beyond fracture strain!

---

# Hooke's Law – 1D

## Equation & Meaning

<div class="eq">

$$\sigma = E \cdot \epsilon$$

</div>

<div class="hinweis">

**What is behind it?** For small deformations, atomic bonds behave like linear springs. $E$ (Young's modulus) reflects the stiffness of the interatomic potential — stronger bonds → higher $E$.

</div>

**Example:** Steel, $E = 210$ GPa, $\epsilon = 0.001$:
$$\sigma = 210 \times 10^9 \cdot 0.001 = 210 \text{ MPa}$$

---

# Hooke's Law – 3D Generalisation

For a 3D state we need the **stiffness tensor** $\mathbf{C}$:

<div class="eq">

$$\boldsymbol{\sigma} = \mathbf{C} : \boldsymbol{\epsilon}$$

For **isotropic** materials: $\quad\sigma_{ij} = \lambda\,\delta_{ij}\,\epsilon_{kk} + 2\mu\,\epsilon_{ij}$

</div>

<div class="zwei-spalten">
<div>

**Lamé parameters:**
- $\lambda,\, \mu$ – material constants
- $\delta_{ij}$ – Kronecker delta
- $\epsilon_{kk} = \epsilon_{xx}+\epsilon_{yy}+\epsilon_{zz}$ (volume change)

</div>
<div>

**Relation to engineering constants:**

$$\mu = G = \frac{E}{2(1+\nu)}$$

$$\lambda = \frac{E\nu}{(1+\nu)(1-2\nu)}$$

</div>
</div>

---

# Hooke's Law – Matrix Form (Voigt Notation)

<div class="eq">

$$\begin{bmatrix} \sigma_{xx} \\ \sigma_{yy} \\ \sigma_{zz} \\ \tau_{yz} \\ \tau_{xz} \\ \tau_{xy} \end{bmatrix}
= \begin{bmatrix}
C_{11} & C_{12} & C_{12} & 0 & 0 & 0 \\
C_{12} & C_{11} & C_{12} & 0 & 0 & 0 \\
C_{12} & C_{12} & C_{11} & 0 & 0 & 0 \\
0 & 0 & 0 & C_{44} & 0 & 0 \\
0 & 0 & 0 & 0 & C_{44} & 0 \\
0 & 0 & 0 & 0 & 0 & C_{44}
\end{bmatrix}
\begin{bmatrix} \epsilon_{xx} \\ \epsilon_{yy} \\ \epsilon_{zz} \\ \gamma_{yz} \\ \gamma_{xz} \\ \gamma_{xy} \end{bmatrix}$$

</div>

For isotropic materials: $C_{11} = \lambda + 2\mu$, $\quad C_{12} = \lambda$, $\quad C_{44} = \mu$

---

# Exercise 2.3 – Hooke's Law

<div class="aufgabe">

**Exercise 2.3:** Steel specimen: $E = 210$ GPa, $\nu = 0.3$

**a)** If $\epsilon_{xx} = 0.002$ and all other strains are zero, calculate $\sigma_{xx}$

**b)** If $\sigma_{xx} = 100$ MPa (uniaxial tension), what is $\epsilon_{yy}$?
*(Hint: $\epsilon_{yy} = -\nu\,\epsilon_{xx}$ — Poisson effect)*

**c)** For pure shear $\tau_{xy} = 80$ MPa, calculate $\gamma_{xy}$
*(Hint: $\tau = G\gamma$, where $G = \dfrac{E}{2(1+\nu)}$)*

</div>

---

# Solution – Exercise 2.3

<div class="loesung">

**a)** $\sigma_{xx} = E\cdot\epsilon_{xx} = 210\,000 \cdot 0.002 = \mathbf{420 \text{ MPa}}$

**b)** $\epsilon_{xx} = \sigma_{xx}/E = 100/210\,000 = 4.76\times10^{-4}$
$$\epsilon_{yy} = -\nu\,\epsilon_{xx} = -0.3 \cdot 4.76\times10^{-4} = \mathbf{-1.43\times10^{-4}}$$

**c)** $G = \dfrac{210\,000}{2(1+0.3)} = \dfrac{210\,000}{2.6} = 80\,769$ MPa

$$\gamma_{xy} = \frac{\tau_{xy}}{G} = \frac{80}{80\,769} = \mathbf{9.9\times10^{-4}}$$

</div>

---

# Eigenvalue Problem – Motivation

## What is Behind It?

<div class="hinweis">

**Question:** Are there special directions where a matrix acts like scalar multiplication — pure stretching, no rotation?

$$\mathbf{A}\vec{v} = \lambda\,\vec{v}$$

**Physical meaning for stress:** Directions where **only normal stress** acts, no shear — the principal directions!

</div>

- $\mathbf{A}$ = matrix (here: stress tensor $\boldsymbol{\sigma}$)
- $\vec{v}$ = eigenvector (principal direction)
- $\lambda$ = eigenvalue (principal stress)

---

# Eigenvalue Problem – Derivation

Starting from $\mathbf{A}\vec{v} = \lambda\vec{v}$:

$$(\mathbf{A} - \lambda\mathbf{I})\vec{v} = \vec{0}$$

**For non-trivial solution** ($\vec{v} \neq \vec{0}$):

<div class="eq">

$$\det(\mathbf{A} - \lambda\mathbf{I}) = 0 \qquad \text{(characteristic equation)}$$

</div>

<div class="hinweis">

If $\det(\mathbf{A}-\lambda\mathbf{I}) \neq 0$, the only solution is $\vec{v}=\vec{0}$ (trivial, meaningless). The determinant condition forces the system to be singular — infinitely many solutions exist, i.e. a whole direction.

</div>

---

# Finding Eigenvalues – 2×2 Example

$$\mathbf{A} = \begin{bmatrix} 4 & 1 \\ 2 & 3 \end{bmatrix}$$

**Step 1:** Characteristic equation

$$\det\begin{bmatrix} 4-\lambda & 1 \\ 2 & 3-\lambda \end{bmatrix} = (4-\lambda)(3-\lambda) - 2 = 0$$

**Step 2:** Expand

$$\lambda^2 - 7\lambda + 10 = 0 \quad\Rightarrow\quad \lambda = \frac{7\pm\sqrt{49-40}}{2} = \frac{7\pm3}{2}$$

**Eigenvalues:** $\lambda_1 = 5$, $\quad\lambda_2 = 2$

---

# Finding Eigenvectors – Derivation

For each $\lambda_i$ solve $(\mathbf{A}-\lambda_i\mathbf{I})\vec{v}_i = \vec{0}$

**For $\lambda_1 = 5$:**

$$\begin{bmatrix} -1 & 1 \\ 2 & -2 \end{bmatrix}\begin{bmatrix} v_1 \\ v_2 \end{bmatrix} = \begin{bmatrix} 0 \\ 0 \end{bmatrix}$$

From first row: $-v_1 + v_2 = 0 \;\Rightarrow\; v_2 = v_1$

<div class="loesung">

**Eigenvector:** $\vec{v}_1 = \begin{bmatrix} 1 \\ 1 \end{bmatrix}$ (or any scalar multiple — direction is what matters)

</div>

---

# Exercise 3.1 – Eigenvalues and Eigenvectors

<div class="aufgabe">

**Exercise 3.1:** Given matrix $\mathbf{A} = \begin{bmatrix} 3 & 1 \\ 1 & 3 \end{bmatrix}$

**a)** Find the characteristic equation $\det(\mathbf{A} - \lambda\mathbf{I}) = 0$

**b)** Calculate both eigenvalues $\lambda_1$ and $\lambda_2$

**c)** Find the eigenvector for $\lambda_1$ (the larger eigenvalue)

</div>

---

# Solution – Exercise 3.1

<div class="loesung">

**a)** $(3-\lambda)^2 - 1 = 0 \;\Rightarrow\; \lambda^2 - 6\lambda + 8 = 0$

**b)** $\lambda = \dfrac{6\pm\sqrt{36-32}}{2} = \dfrac{6\pm2}{2}$

$$\boxed{\lambda_1 = 4, \quad \lambda_2 = 2}$$

**c)** For $\lambda_1 = 4$: $\begin{bmatrix}-1 & 1\\ 1 & -1\end{bmatrix}\vec{v}=\vec{0}$ → $v_1 = v_2$

$$\vec{v}_1 = \begin{bmatrix} 1 \\ 1 \end{bmatrix}$$

</div>

→ The eigenvectors of a **symmetric** matrix are always orthogonal — physically: principal directions are always perpendicular to each other.

---

# Principal Stresses – Physical Meaning

<div class="hinweis">

For any stress state $\boldsymbol{\sigma}$, there exist **principal directions** where shear stresses vanish completely. Only normal stresses act. This is the eigenvalue problem of the stress tensor!

</div>

<div class="eq">

$$\boldsymbol{\sigma}\,\vec{n}_i = \sigma_i\,\vec{n}_i$$

</div>

- $\sigma_i$ = principal stresses (eigenvalues)
- $\vec{n}_i$ = principal directions (eigenvectors)
- Always three real solutions for symmetric $\boldsymbol{\sigma}$
- Convention: $\sigma_1 \geq \sigma_2 \geq \sigma_3$

---

# Principal Stresses – Derivation

Characteristic equation of $\boldsymbol{\sigma}$:

<div class="eq">

$$\det(\boldsymbol{\sigma} - \sigma_p\,\mathbf{I}) = 0 \quad\Rightarrow\quad \sigma_p^3 - I_1\,\sigma_p^2 + I_2\,\sigma_p - I_3 = 0$$

</div>

**Stress invariants** (independent of coordinate rotation!):

| Invariant | Formula |
|-----------|---------|
| $I_1$ (trace) | $\sigma_{xx}+\sigma_{yy}+\sigma_{zz}$ |
| $I_2$ | $\sigma_{xx}\sigma_{yy}+\sigma_{yy}\sigma_{zz}+\sigma_{zz}\sigma_{xx} - \tau_{xy}^2-\tau_{yz}^2-\tau_{xz}^2$ |
| $I_3$ (det) | $\det(\boldsymbol{\sigma})$ |

---

# Principal Stresses – 2D Example

$$\boldsymbol{\sigma} = \begin{bmatrix} 100 & 50 \\ 50 & 60 \end{bmatrix} \text{ MPa}$$

$$\sigma_p^2 - 160\,\sigma_p + (100\cdot60 - 50^2) = 0 \quad\Rightarrow\quad \sigma_p^2 - 160\,\sigma_p + 3500 = 0$$

$$\sigma_p = \frac{160 \pm \sqrt{25600 - 14000}}{2} = \frac{160 \pm 107.7}{2}$$

<div class="loesung">

$$\sigma_1 = 133.85 \text{ MPa (maximum)}, \qquad \sigma_2 = 26.15 \text{ MPa (minimum)}$$

**In the principal directions: no shear stress!**

</div>

---

# Exercise 3.2 – Principal Stresses

<div class="aufgabe">

**Exercise 3.2:** Given plane stress state (MPa):

$$\boldsymbol{\sigma} = \begin{bmatrix} 80 & 40 \\ 40 & 60 \end{bmatrix}$$

**a)** Calculate the stress invariant $I_1 = \sigma_{xx} + \sigma_{yy}$

**b)** Find the characteristic equation

**c)** Calculate both principal stresses $\sigma_1$ and $\sigma_2$

</div>

---

# Solution – Exercise 3.2

<div class="loesung">

**a)** $I_1 = 80 + 60 = \mathbf{140}$ MPa

**b)** $\sigma_p^2 - 140\,\sigma_p + (80\cdot60 - 40^2) = 0$
$$\sigma_p^2 - 140\,\sigma_p + 3200 = 0$$

**c)** $\sigma_p = \dfrac{140 \pm \sqrt{19600 - 12800}}{2} = \dfrac{140 \pm \sqrt{6800}}{2} = \dfrac{140 \pm 82.46}{2}$

$$\boxed{\sigma_1 = 111.2 \text{ MPa}, \qquad \sigma_2 = 28.8 \text{ MPa}}$$

</div>

→ Check: $\sigma_1 + \sigma_2 = 140$ MPa $= I_1$ ✓ (trace is invariant)

---

# Von Mises Stress – Derivation

## Equation & Meaning

<div class="eq">

$$\sigma_v = \sqrt{\frac{1}{2}\left[(\sigma_1-\sigma_2)^2 + (\sigma_2-\sigma_3)^2 + (\sigma_3-\sigma_1)^2\right]}$$

</div>

<div class="hinweis">

**What is behind it?** The von Mises criterion is based on the **distortion energy** — the part of the strain energy that changes shape (not volume). Hydrostatic pressure alone cannot cause yielding in metals; only deviatoric stresses do.

</div>

In terms of stress components:
$$\sigma_v = \sqrt{\tfrac{1}{2}\left[(\sigma_{xx}-\sigma_{yy})^2+(\sigma_{yy}-\sigma_{zz})^2+(\sigma_{zz}-\sigma_{xx})^2\right]+3(\tau_{xy}^2+\tau_{yz}^2+\tau_{xz}^2)}$$

**Yielding occurs when** $\sigma_v \geq \sigma_y$

---

# Von Mises Stress – Physical Meaning

<div class="zwei-spalten">
<div>

**Interpretation:**
- Distortion energy criterion
- Predicts yielding in **ductile** materials
- Independent of hydrostatic pressure

**Comparison:**

| Criterion | Condition |
|-----------|-----------|
| Rankine | $\sigma_1 \leq \sigma_y$ |
| Tresca | $\sigma_1-\sigma_3 \leq \sigma_y$ |
| **Von Mises** | $\sigma_v \leq \sigma_y$ |

</div>
<div>

**When to use which:**
- Von Mises → ductile metals (steel, Al)
- Rankine → brittle materials (ceramics, cast iron)
- Tresca → conservative engineering design

Von Mises is typically **within 15 %** of Tresca — Von Mises is less conservative but more accurate for metals.

</div>
</div>

---

# Von Mises Stress – Example

From previous: $\sigma_1 = 133.85$ MPa, $\sigma_2 = 26.15$ MPa, $\sigma_3 = 0$ (plane stress)

$$\sigma_v = \sqrt{\frac{1}{2}\left[(133.85-26.15)^2 + (26.15-0)^2 + (0-133.85)^2\right]}$$

$$= \sqrt{\frac{1}{2}\left[107.7^2 + 26.15^2 + 133.85^2\right]} = \sqrt{\frac{1}{2}\left[11\,599 + 684 + 17\,916\right]}$$

<div class="loesung">

$$\sigma_v = \sqrt{15\,100} = \mathbf{122.9 \text{ MPa}}$$

</div>

---

# Exercise 3.3 – Von Mises Stress

<div class="aufgabe">

**Exercise 3.3:** Given principal stresses: $\sigma_1 = 100$ MPa, $\sigma_2 = 50$ MPa, $\sigma_3 = -20$ MPa

**a)** Calculate the Von Mises stress

**b)** If the yield strength is $\sigma_y = 250$ MPa, what is the safety factor $SF = \sigma_y / \sigma_v$?

**c)** What is $\sigma_v$ if all principal stresses are equal (pure hydrostatic stress)? Interpret the result.

</div>

---

# Solution – Exercise 3.3

<div class="loesung">

**a)**
$$\sigma_v = \sqrt{\tfrac{1}{2}\left[(100-50)^2+(50-(-20))^2+(-20-100)^2\right]}$$
$$= \sqrt{\tfrac{1}{2}\left[2500+4900+14400\right]} = \sqrt{10\,900} = \mathbf{104.4 \text{ MPa}}$$

**b)** $SF = 250/104.4 = \mathbf{2.39}$

**c)** If $\sigma_1 = \sigma_2 = \sigma_3 = p$: all differences vanish → $\sigma_v = 0$

</div>

→ **Hydrostatic stress causes no yielding** — this is the physical basis of the Von Mises criterion: shape change drives plasticity, volume change does not.

---

# Practical Example – Pressure Vessel

**Thin-walled cylinder** under internal pressure $p$:

<div class="zwei-spalten">
<div>

**Stress components:**
- Hoop stress: $\sigma_\theta = \dfrac{pr}{t}$
- Axial stress: $\sigma_z = \dfrac{pr}{2t}$
- Radial stress: $\sigma_r \approx 0$ (thin wall)

**Principal stresses:**
$$\sigma_1 = \frac{pr}{t}, \quad \sigma_2 = \frac{pr}{2t}, \quad \sigma_3 = 0$$

</div>
<div>

**Von Mises:**
$$\sigma_v = \frac{pr}{t}\sqrt{1 - \frac{1}{2} + \frac{1}{4}} = \frac{\sqrt{3}\,pr}{2t}$$

<div class="aufgabe">

**Quick check:** A steel vessel with $r = 500$ mm, $t = 10$ mm, $p = 5$ MPa and $\sigma_y = 250$ MPa. Calculate $\sigma_v$ and the safety factor.

</div>

</div>
</div>

---

# Connection – All Concepts Together

<div class="hinweis">

This is the complete workflow for stress analysis and failure assessment:

</div>

| Step | Tool | Result |
|------|------|--------|
| 1 | Stress state → **Stress tensor** $\boldsymbol{\sigma}$ | 6 components |
| 2 | Eigenvalue problem | **Principal stresses** $\sigma_1,\sigma_2,\sigma_3$ |
| 3 | Failure criterion | **Von Mises stress** $\sigma_v$ |
| 4 | Design check | $\sigma_v \leq \sigma_y / SF$ |

**This is the foundation for all fracture and fatigue analysis!**

---

<!-- _class: lead -->
# Summary Seminar III

- Stress tensor: 9 components (6 independent), symmetric
- Strain tensor: derived from displacement gradients
- Hooke's law: $\boldsymbol{\sigma} = \mathbf{C}:\boldsymbol{\epsilon}$, isotropic → 2 constants ($E$, $\nu$)
- Eigenvalue problem: $\det(\boldsymbol{\sigma}-\sigma_p\mathbf{I})=0$
- Principal stresses: no shear, eigenvalues of $\boldsymbol{\sigma}$
- Stress invariants: coordinate-independent
- Von Mises: distortion energy, $\sigma_v = 0$ for hydrostatic stress

**Next: Application to fracture mechanics!**

---

<!-- _class: lead -->
# Questions?

Prof. Dr.-Ing. Christian Willberg
christian.willberg@h2.de
Office: Building 10, Room 2.09