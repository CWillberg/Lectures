---
marp: true
header: 'Fracture & Fatigue - FEM'
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
.aufgabe {
    border: 2px solid #e67e22;
    background: #fdf2e9;
    padding: 10px 16px;
    border-radius: 6px;
    margin: 8px 0;
}
.loesung {
    border-left: 5px solid #27ae60;
    background: #eafaf1;
    padding: 10px 16px;
    margin: 8px 0;
}
.eq {
    border: 1px solid #c39bd3;
    background: #f4ecf7;
    padding: 10px 16px;
    border-radius: 4px;
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
.zwei-spalten > * {
    flex: 1;
}
table th { background: #1a5276; color: white; }
table tr:nth-child(even) { background: #d6eaf8; }
h1 { font-size: 34px; color: #1a5276; }
h2 { font-size: 24px; }
h3 { font-size: 20px; }
</style>

<!-- _class: lead -->
# Fracture & Fatigue - Finite Element Method
Prof. Dr.-Ing. Christian Willberg [![ORCID](../../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)
Hochschule Magdeburg-Stendal

<div style="position: absolute; top: 200px; left: 850px;"> 
<img src="https://quickchart.io/qr?text=https://cwillberg.github.io/Lectures/FractureFatigue/FF_numerics_FEM/&light=0000&size=300&centerImageUrl=https://raw.githubusercontent.com/CWillberg/Lectures/main/assets/QR/h2.png"
     style="height:380px;width:auto;vertical-align:top;background-color:transparent;">
</div>

---

## Overview

- No analytical solution for complex structures
- Discretize complex geometry into finite subdomains → **elements**
- Approximate the unknown field (e.g. displacement) within each element
- Assemble a global system of equations → solve

**Key idea:** Replace a continuous problem by a finite number of unknowns at discrete **nodes**

<div class="hinweis">

FEM is the standard tool in structural mechanics, heat transfer, electromagnetics, and fracture analysis.

</div>

---

## The Bar Problem – Setup

<div class="zwei-spalten">
<div>

**Given:** Elastic bar of length $L$, cross-section $A$, Young's modulus $E$

**Load:** Distributed body force $b(x)$, point force $F$ at tip

**Governing equation (strong form):**

$$\frac{d}{dx}\left(EA\frac{du}{dx}\right) + b = 0$$

**Boundary conditions:**
- $u(0) = 0$ (fixed end)
- $EA\,u'(L) = F$ (Neumann BC)

</div>
<div>

```
  u=0                    F →
  |||----[===Bar===]----→
  x=0                  x=L
```

</div>
</div>

---

## Step 1 – Discretization

Divide the bar into $n$ elements of length $l_e = L/n$.

Each element has **2 nodes** with nodal displacements $u_1^e$, $u_2^e$.

```
 Node 1       Node 2       Node 3       Node 4
   |----[e1]-----|----[e2]-----|----[e3]-----|
  x=0                                      x=L
```

**Global DOFs:** $n+1$ nodal displacements $\mathbf{u} = [u_1, u_2, \ldots, u_{n+1}]^T$

<div class="hinweis">

For a bar: 1 DOF per node (axial displacement). For 3D solid elements: 3 DOFs per node.

</div>

---

## Step 2 – Shape Functions (Element Level)

Within element $e$ (local coordinate $\xi \in [0,1]$):

$$u^e(\xi) = N_1(\xi)\, u_1^e + N_2(\xi)\, u_2^e$$

**Linear shape functions:**

$$N_1(\xi) = 1 - \xi, \qquad N_2(\xi) = \xi$$

<div class="eq">

$$u^e(\xi) = \mathbf{N}(\xi)\,\mathbf{u}^e, \qquad \mathbf{N} = [1-\xi,\; \xi]$$

</div>

**Strain field:**
$$\varepsilon^e = \frac{du}{dx} = \frac{1}{l_e}\frac{du}{d\xi} = \frac{1}{l_e}[-1,\; 1]\,\mathbf{u}^e = \mathbf{B}\,\mathbf{u}^e$$

---

## Step 3 – Element Stiffness Matrix

**Principle of virtual work** (weak form) for one element:

$$\int_0^{l_e} EA\, \delta\varepsilon\, \varepsilon\; dx = \int_0^{l_e} \delta u\, b\; dx + \text{boundary terms}$$

Substituting $\varepsilon = \mathbf{B}\mathbf{u}^e$:

<div class="eq">

$$\mathbf{k}^e = \int_0^{l_e} EA\, \mathbf{B}^T \mathbf{B}\; dx = \frac{EA}{l_e}\begin{bmatrix} 1 & -1 \\ -1 & 1 \end{bmatrix}$$

</div>

**Element force vector** (uniform body force $b$):

$$\mathbf{f}^e = \frac{b\, l_e}{2}\begin{bmatrix}1\\1\end{bmatrix}$$

---

## Step 4 – Assembly

Each element stiffness matrix $\mathbf{k}^e$ is added to the **global stiffness matrix** $\mathbf{K}$ via the connectivity of shared nodes.

**Example: 2 elements (3 nodes), $k = EA/l_e$**

$$\mathbf{K} = \begin{bmatrix} k & -k & 0 \\ -k & 2k & -k \\ 0 & -k & k \end{bmatrix}$$

<div class="hinweis">

Node 2 is shared by element 1 and element 2 → contributions are **added** at position $(2,2)$.

</div>

$$\mathbf{K}\,\mathbf{u} = \mathbf{f}$$

---

## Step 5 – Boundary Conditions & Solution

**Apply Dirichlet BC:** $u_1 = 0$ → remove row/column 1 (penalty or elimination)

**Apply Neumann BC:** $F$ at node 3 → add to force vector $\mathbf{f}_3 = F$

**Reduced system** (2 elements, $b=0$, tip force $F$):

$$\frac{EA}{l_e}\begin{bmatrix} 2 & -1 \\ -1 & 1 \end{bmatrix} \begin{bmatrix} u_2 \\ u_3 \end{bmatrix} = \begin{bmatrix} 0 \\ F \end{bmatrix}$$

**Solution:**

$$u_2 = \frac{F\,l_e}{EA}, \qquad u_3 = \frac{2\,F\,l_e}{EA} = \frac{F\,L}{EA}$$

<div class="loesung">

Exact analytical result: $u(L) = \frac{FL}{EA}$ ✓ — linear elements are exact for constant strain!

</div>

---

## Step 6 – Post-processing

From nodal displacements → recover **strain** and **stress** per element:

$$\varepsilon^e = \mathbf{B}\,\mathbf{u}^e = \frac{u_2^e - u_1^e}{l_e}, \qquad \sigma^e = E\,\varepsilon^e$$

<div class="zwei-spalten">
<div>

| Node | $u$ (exact) | $u$ (FEM, $n=2$) |
|------|------------|-----------------|
| 1    | 0          | 0               |
| 2    | $FL/2EA$   | $FL/2EA$        |
| 3    | $FL/EA$    | $FL/EA$         |

</div>
<div>

<div class="hinweis">

For non-uniform loads or material distributions, more elements are needed to capture the correct solution.

**Convergence:** Refine mesh → FEM solution approaches exact solution.

</div>

</div>
</div>

---

## Summary – FEM Workflow

| Step | Action |
|------|--------|
| 1 | **Discretize** geometry into elements |
| 2 | **Interpolate** field with shape functions |
| 3 | **Compute** element stiffness $\mathbf{k}^e$ via weak form |
| 4 | **Assemble** global system $\mathbf{K}\mathbf{u}=\mathbf{f}$ |
| 5 | **Apply** boundary conditions & **solve** |
| 6 | **Post-process**: strain, stress, damage |

<div class="hinweis">

In fracture mechanics, FEM provides $K_I$, $G$, and $J$-integral via special elements or contour integration — building on exactly this workflow.

</div>

---

<!-- _class: lead -->
# FEM Element Types

---

## FEM Element Types – Overview

<div class="zwei-spalten">
<div>

**Dimensionality determines element choice:**

- **1D** – bars, beams, trusses
- **2D** – plane stress / plane strain, axisymmetric
- **3D** – full volumetric analysis
- **Shell / Plate** – thin-walled structures

Each type approximates geometry and the unknown field differently — choosing the wrong type costs accuracy or computation time.

</div>
<div>

<!-- IMAGE: Übersicht-Schaubild mit 1D/2D/3D/Shell-Elementen nebeneinander, z.B. aus Fish & Belytschko Kap. 3 oder Wikipedia "Finite element method" -->

</div>
</div>

---

## 2D Elements – Plane Problems

**Valid when one dimension is negligible or by symmetry:**

- **Plane stress:** thin plate, $\sigma_{zz} = \sigma_{xz} = \sigma_{yz} = 0$
- **Plane strain:** long body, $\varepsilon_{zz} = \varepsilon_{xz} = \varepsilon_{yz} = 0$
- **Axisymmetric:** bodies of revolution

**DOFs per node:** 2 translations $(u_x, u_y)$

<div class="zwei-spalten">
<div>

<!-- IMAGE: Schematik plane stress (dünne Scheibe) vs. plane strain (langer Zylinder mit Querschnitt), z.B. selbst gezeichnet oder Bathe S. 148 -->

</div>
<div>

<!-- IMAGE: Beispielnetz einer Scheibe mit gemischten Dreieck/Viereck-Elementen (GMSH oder ANSYS Screenshot) -->

</div>
</div>

---

## 2D Elements – Types

<div class="zwei-spalten">
<div>

### Triangular elements
| Element | Nodes | Order |
|---------|-------|-------|
| CST (T3) | 3 | linear |
| LST (T6) | 6 | quadratic |

### Quadrilateral elements
| Element | Nodes | Order |
|---------|-------|-------|
| Q4      | 4 | linear (bilinear) |
| Q8      | 8 | serendipity |
| Q9      | 9 | Lagrange |

</div>
<div>

<!-- IMAGE: Schematische Darstellung T3, T6, Q4, Q8 mit nummerierten Knoten – z.B. aus Wikipedia "Types of finite elements" (CC-Lizenz) oder Fish & Belytschko Fig. 8.1 -->

</div>
</div>

<div class="hinweis">

**Rule of thumb:** Quadrilateral elements (Q4, Q8) are preferred over triangles — better accuracy per DOF. Triangles are useful for meshing complex geometries.

</div>

---

## 2D Elements – Shape Functions Q4

Bilinear interpolation in natural coordinates $(\xi, \eta) \in [-1,1]^2$:

<div class="eq">

$$u(\xi,\eta) = \sum_{i=1}^{4} N_i(\xi,\eta)\, u_i, \qquad N_i = \frac{1}{4}(1+\xi_i\xi)(1+\eta_i\eta)$$

</div>

**Strain–displacement:** $\boldsymbol{\varepsilon} = \mathbf{B}\,\mathbf{u}^e$, where $\mathbf{B}$ depends on the Jacobian $\mathbf{J} = \partial\mathbf{x}/\partial\boldsymbol{\xi}$

**Element stiffness:**

$$\mathbf{k}^e = \int_{-1}^{1}\int_{-1}^{1} \mathbf{B}^T \mathbf{C}\, \mathbf{B}\; \det\mathbf{J}\; d\xi\, d\eta \approx \sum_{g} w_g\, \mathbf{B}^T\mathbf{C}\mathbf{B}\,\det\mathbf{J}\Big|_{\xi_g}$$

Evaluated via **Gauss quadrature** (typically $2\times 2$ for Q4).

---

## 3D Elements – Types

**DOFs per node:** 3 translations $(u_x, u_y, u_z)$

<div class="zwei-spalten">
<div>

### Tetrahedral
| Element | Nodes | Order |
|---------|-------|-------|
| Tet4    | 4  | linear |
| Tet10   | 10 | quadratic |

- Easy automatic meshing
- Tet4: constant strain → stiff, inaccurate
- Tet10: strongly preferred

### Hexahedral
| Element | Nodes | Order |
|---------|-------|-------|
| Hex8    | 8  | trilinear |
| Hex20   | 20 | serendipity |

- More accurate per DOF
- Harder to mesh complex geometry

</div>
<div>

<!-- IMAGE: Tet4, Tet10, Hex8, Hex20 nebeneinander mit Knotenpunkten beschriftet – z.B. aus Wikipedia "Finite element method" oder Zienkiewicz Vol.1 Fig. 7.1 -->

</div>
</div>

---

## 3D Elements – Practical Considerations

<div class="zwei-spalten">
<div>

<!-- IMAGE: Vergleich Tet10- vs. Hex8-Netz am gleichen Bauteil (z.B. Bolzen oder Zugprobe), aus ANSYS/Abaqus Doku oder FEM-Lehrbuch -->

</div>
<div>

**Locking phenomena:**

- **Shear locking** (Hex8, bending-dominated) → reduced integration or enhanced strains (EAS)
- **Volumetric locking** (nearly incompressible material) → mixed $u$-$p$ formulation

**Integration:**
- Full integration: $2\times2\times2$ for Hex8
- Reduced integration: $1\times1\times1$ → hourglass control needed

<div class="hinweis">

In fracture mechanics: singular elements (quarter-point Hex20/Tet10) reproduce the $1/\sqrt{r}$ stress singularity at the crack tip.

</div>

</div>
</div>

---

## Shell Elements – Motivation

Thin-walled structures: $t \ll L$ (aircraft skin, pressure vessels, pipelines)

**Full 3D solid mesh:** very fine through thickness → millions of DOFs

**Shell element:** represent the structure by its **midsurface** + thickness $t$

<div class="zwei-spalten">
<div>

<!-- IMAGE: Links: 3D-Solid-Netz einer Schalenwand (viele Schichten), rechts: äquivalentes Schalen-Netz (eine Elementschicht) – Vergleich aus ANSYS/Abaqus oder Bathe "Finite Element Procedures" -->

</div>
<div>

**DOFs per node:** 5 or 6
$$[u_x,\; u_y,\; u_z,\; \theta_x,\; \theta_y,\; (\theta_z)]$$

3 translations + 2 (or 3) rotations

**Thickness enters** as a parameter, not through mesh refinement.

</div>
</div>

---

## Shell Elements – Kinematics

A point at distance $\zeta$ from the midsurface ($\zeta \in [-t/2, t/2]$):

<div class="eq">

$$\mathbf{x}(\xi,\eta,\zeta) = \mathbf{x}_0(\xi,\eta) + \zeta\, \mathbf{a}_3(\xi,\eta)$$

</div>

where $\mathbf{x}_0$ is the midsurface position and $\mathbf{a}_3$ is the **director vector** (unit normal to midsurface).

**Displacement field:**

$$\mathbf{u}(\xi,\eta,\zeta) = \mathbf{u}_0(\xi,\eta) + \zeta\, \boldsymbol{\omega}(\xi,\eta) \times \mathbf{a}_3$$

where $\boldsymbol{\omega}$ contains the rotational DOFs $(\theta_x, \theta_y)$.

<!-- IMAGE: Schematik Schalengeometrie: Mittelfläche, Dicke t, Normalenvektor a₃, Punkt P bei Abstand ζ – z.B. aus Bathe "Finite Element Procedures" Fig. 5.30 oder Reddy "Theory of Plates and Shells" -->

---

## Kirchhoff–Love Shell Theory

**Three fundamental hypotheses** (analogous to Euler–Bernoulli beam):

<div class="zwei-spalten">
<div>

**H1 – Straight normals remain straight**
Lines normal to the midsurface remain straight after deformation.

**H2 – No thickness change**
$$\varepsilon_{zz} = 0$$

**H3 – Normals remain normal (no transverse shear)**
$$\gamma_{xz} = \gamma_{yz} = 0$$

</div>
<div>

<!-- IMAGE: Vergleich undeformiert/deformiert: Kirchhoff (Normale bleibt senkrecht zur Mittelfläche) vs. Reissner-Mindlin (Normale kippt, Scherung γ≠0) – klassische Lehrbuch-Skizze, z.B. Reddy Fig. 3.1 oder Altenbach "Platten" -->

</div>
</div>

---

## Kirchhoff – Stress Resultants

From H2 ($\varepsilon_{zz}=0$) and H3 ($\gamma_{xz}=\gamma_{yz}=0$) follows:

**Membrane strains** (midsurface):
$$\boldsymbol{\varepsilon}_m = \begin{bmatrix}\varepsilon_{xx}^0\\\varepsilon_{yy}^0\\\gamma_{xy}^0\end{bmatrix}$$

**Curvatures** (bending contribution):
$$\boldsymbol{\kappa} = -\begin{bmatrix}w_{,xx}\\w_{,yy}\\2w_{,xy}\end{bmatrix}$$

---

**Total strain** at distance $\zeta$:
<div class="eq">

$$\boldsymbol{\varepsilon}(\zeta) = \boldsymbol{\varepsilon}_m + \zeta\,\boldsymbol{\kappa}$$

</div>

No transverse shear terms — shear forces $Q_x, Q_y$ are **statically determined** from equilibrium, not from constitutive law.

---

## Kirchhoff – Consequence for FEM

H3 requires $\gamma_{xz} = \gamma_{yz} = 0$, i.e.:

<div class="eq">

$$\theta_x = -w_{,y}, \qquad \theta_y = w_{,x}$$

</div>

Rotations are **not independent DOFs** — they are determined by the transverse displacement $w$.

<div class="hinweis">

**Implication for shape functions:** $C^1$-continuity of $w$ is required across element boundaries (both $w$ and its first derivatives must be continuous).

</div>

<div class="zwei-spalten">
<div>

**$C^1$-conforming elements** (difficult):
- BFS plate element (Bogner–Fox–Schmit)
- Hermite triangle (HCT)

</div>
<div>

**Non-conforming / engineering approach:**
- Enforce H3 at discrete points only
- Widely used: **DKT** (Discrete Kirchhoff Triangle), **DKQ**

</div>
</div>

<!-- IMAGE: Knotenvariablen eines DKT-Elements: w, θx, θy an 3 Ecken, Punkte auf Kanten wo γ=0 erzwungen wird – z.B. aus Batoz 1980 oder Belytschko "Nonlinear FEM" Fig. 9.12 -->

---

## Kirchhoff vs. Reissner–Mindlin

| | Kirchhoff–Love | Reissner–Mindlin |
|---|---|---|
| Transverse shear | $\gamma = 0$ (neglected) | $\gamma \neq 0$ (included) |
| Rotations | $\theta = \nabla w$ (slave) | Independent DOFs |
| Continuity | $C^1$ required | $C^0$ sufficient |
| Validity | $t/L \ll 1$ (thin) | Moderate thickness |
| FEM complexity | High ($C^1$) | Lower ($C^0$) |
| Locking risk | — | Shear locking (thin limit) → MITC |

<div class="hinweis">

In practice: Reissner–Mindlin elements (e.g. **MITC4**, **S4R** in Abaqus) are preferred — $C^0$ is sufficient and shear locking is cured by Mixed Interpolation of Tensorial Components.

</div>

---

## When to Use Which Element?

| Structure | Recommended element |
|-----------|-------------------|
| Thin plate / shell ($t/L < 1/20$) | Shell (DKT, MITC4, S4R) |
| Moderately thick shell | Reissner–Mindlin shell |
| Solid with stress gradients | Hex20 or Tet10 |
| Simple solid, coarse mesh | Hex8 (reduced integration) |
| Complex geometry, auto-mesh | Tet10 |
| Plane stress / strain | Q8 preferred over Q4 |
| Crack tip region | Quarter-point elements |

<div class="loesung">

**Key rule:** Match the element kinematics to the physical behaviour. A thin shell modelled with Tet4 solids → shear/volumetric locking, wrong results — even with a fine mesh.

</div>