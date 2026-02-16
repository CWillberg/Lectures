---
marp: true
header: 'Fracture & Fatigue - Materials Theory Seminar'
theme: h2
paginate: true
math: katex
---
<!-- _class: lead -->
# Materials Theory Seminar
## Fundamentals of Continuum Mechanics
Prof. Dr.-Ing. Christian Willberg
Magdeburg-Stendal University of Applied Sciences

---
# Agenda

1. Hooke's Law 1D
2. Hooke's Law 3D
3. Hooke's Law 2D
   - Plane Stress 
   - Plane Strain 
4. Exercises

---
<!-- _class: lead -->
# 1. Hooke's Law 1D

---
# Hooke's Law 1D - Fundamentals

**Experimental Observation:**
For elastic materials, strain $\varepsilon$ is proportional to stress $\sigma$

**Mathematical Formulation:**
$$\sigma = E \cdot \varepsilon$$

where:
- $\sigma$ = Normal stress [N/mm² = MPa]
- $E$ = Young's modulus [MPa]
- $\varepsilon$ = Strain [-]

---
## Derivation 1D

**Starting Point:** Rod under tensile loading

$$\varepsilon = \frac{\Delta L}{L_0} = \frac{u'(x)}{L_0}$$

**Stress:**
$$\sigma = \frac{F}{A}$$

**Linear elastic relationship:**
$$\sigma = E \cdot \varepsilon$$

**Inverse Form:**
$$\varepsilon = \frac{1}{E} \cdot \sigma = S \cdot \sigma$$

with $S = \frac{1}{E}$ as compliance

---
## Lateral Contraction (Poisson Effect)

Under uniaxial loading, lateral contraction occurs:

$$\varepsilon_t = -\nu \cdot \varepsilon_l$$

where:
- $\nu$ = Poisson's ratio [-]
- $\varepsilon_t$ = Transverse strain
- $\varepsilon_l$ = Longitudinal strain

**Typical Values:**
- Steel: $\nu \approx 0.3$
- Rubber: $\nu \approx 0.5$ (incompressible)
- Cork: $\nu \approx 0$ (no lateral contraction)

---
<!-- _class: lead -->
# 2. Hooke's Law 3D

---
## Stress and Strain Tensors

**Stress Tensor (symmetric):**
$$\boldsymbol{\sigma} = \begin{pmatrix} 
\sigma_{11} & \sigma_{12} & \sigma_{13} \\
\sigma_{12} & \sigma_{22} & \sigma_{23} \\
\sigma_{13} & \sigma_{23} & \sigma_{33}
\end{pmatrix}$$

**Strain Tensor (symmetric):**
$$\boldsymbol{\varepsilon} = \begin{pmatrix} 
\varepsilon_{11} & \varepsilon_{12} & \varepsilon_{13} \\
\varepsilon_{12} & \varepsilon_{22} & \varepsilon_{23} \\
\varepsilon_{13} & \varepsilon_{23} & \varepsilon_{33}
\end{pmatrix}$$

---
## Hooke's Law 3D - Tensor Form

**General Form:**
$$\boldsymbol{\sigma} = \mathbb{C} : \boldsymbol{\varepsilon}$$

with $\mathbb{C}$ as fourth-order elasticity tensor

**Index Notation:**
$$\sigma_{ij} = C_{ijkl} \cdot \varepsilon_{kl}$$

For isotropic materials: only 2 independent constants!
- Young's modulus $E$
- Poisson's ratio $\nu$

---

**Alternative Parametrization:**
- Lamé constants: $\lambda$, $\mu$
- Bulk modulus $K$, Shear modulus $G$

---
# Hooke's Law 3D - Isotropic Case

**Normal Stresses:**
$$\varepsilon_{11} = \frac{1}{E}\left[\sigma_{11} - \nu(\sigma_{22} + \sigma_{33})\right]$$
$$\varepsilon_{22} = \frac{1}{E}\left[\sigma_{22} - \nu(\sigma_{11} + \sigma_{33})\right]$$
$$\varepsilon_{33} = \frac{1}{E}\left[\sigma_{33} - \nu(\sigma_{11} + \sigma_{22})\right]$$

---

**Shear Stresses:**
$$\varepsilon_{12} = \frac{1+\nu}{E}\sigma_{12} = \frac{1}{2G}\sigma_{12}$$
$$\varepsilon_{13} = \frac{1+\nu}{E}\sigma_{13} = \frac{1}{2G}\sigma_{13}$$
$$\varepsilon_{23} = \frac{1+\nu}{E}\sigma_{23} = \frac{1}{2G}\sigma_{23}$$

with shear modulus: $G = \frac{E}{2(1+\nu)}$

---

# Voigt Notation (Engineering Notation)

Compact representation by exploiting symmetry:

$$\begin{Bmatrix} \sigma_{11} \\ \sigma_{22} \\ \sigma_{33} \\ \sigma_{23} \\ \sigma_{13} \\ \sigma_{12} \end{Bmatrix} = 
\begin{bmatrix}
C_{11} & C_{12} & C_{12} & 0 & 0 & 0 \\
C_{12} & C_{11} & C_{12} & 0 & 0 & 0 \\
C_{12} & C_{12} & C_{11} & 0 & 0 & 0 \\
0 & 0 & 0 & C_{44} & 0 & 0 \\
0 & 0 & 0 & 0 & C_{44} & 0 \\
0 & 0 & 0 & 0 & 0 & C_{44}
\end{bmatrix}
\begin{Bmatrix} \varepsilon_{11} \\ \varepsilon_{22} \\ \varepsilon_{33} \\ 2\varepsilon_{23} \\ 2\varepsilon_{13} \\ 2\varepsilon_{12} \end{Bmatrix}$$

with: $C_{11} = \frac{E(1-\nu)}{(1+\nu)(1-2\nu)}$, $C_{12} = \frac{E\nu}{(1+\nu)(1-2\nu)}$, $C_{44} = G = \frac{E}{2(1+\nu)}$

---

<!-- _class: lead -->
# 3. Hooke's Law 2D

---
# 2D Simplifications

**Two important special cases:**

1. **Plane Stress State (PSS)**
   - Thin disks, plates
   - $\sigma_{33} = \sigma_{13} = \sigma_{23} = 0$

2. **Plane Strain State (PES)**
   - Long structures (dams, tunnels)
   - $\varepsilon_{33} = \varepsilon_{13} = \varepsilon_{23} = 0$

---
# Plane Stress 

**Assumptions:**
- $\sigma_{33} = \sigma_{13} = \sigma_{23} = 0$
- $\varepsilon_{33} \neq 0$ (free lateral contraction!)

**Derivation:**
From the 3D law for $\sigma_{33} = 0$:
$$\varepsilon_{33} = \frac{1}{E}\left[0 - \nu(\sigma_{11} + \sigma_{22})\right] = -\frac{\nu}{E}(\sigma_{11} + \sigma_{22})$$

---

**Remaining Equations:**
$$\varepsilon_{11} = \frac{1}{E}[\sigma_{11} - \nu\sigma_{22}]$$
$$\varepsilon_{22} = \frac{1}{E}[\sigma_{22} - \nu\sigma_{11}]$$
$$\varepsilon_{12} = \frac{1+\nu}{E}\sigma_{12}$$

---
# Plane stress elasticity matrix

**Inverse Form (stresses from strains):**

$$\begin{Bmatrix} \sigma_{11} \\ \sigma_{22} \\ \sigma_{12} \end{Bmatrix} = 
\frac{E}{1-\nu^2}
\begin{bmatrix}
1 & \nu & 0 \\
\nu & 1 & 0 \\
0 & 0 & \frac{1-\nu}{2}
\end{bmatrix}
\begin{Bmatrix} \varepsilon_{11} \\ \varepsilon_{22} \\ 2\varepsilon_{12} \end{Bmatrix}$$

**Application:** Sheets, membranes, thin plates under membrane loading

---
# Plane Strain

**Assumptions:**
- $\varepsilon_{33} = \varepsilon_{13} = \varepsilon_{23} = 0$
- $\sigma_{33} \neq 0$ (constraint in z-direction!)

**Derivation:**
From $\varepsilon_{33} = 0$:
$$0 = \frac{1}{E}[\sigma_{33} - \nu(\sigma_{11} + \sigma_{22})]$$
$$\Rightarrow \sigma_{33} = \nu(\sigma_{11} + \sigma_{22})$$

---

**Remaining Equations:**
$$\varepsilon_{11} = \frac{1}{E}[\sigma_{11} - \nu\sigma_{22}] - \frac{\nu}{E}\sigma_{33}$$

After substituting $\sigma_{33}$:
$$\varepsilon_{11} = \frac{1+\nu}{E}[(1-\nu)\sigma_{11} - \nu\sigma_{22}]$$

---
# Plane strain elasticity matrix

**Inverse Form:**

$$\begin{Bmatrix} \sigma_{11} \\ \sigma_{22} \\ \sigma_{12} \end{Bmatrix} = 
\frac{E}{(1+\nu)(1-2\nu)}
\begin{bmatrix}
1-\nu & \nu & 0 \\
\nu & 1-\nu & 0 \\
0 & 0 & \frac{1-2\nu}{2}
\end{bmatrix}
\begin{Bmatrix} \varepsilon_{11} \\ \varepsilon_{22} \\ 2\varepsilon_{12} \end{Bmatrix}$$

**Additionally:**
$$\sigma_{33} = \nu(\sigma_{11} + \sigma_{22})$$

**Application:** Dams, tunnels, thick cylinders under internal pressure

---
# Comparison

| Property | plane strain | plane stress |
|----------|-----|-----|
| Geometry | thin in z-direction | long in z-direction |
| $\sigma_{33}$ | $= 0$ | $\neq 0$ |
| $\varepsilon_{33}$ | $\neq 0$ | $= 0$ |
| Prefactor | $\frac{E}{1-\nu^2}$ | $\frac{E}{(1+\nu)(1-2\nu)}$ |
| Shear modulus | $G = \frac{E}{2(1+\nu)}$ | $G = \frac{E}{2(1+\nu)}$ (same!) |
| Examples | Sheet, plate | Tunnel, dam |

**Important:** For $\nu = 0$, PSS and PES are identical!

---
<!-- _class: lead -->
# Exercises

---
# Exercise 1: 1D Rod

**Given:**
- Steel: $E = 210{,}000$ MPa, $\nu = 0.3$
- Rod length: $L_0 = 1000$ mm
- Cross-section: $A = 100$ mm²
- Tensile force: $F = 20$ kN

**Find:**
a) Stress $\sigma$
b) Strain $\varepsilon$
c) Elongation $\Delta L$
d) Transverse strain $\varepsilon_t$

