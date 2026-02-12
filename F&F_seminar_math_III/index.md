---
marp: true
header: 'Fracture & Fatigue - Basics'
theme: h2
paginate: true
math: katex
---


<!-- _class: lead -->
# Basics
## Stress, Strain, and Tensors
Prof. Dr.-Ing. Christian Willberg
Hochschule Magdeburg-Stendal

---
# Overview Seminar III

- Stress tensor - derivation and meaning
- Strain tensor - derivation and meaning
- Stress-strain relationship (Hooke's law)
- Tensor notation and operations
- Principal stresses (introduction)

---
# What is Stress?

**Stress** = Force per unit area

$$\sigma = \frac{F}{A}$$

Unit: $[\sigma] = \frac{N}{m^2} = Pa$ (Pascal)

**Problem:** Forces act in different directions!

We need 9 components to fully describe stress at a point:

---
# Stress Tensor - Derivation

Consider a small cubic element with forces acting on each face:

$$\boldsymbol{\sigma} = \begin{bmatrix} 
\sigma_{xx} & \sigma_{xy} & \sigma_{xz} \\
\sigma_{yx} & \sigma_{yy} & \sigma_{yz} \\
\sigma_{zx} & \sigma_{zy} & \sigma_{zz}
\end{bmatrix}$$

**Notation:**
- First index: face normal direction
- Second index: force direction
- Example: $\sigma_{xy}$ = stress on $x$-face in $y$-direction

**Important:** $\boldsymbol{\sigma}$ is symmetric: $\sigma_{ij} = \sigma_{ji}$

---
# Stress Components

$$\boldsymbol{\sigma} = \begin{bmatrix} 
\sigma_{xx} & \tau_{xy} & \tau_{xz} \\
\tau_{xy} & \sigma_{yy} & \tau_{yz} \\
\tau_{xz} & \tau_{yz} & \sigma_{zz}
\end{bmatrix}$$

**Normal stresses (diagonal):** $\sigma_{xx}, \sigma_{yy}, \sigma_{zz}$
- Perpendicular to surface
- Tension (positive) or compression (negative)

**Shear stresses (off-diagonal):** $\tau_{xy}, \tau_{xz}, \tau_{yz}$
- Parallel to surface
- Cause deformation by sliding

---
# Stress Vector on a Surface

Given stress tensor $\boldsymbol{\sigma}$ and surface normal $\vec{n}$:

**Stress vector:** $\vec{t} = \boldsymbol{\sigma} \cdot \vec{n}$

**Derivation:**
$$\begin{bmatrix} 
\sigma_{xx} & \sigma_{xy} & \sigma_{xz} \\
\sigma_{yx} & \sigma_{yy} & \sigma_{yz} \\
\sigma_{zx} & \sigma_{zy} & \sigma_{zz}
\end{bmatrix}
\begin{bmatrix} n_x \\ n_y \\ n_z \end{bmatrix}
= \begin{bmatrix} t_x \\ t_y \\ t_z \end{bmatrix}$$

This is Cauchy's stress formula!

---
# Exercise 2.1 - Stress Tensor

Given stress tensor (in MPa):
$$\boldsymbol{\sigma} = \begin{bmatrix} 
100 & 50 & 0 \\
50 & 80 & 0 \\
0 & 0 & 60
\end{bmatrix}$$

**a)** Identify all normal stress components

**b)** Identify all shear stress components

**c)** Calculate the stress vector on a surface with normal $\vec{n} = \begin{bmatrix} 1 \\ 0 \\ 0 \end{bmatrix}$

---
# What is Strain?

**Strain** = Change in length per original length

$$\epsilon = \frac{\Delta L}{L_0} = \frac{L - L_0}{L_0}$$

Unit: dimensionless [-] or [%]

**Types:**
- Normal strain: elongation/compression
- Shear strain: angular distortion

Like stress, we need a tensor to describe complete deformation state!

---
# Strain Tensor - Derivation

For small deformations, strain tensor:

