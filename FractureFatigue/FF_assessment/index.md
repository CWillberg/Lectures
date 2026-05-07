---
marp: true
theme: h2
paginate: true
header: "Fracture & Fatigue — Classical Failure Hypotheses"
math: katex
---

# Classical Failure Hypotheses


**Fracture & Fatigue**
Hochschule Magdeburg-Stendal

---

## Overview

- Basic concepts of failure and yield criteria
- Principal stress hypothesis (Rankine)
- Principal strain hypothesis (Saint-Venant)
- Strain energy density hypothesis (Beltrami)
- Coulomb–Mohr hypothesis
- Drucker–Prager hypothesis
- Johnson–Cook criterion
- Deformation behavior at failure

---

## 2.1 Basic Concepts

**Failure hypotheses** predict the conditions under which a material fails.

Starting point: experiments under simple, well-defined loading states.

Two fundamental material responses (see Fig. 2.1):

- **Ductile behavior**: plastic deformations occur after the yield limit is exceeded; fracture only after large inelastic strains
- **Brittle behavior**: no significant inelastic deformation before fracture

> **Fig. 2.1** — Stress–strain curves: (a) ductile, (b) brittle

---

## 2.1 Basic Concepts — Failure Condition

The failure condition is expressed as a surface in stress or strain space:

$$F(\sigma_{ij}) = 0 \quad \text{or} \quad G(\varepsilon_{ij}) = 0 \tag{2.1}$$

- A stress state on $F = 0$ characterizes failure by yielding or fracture
- Assumes failure is **independent of deformation history**
- Valid for: onset of plastic flow (ductile) or brittle fracture
- Requires the material to behave as a **continuum without macroscopic defects**

> ⚠️ Ductile vs. brittle behavior is **not a pure material property** — the stress state has a significant influence!

---

## 2.2.1 Principal Stress Hypothesis (Rankine)

**Authors:** W.J.M. Rankine (1820–1872), G. Lamé (1795–1870), C.L. Navier (1785–1836)

Failure occurs when the **largest principal stress** reaches $\sigma_z$ (tensile strength) or the **smallest** reaches $-\sigma_d$ (compressive strength):

$$\sigma_1, \sigma_2, \sigma_3 = \begin{cases} \sigma_z \\ -\sigma_d \end{cases} \tag{2.2}$$

- Failure surface in principal stress space: **cube** surface (Fig. 2.2a)
- For plane stress ($\sigma_3 = 0$): **square** failure curve (Fig. 2.2b)

> **Fig. 2.2** — Principal stress hypothesis: (a) 3D failure surface, (b) plane stress failure curve

---

## 2.2.1 Principal Stress Hypothesis — Assessment

Physical interpretation: **decohesion** of the cut plane perpendicular to the largest principal stress

**Limitations:**
- Neglects the influence of the other two principal stresses
- Only applicable in restricted cases
- Primarily intended for **brittle failure**

---

## 2.2.2 Principal Strain Hypothesis (Saint-Venant)

**Authors:** De Saint-Venant (1797–1886), C. Bach (1889)

Failure when the **largest principal strain** reaches a critical value $\varepsilon_z$.

Assuming linear elastic behavior and introducing $\sigma_z = E\varepsilon_z$:

$$\sigma_1 - \nu(\sigma_2 + \sigma_3) = \sigma_z$$
$$\sigma_2 - \nu(\sigma_3 + \sigma_1) = \sigma_z \tag{2.3}$$
$$\sigma_3 - \nu(\sigma_1 + \sigma_2) = \sigma_z$$

- Failure surface: **three-faced pyramid** around the hydrostatic axis (Fig. 2.3a)
- Vertex at $\sigma_1 = \sigma_2 = \sigma_3 = \sigma_z/(1-2\nu)$

> **Fig. 2.3** — Principal strain hypothesis: (a) 3D failure surface, (b) plane stress failure curve

---

## 2.2.2 Principal Strain Hypothesis — Assessment

Under uniaxial compression, the hypothesis predicts failure at:

$$\sigma_d = \frac{\sigma_z}{\nu}$$

> ⚠️ For most materials, this **contradicts experimental evidence** — the hypothesis is rarely used in practice.

---

## 2.2.3 Strain Energy Density Hypothesis (Beltrami)

**Author:** E. Beltrami (1835–1900)

Failure when the strain energy density $U$ reaches a critical value $U_c$:

$$U = U_c, \quad U_c = \frac{\sigma_c^2}{2E}$$

In terms of principal stresses:

$$\underbrace{(1+\nu)\left[(\sigma_1-\sigma_2)^2+(\sigma_2-\sigma_3)^2+(\sigma_3-\sigma_1)^2\right]}_{\text{distortional part}} + \underbrace{(1-2\nu)(\sigma_1+\sigma_2+\sigma_3)^2}_{\text{volumetric part}} = 3\sigma_c^2 \tag{2.4}$$