---
## Solution Exercise 1

a) **Stress:**
$$\sigma = \frac{F}{A} = \frac{20{,}000\text{ N}}{100\text{ mm}^2} = 200\text{ MPa}$$

b) **Strain:**
$$\varepsilon = \frac{\sigma}{E} = \frac{200}{210{,}000} = 9.524 \times 10^{-4} = 0.0009524$$

c) **Elongation:**
$$\Delta L = \varepsilon \cdot L_0 = 0.0009524 \times 1000 = 0.952\text{ mm}$$

d) **Transverse strain:**
$$\varepsilon_t = -\nu \cdot \varepsilon = -0.3 \times 0.0009524 = -2.857 \times 10^{-4}$$

---
## Exercise 2: 3D Stress State

**Given:**
- Aluminum: $E = 70{,}000$ MPa, $\nu = 0.33$
- Stress state:
$$\boldsymbol{\sigma} = \begin{pmatrix} 100 & 20 & 0 \\ 20 & 50 & 0 \\ 0 & 0 & -30 \end{pmatrix}\text{ MPa}$$

**Find:**
a) Strain tensor $\boldsymbol{\varepsilon}$
b) Shear modulus $G$

---
## Solution Exercise 2

a) **Normal strains:**
$$\varepsilon_{11} = \frac{1}{70{,}000}[100 - 0.33(50 - 30)] = \frac{1}{70{,}000}[100 - 6.6] = 1.334 \times 10^{-3}$$