$$\boldsymbol{\epsilon} = \begin{bmatrix} 
\epsilon_{xx} & \epsilon_{xy} & \epsilon_{xz} \\
\epsilon_{yx} & \epsilon_{yy} & \epsilon_{yz} \\
\epsilon_{zx} & \epsilon_{zy} & \epsilon_{zz}
\end{bmatrix}$$

**From displacement field** $\vec{u} = \begin{bmatrix} u_x \\ u_y \\ u_z \end{bmatrix}$:

$$\epsilon_{ij} = \frac{1}{2}\left(\frac{\partial u_i}{\partial x_j} + \frac{\partial u_j}{\partial x_i}\right)$$

Also symmetric: $\epsilon_{ij} = \epsilon_{ji}$

---
# Strain Components

$$\boldsymbol{\epsilon} = \begin{bmatrix} 
\epsilon_{xx} & \gamma_{xy}/2 & \gamma_{xz}/2 \\
\gamma_{xy}/2 & \epsilon_{yy} & \gamma_{yz}/2 \\
\gamma_{xz}/2 & \gamma_{yz}/2 & \epsilon_{zz}
\end{bmatrix}$$

**Normal strains (diagonal):** $\epsilon_{xx}, \epsilon_{yy}, \epsilon_{zz}$
- Extension or compression in coordinate directions

**Engineering shear strains:** $\gamma_{ij} = 2\epsilon_{ij}$ (for $i \neq j$)
- Change in angle between originally perpendicular lines

---
# Exercise 2.2 - Strain Tensor

A rectangular element deforms with displacement field:
- $u_x = 0.002 \cdot x$
- $u_y = 0.001 \cdot y$
- $u_z = 0$

**a)** Calculate $\epsilon_{xx} = \frac{\partial u_x}{\partial x}$

**b)** Calculate $\epsilon_{yy} = \frac{\partial u_y}{\partial y}$

**c)** If the element was originally 100 mm × 50 mm, what are the new dimensions?

---
# Hooke's Law - 1D Derivation

For a 1D bar under tension:

**Stress-strain relationship:**
$$\sigma = E \cdot \epsilon$$

where $E$ = Young's modulus (material property)

**Example:** Steel with $E = 210$ GPa
If $\epsilon = 0.001$ (0.1% strain):
$$\sigma = 210 \times 10^9 \cdot 0.001 = 210 \times 10^6 \text{ Pa} = 210 \text{ MPa}$$

---
# Hooke's Law - 3D Generalization

For 3D state, we need the **stiffness tensor** $\mathbf{C}$:

$$\boldsymbol{\sigma} = \mathbf{C} : \boldsymbol{\epsilon}$$

For **isotropic materials** (properties same in all directions):

$$\sigma_{ij} = \lambda \delta_{ij} \epsilon_{kk} + 2\mu \epsilon_{ij}$$

where:
- $\lambda, \mu$ = Lamé parameters (material properties)
- $\delta_{ij}$ = Kronecker delta (1 if $i=j$, 0 otherwise)
- $\epsilon_{kk} = \epsilon_{xx} + \epsilon_{yy} + \epsilon_{zz}$ (volumetric strain)

---
# Hooke's Law - Matrix Form

In Voigt notation (engineering notation):

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

For isotropic materials:
- $C_{11} = \lambda + 2\mu$
- $C_{12} = \lambda$
- $C_{44} = \mu$

---
# Exercise 2.3 - Hooke's Law

For a steel specimen ($E = 210$ GPa, $\nu = 0.3$):

**a)** If $\epsilon_{xx} = 0.002$ and all other strains are zero, calculate $\sigma_{xx}$ using $\sigma = E\epsilon$

**b)** If $\sigma_{xx} = 100$ MPa (uniaxial tension), what is $\epsilon_{yy}$? 
(Hint: $\epsilon_{yy} = -\nu \epsilon_{xx}$, Poisson effect)

**c)** For pure shear $\tau_{xy} = 80$ MPa, calculate $\gamma_{xy}$ using $\tau = G\gamma$ where $G = \frac{E}{2(1+\nu)}$

