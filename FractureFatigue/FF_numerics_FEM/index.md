---
marp: true
header: 'Fracture & Fatigue - Peridynamics'
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
# Fracture & Fatigue - Peridynamics
Prof. Dr.-Ing. Christian Willberg [![ORCID](../../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)
Hochschule Magdeburg-Stendal

<div style="position: absolute; top: 200px; left: 850px;"> 
<img src="https://quickchart.io/qr?text=https://cwillberg.github.io/Lectures/FractureFatigue/FF_numerics_FEM/&light=0000&size=300&centerImageUrl=https://raw.githubusercontent.com/CWillberg/Lectures/main/assets/QR/h2.png"
     style="height:380px;width:auto;vertical-align:top;background-color:transparent;">
</div>

---



# Part I: FEM Fundamentals

## From Continuum to Discrete System

---

## Strong Form – Governing Equations

**1D elasticity problem:**


$$\frac{d}{dx}\left(EA\frac{du}{dx}\right) + f = 0 \quad \text{in } \Omega = (0, L)$$


**Boundary Conditions:**
- Essential (Dirichlet): $u(0) = 0$
- Natural (Neumann): $EA\frac{du}{dx}\bigg|_{x=L} = F$

**Problem:** Requires second derivatives (C¹ continuity). Finite element discretization relaxes this requirement.

<!-- IMAGE: 1D bar with distributed load and point load -->

---

## Weak Form – Principle of Virtual Work

Multiply strong form by test function $v$, integrate over domain:


$$\int_0^L EA \frac{du}{dx}\frac{dv}{dx}\,dx = \int_0^L f \cdot v\,dx + F \cdot v(L)$$


**Key advantage:** Only first derivatives required → C⁰ continuity sufficient for FEM

**Interpretation:** Virtual work of internal forces = virtual work of external forces

<div class="hinweis">
Weak form is the mathematical foundation of Galerkin FEM
</div>

---

## Discretization – Nodes & Elements

Divide domain $\Omega$ into $n_{el}$ non-overlapping elements:

```
Element 1    Element 2
  u₁           u₂    u₃
  •————•————•————•
  x₁    x₁.₅    x₂    L
```

**Degrees of freedom (DoF):** $\mathbf{u} = [u_1, u_2, u_3]^T$

**Element connectivity:** Defines which nodes belong to each element

<div class="aufgabe">
**Exercise:** A 1D bar of length 2 m is divided into 3 equal elements. How many nodes? How many DoF before applying boundary conditions?
</div>

<div class="loesung">
4 nodes (one at each end, two interior). 4 DoF total; 3 DoF after applying $u(0)=0$.
</div>

---

## Shape Functions & the B-Matrix

**Linear shape functions** for 2-node element $e$ on $[x_1, x_2]$:


$$N_1(x) = \frac{x_2 - x}{x_2 - x_1}, \quad N_2(x) = \frac{x - x_1}{x_2 - x_1}$$


**Displacement approximation:**
$$u^h(x) = N_1(x) u_1 + N_2(x) u_2$$

**Strain-displacement relation (B-matrix):**
$$B = \frac{dN}{dx} = \left[\frac{-1}{L_e}, \frac{1}{L_e}\right]$$

where $L_e = x_2 - x_1$ is the element length.

<div class="hinweis">
The B-matrix maps nodal displacements to strains. It is constant for linear elements.
</div>

---

## Element Stiffness Matrix

Via principle of virtual work:


$$\mathbf{k}^e = \int_0^{L_e} EA \mathbf{B}^T \mathbf{B} \, dx = \frac{EA}{L_e}\begin{bmatrix} 1 & -1 \\ -1 & 1 \end{bmatrix}$$


**Physical interpretation:** $k_{11}$ resists motion of node 1; $k_{12}$ couples nodes 1 and 2.

<div class="zwei-spalten">
<div>
**Example:** $E=210$ GPa, $A=100$ mm², $L_e=1$ m

$$\mathbf{k}^e = \frac{210 \times 10^9 \times 100 \times 10^{-6}}{1} = 2.1 \times 10^7 \text{ N/m}$$
</div>
<div>
<!-- IMAGE: Spring analogy: two springs in series -->
</div>
</div>

---

## Global Assembly

Assemble element stiffness into global system:


$$\mathbf{K} \mathbf{u} = \mathbf{F}$$


**For 3-node, 2-element bar:**

$$\mathbf{K} = \begin{bmatrix} k_1 & -k_1 & 0 \\ -k_1 & k_1 + k_2 & -k_2 \\ 0 & -k_2 & k_2 \end{bmatrix}$$

**Assembly rule:** Add element matrices at overlapping node indices.

<div class="hinweis">
Global system is symmetric, positive definite → solvable
</div>

---

## Apply Boundary Conditions & Solve

**Essential BC:** $u_1 = 0$ (remove row/column 1)

**Modified system:**
$$\begin{bmatrix} k_1 + k_2 & -k_2 \\ -k_2 & k_2 \end{bmatrix} \begin{bmatrix} u_2 \\ u_3 \end{bmatrix} = \begin{bmatrix} F_{ext,2} \\ F \end{bmatrix}$$

**Solve:** $\mathbf{u} = \mathbf{K}^{-1} \mathbf{F}$

<!-- IMAGE: Solution vector visualization -->

---

## Example: 2-Element truss under Tip Load

**Setup:**
- Length $L = 2$ m, $EA = 1000$ N
- Tip load $F = 100$ N
- 2 equal elements, 3 nodes

**Analytical solution:** $u(L) = \frac{FL}{EA} = \frac{100 \times 2}{1000} = 0.2$ m

**FEM solution:**
Each element: $k^e = \frac{1000}{1} = 1000$ N/m

Global assembly (after BC $u_1=0$):
$$\begin{bmatrix} 2000 & -1000 \\ -1000 & 1000 \end{bmatrix} \begin{bmatrix} u_2 \\ u_3 \end{bmatrix} = \begin{bmatrix} 0 \\ 100 \end{bmatrix}$$

**Solution:** $u_2 = 0.1$ m, $u_3 = 0.2$ m ✓ (FEM exact for linear bar)

---

<!-- _class: lead -->

# Part II: Element Types - 2D, 3D, and Shell Elements

---


##  Gauss Quadrature – Numerical Integration

Integrate element stiffness in natural coordinates:
$$\mathbf{k}^e = \int_{-1}^{1} \int_{-1}^{1} \mathbf{B}^T(\xi,\eta) \mathbf{D} \mathbf{B}(\xi,\eta) \det(\mathbf{J}) \, d\xi \, d\eta$$

**Gauss quadrature rule:**
$$\int_{-1}^{1} f(\xi) \, d\xi \approx \sum_{i=1}^{n} w_i f(\xi_i)$$

---

**Common points & weights:**

| n | Points | Weights | Polynomial Exactness |
|---|--------|---------|----------------------|
| 1 | 0 | 2 | $\leq 1$ |
| 2 | $\pm 1/\sqrt{3}$ | 1, 1 | $\leq 3$ |
| 3 | $0, \pm\sqrt{3/5}$ | 8/9, 5/9, 5/9 | $\leq 5$ |

**For 2D Q4:** Typical choice is $2 \times 2$ (4 integration points)

<div class="hinweis">
Underintegration (e.g., 1×1 for Q4) can suppress locking but may cause hourglass modes.
</div>

---

## 3D Elements – Assumptions & Approximation Spaces

**Tetrahedral Element (Tet4 / Tet10)**

Assumptions:
1. Displacement field is polynomial on element domain
2. Nodes are the only DoF carriers
3. Isoparametric mapping via barycentric coordinates
4. Linear (Tet4) or quadratic (Tet10) approximation

**Tet4:** 4 nodes, 12 DoF (3 per node)
$$u(\xi_1, \xi_2, \xi_3) = N_1 u_1 + N_2 u_2 + N_3 u_3 + N_4 u_4$$
where $\xi_i$ are barycentric coordinates, $\sum \xi_i = 1$

**Tet10:** 4 corner nodes + 6 edge nodes, quadratic basis

<!-- IMAGE: Tet4 and Tet10 element with barycentric coordinates -->

---

## Hexahedral Element (Hex8 / Hex20)

Assumptions:
1. Displacement field is **tensor product** of 1D polynomials
2. Structured/semi-structured mesh
3. Isoparametric mapping via reference element $[-1,1]^3$
4. Linear (Hex8) or quadratic (Hex20) approximation

**Hex8:** 8 nodes, 24 DoF
$$u(\xi, \eta, \zeta) = \sum_{i=1}^{8} N_i(\xi, \eta, \zeta) u_i$$

**Tensor Product Construction:**
$$N_i(\xi, \eta, \zeta) = N_a(\xi) \cdot N_b(\eta) \cdot N_c(\zeta)$$

where each factor is a 1D linear Lagrange function.


---

## Degrees of Freedom – Field Equations

**3D elasticity: 3 displacement components**
$$\mathbf{u} = \begin{bmatrix} u(x,y,z) \\ v(x,y,z) \\ w(x,y,z) \end{bmatrix}$$

**FEM approximation on element $e$:**
$$\mathbf{u}^h(\mathbf{x}) = \sum_{i=1}^{n_{nodes}} N_i(\mathbf{x}) \mathbf{u}_i$$

---

**Element DoF vector (Tet4 example):**
$$\mathbf{u}^e = \begin{bmatrix} u_1 \\ v_1 \\ w_1 \\ u_2 \\ v_2 \\ w_2 \\ u_3 \\ v_3 \\ w_3 \\ u_4 \\ v_4 \\ w_4 \end{bmatrix}_{12 \times 1}$$

---

**Strain-displacement (small strain):**
$$\boldsymbol{\varepsilon} = \begin{bmatrix} \partial u/\partial x \\ \partial v/\partial y \\ \partial w/\partial z \\ \partial u/\partial y + \partial v/\partial x \\ \partial v/\partial z + \partial w/\partial y \\ \partial w/\partial x + \partial u/\partial z \end{bmatrix} = \mathbf{B}(\mathbf{x}) \mathbf{u}^e$$

<div class="hinweis">
The B-matrix is computed from shape function derivatives: $B_{ij} = \partial N_j/\partial x_i$
</div>

---

## Tensor Product Shape Functions – 2D Example

**1D reference element:** $\xi \in [-1, 1]$

Linear Lagrange basis:
$$N_1^{(1D)}(\xi) = \frac{1-\xi}{2}, \quad N_2^{(1D)}(\xi) = \frac{1+\xi}{2}$$

**2D bilinear (Q4):** Tensor product in $(\xi, \eta)$ space
$$N_{ij}(\xi, \eta) = N_i^{(1D)}(\xi) \cdot N_j^{(1D)}(\eta)$$

---

**All 4 shape functions:**
$$\begin{align}
N_1 &= \frac{(1-\xi)(1-\eta)}{4} \\
N_2 &= \frac{(1+\xi)(1-\eta)}{4} \\
N_3 &= \frac{(1+\xi)(1+\eta)}{4} \\
N_4 &= \frac{(1-\xi)(1+\eta)}{4}
\end{align}$$

**Verification:** $\sum_{i=1}^4 N_i(\xi, \eta) = 1$ everywhere 

---

## Orthogonal Basis Functions & Multidimensional Assembly

**Why orthogonal bases are useful:**

1. **Decoupling:** Differentiation in each direction is independent
2. **Computational efficiency:** Separable integrals
3. **Error analysis:** Approximation error in each dimension

**2D stiffness assembly (Q4):**
$$\mathbf{k}^e = \int_{-1}^{1} \int_{-1}^{1} \mathbf{B}^T \mathbf{D} \mathbf{B} \, \det(\mathbf{J}) \, d\xi \, d\eta$$

**With Gauss quadrature (separable):**
$$\int_{-1}^{1} \int_{-1}^{1} f(\xi, \eta) \, d\xi \, d\eta \approx \sum_{i=1}^{n_\xi} \sum_{j=1}^{n_\eta} w_i w_j f(\xi_i, \eta_j)$$



---

## Locking Phenomena in 3D

**Shear Locking (Q1, Tet4):**
- Artificial stiffening when Poisson's ratio $\nu \to 0.5$
- Element over-constrains transverse shear
- Solution: Reduced integration or incompatible modes

**Volumetric Locking (incompressibility):**
- Occurs for nearly incompressible materials ($\nu \approx 0.5$)
- Displacement-based FEM is too stiff
- Solution: Mixed formulation (u-p elements)



---

## Shell Elements – Motivation

**Why not use 3D solids for thin structures?**
- Mesh density required in thickness direction
- Computational cost prohibitive
- Bending-dominated response needs fine discretization

**Shell theory assumptions (Kirchhoff–Love):**
1. Straight lines normal to mid-surface remain straight
2. Normal stress in thickness direction is zero
3. Thickness does not change

---

## Shell Kinematics – Director Vector

**Position of a material point:**
$$\mathbf{r}(\xi, \eta, \zeta) = \mathbf{r}_0(\xi, \eta) + \zeta \mathbf{d}(\xi, \eta)$$

where:
- $(\xi, \eta)$ are in-plane coordinates on mid-surface
- $\mathbf{r}_0$ is the mid-surface position
- $\mathbf{d}$ is the **director vector** (unit normal at undeformed state)
- $\zeta \in [-h/2, h/2]$ is the thickness coordinate

**Rotation field:** Related to change in director orientation

<!-- IMAGE: Shell director concept -->

---

## Kirchhoff–Love Hypotheses

**H1:** Straight lines normal to mid-surface remain straight
$$\Rightarrow \text{No transverse shear deformation}$$

**H2:** Normal to mid-surface remains unit length
$$\Rightarrow \text{No thickness change}$$

**H3:** Stress normal to mid-surface is zero
$$\sigma_{33} = 0$$

**Result:** 
- Displacement field: 5 unknowns per node (3 translations + 2 rotations)
- Eliminates thickness variable → thickness is parameter, not DoF

**Cost:** Requires C¹ continuity (continuous first derivatives)

---

## C¹-Continuity Requirement

**Problem:** Standard Lagrange elements are C⁰ (continuous, not differentiable)

**For Kirchhoff shells:** Curvature $\kappa = d^2w/dx^2$ enters strain energy
$$\Rightarrow \text{Requires } w \in C^1$$

**Solutions:**
1. **Hermite elements** (inefficient, non-isoparametric)
2. **Discrete Kirchhoff Approach (DKA)**
3. **Mixed formulation** (Reissner–Mindlin, relaxes C¹)

---

## Discrete Kirchhoff Triangle (DKT)

**Idea:** Enforce Kirchhoff constraint at discrete points (element edges) instead of everywhere

**Construction:**
- Start with 6-node (3 rotational DoF per corner)
- Cubic out-of-plane displacement $w(\xi, \eta)$
- Enforce zero transverse shear at 3 edge midpoints
- Constraint equations reduce 18 DoF → 9 DoF (3 per node)

**Result:** Simple, efficient C⁰ element that behaves like C¹

**DKQ (Discrete Kirchhoff Quadrilateral):** Similar idea for 4-node element

<!-- IMAGE: DKT with constraint points -->

---

## Comparison: Kirchhoff–Love vs. Reissner–Mindlin

<table>
<tr>
<th>Property</th>
<th>Kirchhoff–Love</th>
<th>Reissner–Mindlin</th>
</tr>
<tr>
<td>Transverse shear</td>
<td>Zero (neglected)</td>
<td>Included</td>
</tr>
<tr>
<td>DoF per node</td>
<td>5</td>
<td>5</td>
</tr>
<tr>
<td>Continuity</td>
<td>C¹</td>
<td>C⁰</td>
</tr>
<tr>
<td>Thin shells</td>
<td>Accurate</td>
<td>Shear locking</td>
</tr>
<tr>
<td>Thick shells</td>
<td>Inaccurate</td>
<td>Accurate (with reduced int.)</td>
</tr>
<tr>
<td>Implementation</td>
<td>Complex (C¹)</td>
<td>Simple (C⁰)</td>
</tr>
</table>

---

## Element Selection Guide

<div class="zwei-spalten">
<div>
**Use Kirchhoff–Love (DKT/DKQ):**
- Thin-walled structures
- $t/L < 0.1$
- Bending-dominated
- Smooth deformation

**Libraries:** COMSOL, ANSYS SHELL63/189
</div>
<div>
**Use Reissner–Mindlin:**
- Moderate thickness
- Shear-important regions
- Ease of implementation
- Thick composite laminates

**Libraries:** Most commercial codes
</div>
</div>

**Avoid:** 3D solids for shells unless $t/L > 0.2$

---



## Post-Processing & Error Estimation

**Nodal quantities (direct output):**
- Displacements $\mathbf{u}$
- Rotations (shell elements)

**Element-wise quantities (derived):**
- Strains: $\boldsymbol{\varepsilon} = \mathbf{B} \mathbf{u}^e$
- Stresses: $\boldsymbol{\sigma} = \mathbf{D} \boldsymbol{\varepsilon}$

---

**Error estimation:**
$$\eta = \frac{\|\mathbf{e}\|}{\|\mathbf{u}\|} = \sqrt{\sum_e \eta_e^2}$$

**Remedies:**
- $h$-refinement: smaller elements
- $p$-refinement: higher-order polynomials
- $r$-refinement: relocate nodes

<!-- IMAGE: Contour plot of stress concentration -->

---

## Common Pitfalls

1. **Distorted elements:** Can reduce accuracy; check aspect ratio
2. **Inconsistent units:** Track [N, m, Pa] throughout
3. **Insufficient boundary conditions:** Ensure mesh doesn't rotate as rigid body
4. **Locking:** Use reduced integration or incompatible modes
5. **Singular points:** Model cracks as 1/√r singularity using quarter-point nodes
6. **Material anisotropy:** Verify orientation of fiber directions in CFRP



---

# Questions?

Contact: christian.willberg@h2.de