$$\varepsilon_{22} = \frac{1}{70{,}000}[50 - 0.33(100 - 30)] = \frac{1}{70{,}000}[50 - 23.1] = 3.843 \times 10^{-4}$$

$$\varepsilon_{33} = \frac{1}{70{,}000}[-30 - 0.33(100 + 50)] = \frac{1}{70{,}000}[-30 - 49.5] = -1.136 \times 10^{-3}$$

**Shear strain:**
$$\varepsilon_{12} = \frac{1 + 0.33}{70{,}000} \times 20 = 3.8 \times 10^{-4}$$

---
## Solution Exercise 2 (Continued)

**Strain tensor:**
$$\boldsymbol{\varepsilon} = \begin{pmatrix} 
1.334 & 0.38 & 0 \\
0.38 & 0.384 & 0 \\
0 & 0 & -1.136
\end{pmatrix} \times 10^{-3}$$

b) **Shear modulus:**
$$G = \frac{E}{2(1+\nu)} = \frac{70{,}000}{2(1 + 0.33)} = \frac{70{,}000}{2.66} = 26{,}316\text{ MPa}$$

---
## Exercise 3: PSS vs. PES

**Given:**
- Material: $E = 200{,}000$ MPa, $\nu = 0.25$
- Strains: $\varepsilon_{11} = 0.001$, $\varepsilon_{22} = -0.0005$, $\varepsilon_{12} = 0.0002$

