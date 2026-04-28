---
marp: true
theme: h2
header: 'Seminar – Trusses & Peridynamic Matrices'
footer: ''
title: Peridynamics – Seminar 3
author: Christian Willberg
paginate: false
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
.aufgabe {
    background: #fdf2e9;
    border: 2px solid #e67e22;
    border-radius: 6px;
    padding: 14px 20px;
    margin: 10px 0;
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
.warn {
    background: #fdf2f2;
    border-left: 4px solid #e74c3c;
    padding: 10px 16px;
    margin: 8px 0;
    border-radius: 0 6px 6px 0;
    font-size: 20px;
}
.zwei-spalten {
    display: flex;
    gap: 2rem;
}
.zwei-spalten > div {
    flex: 1;
}
table {
    border-collapse: collapse;
    width: 100%;
    font-size: 19px;
    margin: 10px 0;
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
</style>

## Seminar 3 – Trusses and Structure of Matrices

Prof. Dr.-Ing.  Christian Willberg [![ORCID](../../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)

<div style="position: absolute; top: 200px; left: 850px;"> 
<img src="https://quickchart.io/qr?text=https://cwillberg.github.io/Lectures/&light=0000&size=300&centerImageUrl=https://raw.githubusercontent.com/CWillberg/Lectures/main/assets/QR/h2.png"
     style="height:380px;width:auto;vertical-align:top;background-color:transparent;">
</div>

Kontakt: christian.willberg@h2.de

---

<!--paginate: true-->



# Notation & Setup

## Scalar 1D case (truss)

All quantities are scalars. Norms are shown for later generalization to 2D/3D.

| Symbol | Meaning |
|---|---|
| $i$ | Reference point |
| $j$ | Neighbor point |
| $\xi = x_j - x_i$ | Reference bond vector (undeformed) |
| $\eta = u_j - u_i$ | Relative displacement |
| $\xi + \eta$ | Deformed bond vector |

<div class="hinweis">

In 2D/3D: $\xi$ and $\eta$ become vectors **$\boldsymbol{\xi}$** and **$\boldsymbol{\eta}$** – the scalar norm $|\cdot|$ becomes the Euclidean norm $||\cdot||$.

</div>

---


The stretch $s$ measures the **relative elongation** of the bond:

<div class="eq">

$$s = \frac{||\xi + \eta|| - ||\xi||}{||\xi||} \xrightarrow{\text{1D}} \frac{\eta}{\xi}$$

</div>

Bond force $f_{ij}$

<div class="eq">

$$f_{ij} = c_i \,\omega_{ij}\, s \,\frac{\xi + \eta}{||\xi + \eta||} \xrightarrow{\text{1D scalar}} c_i \,\omega_{ij}\, s$$

</div>

- $c_i$: bond stiffness (micromodulus)
- $\omega_{ij}$: influence function (weight)

<div class="hinweis">

In 2D/3D the bond force becomes a vector: $\mathbf{f}_{ij} = c_i\,\omega_{ij}\,s\,\dfrac{\boldsymbol{\xi}+\boldsymbol{\eta}}{||\boldsymbol{\xi}+\boldsymbol{\eta}||}$

</div>

---


## Point-based formulation

<div class="eq">

$$\rho\,\ddot{u}_i = \frac{1}{2}\sum_j \bigl(f_{ji}\,V_i - f_{ij}\,V_j\bigr) + b_i$$

</div>

<div class="zwei-spalten">

<div>

### Terms
- $\rho$: mass density
- $V_i, V_j$: volumes of points $i$ and $j$
- $b_i$: body force density
- Factor $\frac{1}{2}$: avoids double-counting of bond contributions

</div>

<div>

### Quasi-static limit
For static problems $\ddot{u}_i = 0$:

$$\sum_j \bigl(f_{ji}\,V_i - f_{ij}\,V_j\bigr) = -2b_i$$

This is equivalent to the FEM equilibrium equation $\mathbf{K}\mathbf{u} = \mathbf{F}$.

</div>

</div>

---

## Peridynamic stiffness matrix

<div class="eq">

$$\mathbf{K}\,\mathbf{u} = \mathbf{F}_\text{internal}$$

</div>

$$\mathbf{K} = \begin{bmatrix}
K_{11} & \cdots & K_{1j} & 0 & \cdots & 0\\
\vdots & \ddots & & & & \\
K_{j1} & & K_{jj} & & & \\
0 & & & \ddots & & \\
\vdots & & & & \ddots & \\
0 & \cdots & & & & K_{nn}
\end{bmatrix}$$

**Entries:**

<div class="eq">

$$K_{ij} = -\frac{c}{|\xi_{ij}|}\,\omega_{ij}\,V_j \quad (i \ne j), \qquad K_{ii} = -\sum_{j \ne i} K_{ij}$$

</div>



---

## Assumptions for 1D, 2-node bar

$$\delta = L,\quad n_\text{neighbors} = 1,\quad \omega_{ij} = 1,\quad V = AL$$

**Step 1:** Micromodulus with factor $\frac{1}{2}$:

$$c = \frac{1}{2} \cdot \frac{2E}{AL^2} = \frac{E}{AL^2}$$

**Step 2:** Off-diagonal entry:

$$K_{12} = -\frac{1}{2}\frac{c}{|\xi|}\,V = -\frac{1}{2}\cdot\frac{E}{AL^2 \cdot L}\cdot AL = -\frac{E}{L^2}$$

**Step 3:** Convert force density → forces (multiply by $V = AL$):

$${}^\text{forces}K_{12} = -\frac{E}{L^2} \cdot AL = -\frac{EA}{L}$$

---

<div class="eq">

$$\mathbf{K} = \frac{EA}{L}\begin{bmatrix}1 & -1\\-1 & 1\end{bmatrix} \quad \checkmark \text{ identical to FEM}$$

</div>

- proofs that for $\delta\rightarrow 0$ PD becomes the classical continuum mechanics formulation

---

# Effect of Damage

## Damage via influence function $\omega_{ij}$

Damage in peridynamics is introduced by **setting $\omega_{ij} = 0$** for a broken bond – no other change to the formulation needed.

<div class="zwei-spalten">

<div>

### Intact system ($\omega_{12} = 1$)

$$\mathbf{K} = c\begin{bmatrix}
 1 & -1 & 0 & 0\\
-1 &  2 & -1 & 0\\
 0 & -1 &  2 & -1\\
 0 &  0 & -1 &  1
\end{bmatrix}$$

Matrix is singular (rigid body mode) → one BC needed.

</div>

<div>

### Bond 1–2 broken ($\omega_{12} = 0$)

Row 1 and column 1/2 entries change:
- $K_{12} = K_{21} = 0$
- $K_{11}$ reduced accordingly

→ Point 1 is **disconnected** from the chain → two separate substructures.

</div>

</div>

<div class="hinweis">

No re-meshing, no topology change – damage is purely a **state variable** on the bonds.

</div>

---

## Exercise 1 – Stretch and Bond Force

<div class="aufgabe">

**Given:** A 1D bar with two points $i$ and $j$.
- $x_i = 0\,\text{m}$, $x_j = 1\,\text{m}$ (undeformed)
- After loading: $u_i = 0$, $u_j = 0.02\,\text{m}$
- $c = 200\,\text{GPa}/(1\,\text{m}^2)$, $\omega_{ij} = 1$

**Tasks:**
1. Compute $\xi$, $\eta$, and the stretch $s$.
2. Compute the scalar bond force $f_{ij}$.
3. What does $f_{ij} > 0$ mean physically?
4. How does $f_{ij}$ change if $\omega_{ij} = 0$? What does this represent?

</div>

---



<div class="loesung">

**1. Kinematics:**
$\xi = x_j - x_i = 1\,\text{m}$, $\quad\eta = u_j - u_i = 0.02\,\text{m}$

$$s = \frac{\eta}{\xi} = \frac{0.02}{1} = 0.02 \quad (2\,\%)$$

**2. Bond force:**
$$f_{ij} = c\,\omega_{ij}\,s = 200 \times 10^9 \cdot 1 \cdot 0.02 = 4\times10^9\,\frac{\text{N}}{\text{m}^3}$$

**3. Physical meaning:** $f_{ij} > 0$ → bond is in **tension** (point $j$ pulls point $i$ in the positive direction).

**4. Damage:** $\omega_{ij} = 0$ → $f_{ij} = 0$ → the bond is **broken**, no force is transmitted regardless of stretch.

</div>

---

## Exercise 2 – Stiffness Matrix Assembly

<div class="aufgabe">

**Given:** 4-point 1D chain with uniform spacing $L = 1\,\text{m}$, $E = 1$, $V = 1$, horizon $\delta = 1$ (nearest-neighbor only).

Micromodulus: $c = \dfrac{2E}{\delta^2}$, factor $\frac{1}{2}$ in assembly.

**Tasks:**
1. Compute $c$.
2. Assemble the full $4\times4$ stiffness matrix $\mathbf{K}$.
3. What is $\text{rank}(\mathbf{K})$? Why?
4. How does $\mathbf{K}$ change if bond $1$–$2$ is broken ($\omega_{12}=0$)?

</div>

---


<div class="loesung">

**1.** $c = 2E/\delta^2 = 2$

**2.** Each off-diagonal entry: $K_{i,i\pm1} = -\frac{1}{2}\cdot\frac{c}{L}\cdot V = -1$; diagonal: $K_{ii} = +\sum|K_{ij}|$

$$\mathbf{K} = \begin{bmatrix}
 1 & -1 &  0 &  0\\
-1 &  2 & -1 &  0\\
 0 & -1 &  2 & -1\\
 0 &  0 & -1 &  1
\end{bmatrix}$$

**3.** $\text{rank}(\mathbf{K}) = 3$ → singular. One zero eigenvalue = **rigid body translation** (no BC applied yet).

**4.** Bond 1–2 broken: $K_{12}=K_{21}=0$, $K_{11}=0$. Point 1 has no neighbors → fully disconnected row/column of zeros.

</div>

---

## Exercise 3 – FEM Equivalence

<div class="aufgabe">

**Given:** 1D bar, $E = 210\,\text{GPa}$, $A = 50\,\text{mm}^2$, $L = 0.5\,\text{m}$.

Assumptions: $\delta = L$, $n_\text{neighbors}=1$, $\omega=1$, $V=AL$.

**Tasks:**
1. Compute the PD micromodulus $c$ (with factor $\frac{1}{2}$).
2. Compute the off-diagonal entry $K_{12}$ as force density.
3. Convert to force units and write $\mathbf{K}$.
4. Compare your result to the classical FEM bar stiffness matrix.

</div>

---


<div class="loesung">

**1.** $c = \frac{1}{2}\cdot\frac{2E}{AL^2} = \frac{E}{AL^2} = \frac{210\times10^9}{50\times10^{-6}\cdot0.25} = 1.68\times10^{16}\,\frac{\text{N}}{\text{m}^5}$

**2.** $K_{12} = -\frac{1}{2}\cdot\frac{c}{L}\cdot V = -\frac{1}{2}\cdot\frac{c}{L}\cdot AL = -\frac{E}{L^2} = -\frac{210\times10^9}{0.25} = -840\times10^9\,\frac{\text{N}}{\text{m}^3}$

**3.** Multiply by $V = AL = 50\times10^{-6}\cdot0.5 = 25\times10^{-6}\,\text{m}^3$:

$${}^\text{forces}K_{12} = -840\times10^9 \cdot 25\times10^{-6} = -21\times10^6\,\text{N/m}$$

$$\mathbf{K} = 21\times10^6\begin{bmatrix}1&-1\\-1&1\end{bmatrix}\,\text{N/m}$$

**4.** FEM: $\frac{EA}{L} = \frac{210\times10^9\cdot50\times10^{-6}}{0.5} = 21\times10^6\,\text{N/m}$ ✓ **Identical.**

</div>

---

# PeriLab Setup – Mesh

## Input mesh file (`truss.txt`)

```plaintext
header: x y block_id volume
0 0 1 1
1 0 1 1
2 0 1 1
3 0 1 1
4 0 1 1
```

<div class="zwei-spalten">

<div>

- 5 points along the $x$-axis
- Uniform spacing: $\Delta x = 1$
- All assigned to `block_1`
- Volume = 1 per point

</div>

<div>

<div class="hinweis">

The volume entry must represent the physical volume of the neighborhood: $V = A \cdot L$.
For this 1D example $A = L = 1$ so $V = 1$.

</div>

</div>

</div>

---

## PeriLab Setup – YAML

```yaml
PeriLab:
  Discretization:
    Node Sets:
      Node Set 1: 1        # left end (x=0)
      Node Set 2: 5        # right end (x=4)
    Type: "Text File"
    Input Mesh File: "truss.txt"
  Models:
    Material Models:
      Test:
        Material Model: "Bond-based Elastic"
        Young's Modulus: 7000
        Poisson's Ratio: 0.3
  Blocks:
    block_1:
      Block ID: 1
      Material Model: "Test"
      Density: 2e-9
      Horizon: 2
  Boundary Conditions:
    BC_1:
      Variable: "Displacements"
      Node Set: "Node Set 1"
      Coordinate: "x"
      Value: "100*t"          # ramp displacement
      Type: Dirichlet
    BC_2:
      Variable: "Displacements"
      Node Set: "Node Set 2"
      Coordinate: "x"
      Value: "0.1*t"
      Type: Dirichlet
```

---

# PeriLab Setup – Solver & Output

```yaml
  Solver:
    Material Models: True
    Initial Time: 0.0
    Final Time: 1.0
    Number of Steps: 20
    Static:
      Show solver iteration: true
      Residual tolerance: 1e-7
      Solution tolerance: 1e-8
      Residual scaling: 7000
      m: 550
      Maximum number of iterations: 100
  Outputs:
    Output1:
      Output Filename: "truss"
      Output File Type: Exodus
      Number of Output Steps: 20
      Output Variables:
        Displacements: True
        Number of Neighbors: True
        Forces: True
```



---

## Exercise 4 – PeriLab Interpretation

<div class="aufgabe">

**Given:** The PeriLab YAML above uses $E = 7000$, horizon $\delta = 2$, 5 points with $\Delta x = 1$.

**Tasks:**
1. How many neighbors does an interior point have for $\delta = 2$?
2. How does increasing the horizon from $\delta=1$ to $\delta=2$ change the stiffness matrix structure (bandwidth)?
3. The left BC ramps as $u = 100t$ and the right as $u = 0.1t$. What is the applied displacement difference at $t = 1$?
4. What output variable would you check to verify that the bar is in pure tension (no bending)?

</div>

---

<div class="loesung">

**1. Neighbors for $\delta=2$:** Points within distance 2 → interior points have **4 neighbors** (2 left, 2 right). End points have fewer.

**2. Matrix bandwidth:** With $\delta=1$ only the main diagonal and first off-diagonal are nonzero (bandwidth 1). With $\delta=2$ the second off-diagonal is also populated → **bandwidth 2**. More nonzeros, more connectivity, denser matrix.

**3. Applied displacement at $t=1$:**
$u_\text{left} = 100\cdot1 = 100$, $\quad u_\text{right} = 0.1\cdot1 = 0.1$
$\Delta u = 100 - 0.1 = 99.9$ (units as defined in the mesh)

**4.** Check **`Displacements`** in $x$-direction → should be linear between the two BCs. Also check **`Forces`** → should be uniform along the bar (constant internal force = pure tension). Any variation indicates non-uniform loading.

</div>