- Failure surface: **ellipsoid of revolution** around the hydrostatic axis

---

## 2.2.3 Strain Energy Density Hypothesis — Assessment

> ⚠️ Predicts failure under sufficiently large **hydrostatic pressure** — contradicts experiments!

**Connection to von Mises:**
Removing the volumetric part $U_V$ (incompressible material) recovers the **von Mises yield condition**.

*Note:* In a modified form, this hypothesis has been reintroduced as a crack propagation criterion (S-criterion, Section 4.9).

---

## 2.2.4 Coulomb–Mohr Hypothesis

**Authors:** C.A. Coulomb (1736–1806), O. Mohr (1835–1918)

Describes failure by **sliding** in geological and granular materials (sand, rock, soil).

**Physical motivation:** Coulomb friction law applied to stresses — sliding occurs when:

$$|\tau| = -\sigma \tan\rho + c \tag{2.5}$$

where:
- $\rho$ = friction angle (material-dependent)
- $c$ = cohesion
- $\sigma < 0$ (compressive normal stress)

> **Fig. 2.4a** — Mohr's circle representation with the failure envelope

---

## 2.2.4 Coulomb–Mohr — Failure Condition

The envelope of admissible Mohr's circles yields the failure condition:

$$\frac{|\sigma_1 - \sigma_3|}{2} = \left(\frac{c}{\tan\rho} - \frac{\sigma_1+\sigma_3}{2}\right)\sin\rho \tag{2.6}$$

Material strengths:
- Tensile strength: $\sigma_z = \dfrac{2c\cos\rho}{1+\sin\rho}$
- Compressive strength: $\sigma_d = \dfrac{2c\cos\rho}{1-\sin\rho}$

> **Special case:** For $\rho \to 0$, equation (2.6) reduces to the **Tresca yield condition**.

---

## 2.2.4 Coulomb–Mohr — Failure Surface

Using $\kappa = \sigma_d/\sigma_z$, sliding occurs when any of the following holds:

$$\kappa\sigma_1 - \sigma_3 = \sigma_d, \quad \kappa\sigma_2 - \sigma_1 = \sigma_d, \quad \kappa\sigma_3 - \sigma_2 = \sigma_d \tag{2.7}$$

- Failure surface: **six-faced pyramid** around the hydrostatic axis (Fig. 2.4b)
- Vertex at $\sigma_1 = \sigma_2 = \sigma_3 = \sigma_d/(\kappa-1)$
- Plane stress ($\sigma_3 = 0$): **hexagon** (Fig. 2.4c)

> **Fig. 2.4** — Coulomb–Mohr hypothesis: (a) Mohr circle envelope, (b) 3D failure surface, (c) plane stress curve

---

## 2.2.4 Coulomb–Mohr — Failure Plane Orientation

The normal to the sliding plane lies in the $\sigma_1$–$\sigma_3$ plane and encloses with $\sigma_1$:

$$\Theta_{1,2} = \pm\left(45° - \frac{\rho}{2}\right) \tag{2.8}$$

- $\sigma_2$ (intermediate principal stress) has **no influence** on failure or angle
- Used in geology to explain **fault types** in the Earth's crust:
  - **Normal fault**: vertical stress is largest (Fig. 2.5a)
  - **Strike-slip fault**: vertical stress is smallest (Fig. 2.5b)
  - **Thrust fault**: vertical stress is intermediate (Fig. 2.5c)

> **Fig. 2.5** — Geological fault types explained by Coulomb–Mohr

---

## 2.2.4 Coulomb–Mohr — Limitations & Extensions

**Assessment:**
- Good agreement in the **compressive** regime
- Less accurate in the **tensile** regime (different failure mechanism: decohesion rather than sliding)

**Improvement:** Modify the failure surface with **tension cut-offs** (Fig. 2.6)

**Generalization (O. Mohr, 1900):**

$$|\tau| = h(\sigma) \tag{2.9}$$

where $h(\sigma)$ is determined experimentally — the envelope of admissible Mohr's circles (Fig. 2.7).

> **Fig. 2.6** — Tension cut-off modification; **Fig. 2.7** — General Mohr failure hypothesis

---

## 2.2.5 Drucker–Prager Hypothesis

**Authors:** D.C. Drucker (1918–), W. Prager (1903–1980)

Failure when:

$$F(I_\sigma, II_s) = \alpha I_\sigma + \sqrt{II_s} - k = 0 \tag{2.10a}$$

Interpreted via octahedral stresses ($\sigma_m = I_\sigma/3$, $\tau_\text{oct} = \sqrt{2\,II_s/3}$):