**Find:**
a) Stresses for PSS
b) Stresses for PES (incl. $\sigma_{33}$)
c) Out-of-plane strain $\varepsilon_{33}$ for PSS

---
## Solution Exercise 3

a) **PSS:**
$$\begin{Bmatrix} \sigma_{11} \\ \sigma_{22} \\ \sigma_{12} \end{Bmatrix} = 
\frac{200{,}000}{1-0.25^2}
\begin{bmatrix}
1 & 0.25 & 0 \\
0.25 & 1 & 0 \\
0 & 0 & 0.375
\end{bmatrix}
\begin{Bmatrix} 0.001 \\ -0.0005 \\ 0.0004 \end{Bmatrix}$$

$$= 213{,}333 \begin{bmatrix}
1 & 0.25 & 0 \\
0.25 & 1 & 0 \\
0 & 0 & 0.375
\end{bmatrix}
\begin{Bmatrix} 0.001 \\ -0.0005 \\ 0.0004 \end{Bmatrix}$$

$$\sigma_{11} = 213{,}333(0.001 - 0.000125) = 186.67\text{ MPa}$$
$$\sigma_{22} = 213{,}333(-0.0005 + 0.00025) = -53.33\text{ MPa}$$
$$\sigma_{12} = 213{,}333 \times 0.375 \times 0.0004 = 32\text{ MPa}$$

---
## Solution Exercise 3 (Continued)

b) **PES:**
$$\begin{Bmatrix} \sigma_{11} \\ \sigma_{22} \\ \sigma_{12} \end{Bmatrix} = 
\frac{200{,}000}{(1+0.25)(1-2 \times 0.25)}
\begin{bmatrix}
0.75 & 0.25 & 0 \\
0.25 & 0.75 & 0 \\
0 & 0 & 0.25
\end{bmatrix}
\begin{Bmatrix} 0.001 \\ -0.0005 \\ 0.0004 \end{Bmatrix}$$

$$= 320{,}000 \begin{bmatrix}
0.75 & 0.25 & 0 \\
0.25 & 0.75 & 0 \\
0 & 0 & 0.25
\end{bmatrix}
\begin{Bmatrix} 0.001 \\ -0.0005 \\ 0.0004 \end{Bmatrix}$$

$$\sigma_{11} = 320{,}000(0.00075 - 0.000125) = 200\text{ MPa}$$
$$\sigma_{22} = 320{,}000(-0.000375 + 0.00025) = -40\text{ MPa}$$
$$\sigma_{12} = 320{,}000 \times 0.25 \times 0.0004 = 32\text{ MPa}$$

$$\sigma_{33} = 0.25(200 - 40) = 40\text{ MPa}$$

---
## Solution Exercise 3 (Continued)