---
<!-- _class: lead -->
# Summary Seminar II

- Stress tensor: 9 components (6 independent)
- Strain tensor: deformation measure
- Both are symmetric tensors
- Hooke's law: linear relationship stress-strain
- Material properties: $E$, $\nu$, $\lambda$, $\mu$
- Next seminar: Eigenvalues and principal stresses

---
marp: true
header: 'Fracture & Fatigue - Mathematical Basics III'
theme: h2
paginate: true
math: katex
---
<!-- _class: lead -->
# Mathematical Basics III
## Eigenvalues and Principal Stresses
Prof. Dr.-Ing. Christian Willberg
Hochschule Magdeburg-Stendal

---
# Overview Seminar III

- Eigenvalue problem - mathematical derivation
- Eigenvectors - physical meaning
- Principal stresses
- Principal directions
- Von Mises stress

---
# Eigenvalue Problem - Motivation

**Question:** Are there special directions where a matrix acts like scalar multiplication?

$$\mathbf{A}\vec{v} = \lambda \vec{v}$$

- $\mathbf{A}$ = matrix
- $\vec{v}$ = eigenvector (special direction)
- $\lambda$ = eigenvalue (scaling factor)

**Physical meaning:** Directions where only stretching occurs, no rotation!

---
# Eigenvalue Problem - Derivation

Starting from: $\mathbf{A}\vec{v} = \lambda \vec{v}$

Rewrite: $\mathbf{A}\vec{v} - \lambda \vec{v} = \vec{0}$

Factor: $(\mathbf{A} - \lambda \mathbf{I})\vec{v} = \vec{0}$

**For non-trivial solution** ($\vec{v} \neq \vec{0}$):

$$\det(\mathbf{A} - \lambda \mathbf{I}) = 0$$

This is the **characteristic equation**!

---
# Finding Eigenvalues - Example 2×2

$$\mathbf{A} = \begin{bmatrix} 4 & 1 \\ 2 & 3 \end{bmatrix}$$

**Step 1:** Set up characteristic equation
$$\det\begin{bmatrix} 4-\lambda & 1 \\ 2 & 3-\lambda \end{bmatrix} = 0$$

**Step 2:** Calculate determinant
$$(4-\lambda)(3-\lambda) - 1 \cdot 2 = 0$$
$$12 - 4\lambda - 3\lambda + \lambda^2 - 2 = 0$$
$$\lambda^2 - 7\lambda + 10 = 0$$

---
# Finding Eigenvalues - Example (continued)

$$\lambda^2 - 7\lambda + 10 = 0$$

**Step 3:** Solve quadratic equation
$$\lambda = \frac{7 \pm \sqrt{49-40}}{2} = \frac{7 \pm 3}{2}$$

**Eigenvalues:**
$$\lambda_1 = 5, \quad \lambda_2 = 2$$

---
# Finding Eigenvectors - Derivation

For each eigenvalue $\lambda_i$, solve: $(\mathbf{A} - \lambda_i \mathbf{I})\vec{v}_i = \vec{0}$

**For** $\lambda_1 = 5$:
$$\begin{bmatrix} 4-5 & 1 \\ 2 & 3-5 \end{bmatrix}\begin{bmatrix} v_1 \\ v_2 \end{bmatrix} = \begin{bmatrix} 0 \\ 0 \end{bmatrix}$$

$$\begin{bmatrix} -1 & 1 \\ 2 & -2 \end{bmatrix}\begin{bmatrix} v_1 \\ v_2 \end{bmatrix} = \begin{bmatrix} 0 \\ 0 \end{bmatrix}$$

From first row: $-v_1 + v_2 = 0 \Rightarrow v_2 = v_1$

**Eigenvector:** $\vec{v}_1 = \begin{bmatrix} 1 \\ 1 \end{bmatrix}$ (or any scalar multiple)

---
# Exercise 3.1 - Eigenvalues and Eigenvectors