$$\tau_\text{oct} = -\sqrt{6}\,\alpha\sigma_m + \sqrt{2/3}\,k \tag{2.10b}$$

Failure occurs when $\tau_\text{oct}$ depends **linearly** on $\sigma_m$ — analogous to Coulomb–Mohr.

---

## 2.2.5 Drucker–Prager — Failure Surface

- Failure surface: **circular cone** around the hydrostatic axis (Fig. 2.8a)
- Vertex at $\sigma_1 = \sigma_2 = \sigma_3 = k/3\alpha$
- Plane stress ($\sigma_3 = 0$): **ellipse** (Fig. 2.8b)

> **Fig. 2.8** — Drucker–Prager hypothesis: (a) cone in principal stress space, (b) plane stress ellipse

**Special case:** $\alpha = 0$ → **von Mises yield condition**

**Extension** (when two parameters are insufficient):

$$F(I_\sigma, II_s) = \alpha I_\sigma + \sqrt{II_s} + \beta I_\sigma^2 - k = 0 \tag{2.11}$$

Applications: **granular and geological materials** (same scope as Coulomb–Mohr)

---

## 2.2.6 Johnson–Cook Criterion

**Authors:** Johnson & Cook (1985)

Describes **ductile failure** after pronounced plastic deformation.

**Mechanism:** nucleation, growth, and coalescence of **microscopic voids** — driven primarily by hydrostatic tensile stress.

The equivalent plastic strain at failure $\varepsilon^\text{fail}$ decreases with increasing stress triaxiality (Fig. 2.9):

$$\varepsilon^\text{fail} = D_1 + D_2 \exp\!\left(D_3 \frac{\sigma_m}{\sigma_e}\right) \tag{2.12}$$

where:
- $\varepsilon^\text{vers} = \sqrt{\tfrac{2}{3}\varepsilon^p_{ij}\varepsilon^p_{ij}}$ — equivalent plastic strain at failure
- $\sigma_m = \tfrac{1}{3}\sigma_{kk}$ — hydrostatic stress
- $\sigma_e = \sqrt{\tfrac{3}{2}s_{ij}s_{ij}}$ — von Mises equivalent stress
- $D_1, D_2, D_3$ — material constants

> **Fig. 2.9** — Johnson–Cook: failure strain vs. stress triaxiality $\sigma_m/\sigma_e$

---

## 2.2.6 Johnson–Cook — Validity & Extensions

> ⚠️ Equation (2.12) is only meaningful under **proportional loading** (constant ratio $\sigma_m/\sigma_e$ throughout deformation history).

**Extension to non-proportional loading:**
Combine with an **evolution law for ductile damage** → discussed in Section 9.4.

---

## 2.3 Deformation Behavior at Failure

Failure conditions alone do **not** directly determine the kinematics of failure.

**Two fundamental fracture surface types** (Fig. 2.10):

| Type | Description | Driving quantity |
|------|-------------|-----------------|
| **Normal fracture** | Fracture plane ⊥ largest principal stress (tensile) | $\sigma_1 = \sigma_z$ |
| **Shear fracture** | Fracture plane where shear stress reaches a critical value | $\tau_\text{max}$, $\tau_\text{oct}$ |

Mixed forms occur depending on stress state and material behavior.

> **Fig. 2.10** — Fracture surfaces: (a) normal fracture, (b) shear fracture

---

## 2.3 Deformation Behavior at Failure — Yielding

When failure means onset of **plastic flow**, the failure condition is a **yield condition**.

In incremental plasticity, plastic strains follow the **flow rule**:

$$d\varepsilon^p_{ij} = d\lambda \frac{\partial F}{\partial \sigma_{ij}}$$

For the **Drucker–Prager** model (ideal plasticity):

$$d\varepsilon^p_{ij} = d\lambda \left(\alpha\delta_{ij} + \frac{s_{ij}}{2\sqrt{II_s}}\right) \tag{2.13}$$

- Plastic **volume changes** occur: $d\varepsilon^p_{kk} = 3\alpha\,d\lambda$

> ⚠️ For granular materials, the **associated flow rule is not valid** — flow is not perpendicular to the yield surface. Eq. (2.13) should not be applied there.

---

## Summary

| Hypothesis | Failure surface | Best suited for |
|------------|----------------|-----------------|
| Principal stress (Rankine) | Cube | Brittle materials |
| Principal strain (Saint-Venant) | Pyramid | (limited use) |
| Strain energy (Beltrami) | Ellipsoid | Historical |
| Coulomb–Mohr | 6-faced pyramid | Geomaterials, rock |
| Drucker–Prager | Cone | Granular, geological |
| Johnson–Cook | — (evolution) | Ductile fracture |

**Key insight:** No single hypothesis is universally valid — choice depends on material class and loading regime.