c) **Out-of-plane strain for PSS:**
$$\varepsilon_{33} = -\frac{\nu}{E}(\sigma_{11} + \sigma_{22})$$
$$= -\frac{0.25}{200{,}000}(186.67 - 53.33)$$
$$= -\frac{0.25}{200{,}000} \times 133.34$$
$$= -1.667 \times 10^{-4}$$

**Interpretation:**
- For PSS: free lateral contractions → $\varepsilon_{33} \neq 0$
- For PES: constrained lateral strain → $\sigma_{33} \neq 0$

---
## Exercise 4: Practical Problem

**Given:**
A rectangular aluminum plate (PSS):
- Dimensions: $200 \times 100 \times 2$ mm³
- Material: $E = 70{,}000$ MPa, $\nu = 0.33$
- Loading: Tensile force in x-direction $F_x = 14$ kN

**Find:**
a) Stress $\sigma_{11}$
b) Strain $\varepsilon_{11}$
c) Length change in x-direction
d) Width after loading
e) Thickness after loading

---
## Solution Exercise 4

a) **Stress:**
$$\sigma_{11} = \frac{F_x}{A} = \frac{14{,}000}{100 \times 2} = 70\text{ MPa}$$
$$\sigma_{22} = 0, \quad \sigma_{12} = 0 \quad \text{(uniaxial loading)}$$

b) **Strain:**
$$\varepsilon_{11} = \frac{1}{E}[\sigma_{11} - \nu \sigma_{22}] = \frac{70}{70{,}000} = 0.001 = 0.1\%$$

c) **Length change:**
$$\Delta L_x = \varepsilon_{11} \times L_x = 0.001 \times 200 = 0.2\text{ mm}$$

---
# Solution Exercise 4 (Continued)

d) **Transverse strain (y-direction):**
$$\varepsilon_{22} = \frac{1}{E}[\sigma_{22} - \nu \sigma_{11}] = \frac{1}{70{,}000}[0 - 0.33 \times 70] = -3.3 \times 10^{-4}$$

$$\Delta L_y = \varepsilon_{22} \times L_y = -3.3 \times 10^{-4} \times 100 = -0.033\text{ mm}$$

**New width:** $100 - 0.033 = 99.967$ mm

e) **Transverse strain (z-direction):**
$$\varepsilon_{33} = -\frac{\nu}{E}(\sigma_{11} + \sigma_{22}) = -\frac{0.33}{70{,}000} \times 70 = -3.3 \times 10^{-4}$$

$$\Delta t = \varepsilon_{33} \times t = -3.3 \times 10^{-4} \times 2 = -0.00066\text{ mm}$$

**New thickness:** $2 - 0.00066 \approx 1.999$ mm

---
# Summary

**1D:**
$$\sigma = E \cdot \varepsilon, \quad \varepsilon_t = -\nu \cdot \varepsilon_l$$

**3D (isotropic):**
$$\varepsilon_{ij} = \frac{1+\nu}{E}\sigma_{ij} - \frac{\nu}{E}\sigma_{kk}\delta_{ij}$$

**PSS:** Thin structures
$$\sigma_{33} = 0, \quad \varepsilon_{33} = -\frac{\nu}{E}(\sigma_{11} + \sigma_{22})$$

**PES:** Long structures
$$\varepsilon_{33} = 0, \quad \sigma_{33} = \nu(\sigma_{11} + \sigma_{22})$$

---
# Thank You for Your Attention!

## Literature Recommendations
1. **Altenbach, H. et al.** - "Kontinuumsmechanik" (2015)
2. **Gross, D. et al.** - "Technische Mechanik 2: Elastostatik" (2019)
3. **Haupt, P.** - "Continuum Mechanics and Theory of Materials" (2002)

## Questions?

---
# Additional Information: Material Parameters

| Material | E [GPa] | ν [-] | G [GPa] |
|----------|---------|-------|---------|
| Steel | 210 | 0.30 | 81 |
| Aluminum | 70 | 0.33 | 26 |
| Titanium | 110 | 0.34 | 41 |
| Copper | 120 | 0.34 | 45 |
| Concrete | 30 | 0.20 | 12.5 |
| Glass | 70 | 0.23 | 28 |