Given matrix: $\mathbf{A} = \begin{bmatrix} 3 & 1 \\ 1 & 3 \end{bmatrix}$

**a)** Find the characteristic equation $\det(\mathbf{A} - \lambda \mathbf{I}) = 0$

**b)** Calculate both eigenvalues $\lambda_1$ and $\lambda_2$

**c)** Find the eigenvector for $\lambda_1$ (the larger eigenvalue)

---
# Principal Stresses - Physical Meaning

For any stress state $\boldsymbol{\sigma}$, there exist **principal directions** where:
- No shear stresses act!
- Only normal stresses remain

$$\boldsymbol{\sigma}\vec{n}_i = \sigma_i \vec{n}_i$$

- $\sigma_i$ = principal stresses (eigenvalues)
- $\vec{n}_i$ = principal directions (eigenvectors)

**This is an eigenvalue problem!**

---
# Principal Stresses - Derivation

Given stress tensor:
$$\boldsymbol{\sigma} = \begin{bmatrix} 
\sigma_{xx} & \tau_{xy} & \tau_{xz} \\
\tau_{xy} & \sigma_{yy} & \tau_{yz} \\
\tau_{xz} & \tau_{yz} & \sigma_{zz}
\end{bmatrix}$$

**Characteristic equation:**
$$\det(\boldsymbol{\sigma} - \sigma_p \mathbf{I}) = 0$$

This yields cubic equation:
$$\sigma_p^3 - I_1\sigma_p^2 + I_2\sigma_p - I_3 = 0$$

where $I_1, I_2, I_3$ are stress invariants

---
# Stress Invariants

**First invariant** (trace):
$$I_1 = \sigma_{xx} + \sigma_{yy} + \sigma_{zz} = \text{tr}(\boldsymbol{\sigma})$$

**Second invariant:**
$$I_2 = \sigma_{xx}\sigma_{yy} + \sigma_{yy}\sigma_{zz} + \sigma_{zz}\sigma_{xx} - \tau_{xy}^2 - \tau_{yz}^2 - \tau_{xz}^2$$

**Third invariant** (determinant):
$$I_3 = \det(\boldsymbol{\sigma})$$

**Important:** These values don't change with coordinate system rotation!

---
# Principal Stresses - 2D Example

$$\boldsymbol{\sigma} = \begin{bmatrix} 
100 & 50 \\
50 & 60
\end{bmatrix} \text{ MPa}$$

**Characteristic equation:**
$$\det\begin{bmatrix} 
100-\sigma_p & 50 \\
50 & 60-\sigma_p
\end{bmatrix} = 0$$

$$(100-\sigma_p)(60-\sigma_p) - 50^2 = 0$$
$$\sigma_p^2 - 160\sigma_p + 6000 - 2500 = 0$$
$$\sigma_p^2 - 160\sigma_p + 3500 = 0$$

---
# Principal Stresses - 2D Example (continued)

$$\sigma_p = \frac{160 \pm \sqrt{25600 - 14000}}{2} = \frac{160 \pm \sqrt{11600}}{2}$$

$$\sigma_p = \frac{160 \pm 107.7}{2}$$

**Principal stresses:**
$$\sigma_1 = 133.85 \text{ MPa (maximum)}$$
$$\sigma_2 = 26.15 \text{ MPa (minimum)}$$

**Physical meaning:** In principal directions, no shear stress exists!

---
# Exercise 3.2 - Principal Stresses

Given plane stress state (MPa):
$$\boldsymbol{\sigma} = \begin{bmatrix} 
80 & 40 \\
40 & 60
\end{bmatrix}$$

**a)** Calculate the stress invariant $I_1 = \sigma_{xx} + \sigma_{yy}$

**b)** Find the characteristic equation

**c)** Calculate both principal stresses $\sigma_1$ and $\sigma_2$

---
# Von Mises Stress - Derivation

**Motivation:** How to combine stress tensor into single equivalent stress?

**Von Mises stress** (also called equivalent stress):

$$\sigma_v = \sqrt{\frac{1}{2}[(\sigma_1-\sigma_2)^2 + (\sigma_2-\sigma_3)^2 + (\sigma_3-\sigma_1)^2]}$$

In terms of stress components:
$$\sigma_v = \sqrt{\frac{1}{2}[(\sigma_{xx}-\sigma_{yy})^2 + (\sigma_{yy}-\sigma_{zz})^2 + (\sigma_{zz}-\sigma_{xx})^2] + 3(\tau_{xy}^2+\tau_{yz}^2+\tau_{xz}^2)}$$

**Usage:** Material yields when $\sigma_v \geq \sigma_y$ (yield strength)

---
# Von Mises Stress - Physical Meaning

**Interpretation:**
- Distortion energy criterion
- Predicts yielding in ductile materials
- Independent of hydrostatic pressure

**Comparison with other criteria:**
- Maximum principal stress (Rankine): $\sigma_1 \leq \sigma_y$
- Maximum shear stress (Tresca): $\sigma_1 - \sigma_3 \leq \sigma_y$
- Von Mises: best for ductile metals (steel, aluminum)

---
# Von Mises Stress - Example

From previous example: $\sigma_1 = 133.85$ MPa, $\sigma_2 = 26.15$ MPa

For plane stress: $\sigma_3 = 0$

$$\sigma_v = \sqrt{\frac{1}{2}[(133.85-26.15)^2 + (26.15-0)^2 + (0-133.85)^2]}$$

$$= \sqrt{\frac{1}{2}[107.7^2 + 26.15^2 + 133.85^2]}$$

$$= \sqrt{\frac{1}{2}[11599 + 684 + 17916]} = \sqrt{15100}$$

$$\sigma_v = 122.9 \text{ MPa}$$

---
# Exercise 3.3 - Von Mises Stress

Given principal stresses:
- $\sigma_1 = 100$ MPa
- $\sigma_2 = 50$ MPa  
- $\sigma_3 = -20$ MPa

**a)** Calculate the Von Mises stress using the principal stress formula

**b)** If the material yield strength is $\sigma_y = 250$ MPa, what is the safety factor?
(Safety factor = $\frac{\sigma_y}{\sigma_v}$)

**c)** What would the Von Mises stress be if all principal stresses were equal (hydrostatic stress)?

---
# Practical Example - Pressure Vessel

**Thin-walled cylinder** under internal pressure $p$:

**Stress components:**
- Hoop stress: $\sigma_{\theta} = \frac{pr}{t}$
- Axial stress: $\sigma_z = \frac{pr}{2t}$
- Radial stress: $\sigma_r \approx 0$ (thin wall)

**Principal stresses:**
$$\sigma_1 = \frac{pr}{t}, \quad \sigma_2 = \frac{pr}{2t}, \quad \sigma_3 = 0$$

**Von Mises:**
$$\sigma_v = \frac{pr}{t}\sqrt{1 - \frac{1}{2} + \frac{1}{4}} = \frac{pr}{t}\sqrt{\frac{3}{4}} = \frac{\sqrt{3}pr}{2t}$$

---
# Connection: All Concepts Together

**Stress state** → **Stress tensor** $\boldsymbol{\sigma}$
↓
**Eigenvalue problem** → **Principal stresses** $\sigma_1, \sigma_2, \sigma_3$
↓
**Failure criterion** → **Von Mises stress** $\sigma_v$
↓
**Design check** → $\sigma_v \leq \frac{\sigma_y}{SF}$

This is the foundation for fracture and fatigue analysis!

---
<!-- _class: lead -->
# Summary Seminar III

- Eigenvalues: special scaling factors
- Eigenvectors: special directions
- Principal stresses: eigenvalues of stress tensor
- No shear in principal directions
- Von Mises: equivalent stress for yielding
- Stress invariants: coordinate-independent
- Next: Application to fracture mechanics!

---
<!-- _class: lead -->
# Questions?

Prof. Dr.-Ing. Christian Willberg
christian.willberg@h2.de
Office: Building 10, Room 2.09