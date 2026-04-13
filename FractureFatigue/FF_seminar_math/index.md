---
marp: true
header: 'Fracture & Fatigue - Mathematical Basics I'
theme: h2
paginate: true
math: katex
---
<!-- _class: lead -->
# Mathematical Basics I
## Vectors and Matrices
Prof. Dr.-Ing. Christian Willberg
Hochschule Magdeburg-Stendal

---
# Overview Seminar I

- Vectors and their properties
- Vector operations (dot product, cross products, norm, angle)

---

A vector is an ordered list of numbers:

$$\vec{v} = \begin{bmatrix} v_1 \\ v_2 \\ v_3 \end{bmatrix}$$

**Examples from mechanics:**
- Force: $\vec{F} = \begin{bmatrix} F_x \\ F_y \\ F_z \end{bmatrix}$ in Newton [N]
- Displacement: $\vec{u} = \begin{bmatrix} u_x \\ u_y \\ u_z \end{bmatrix}$ in meters [m]
- Velocity: $\vec{v} = \begin{bmatrix} v_x \\ v_y \\ v_z \end{bmatrix}$ in m/s

---
## Vector Addition and Scalar Multiplication

**Vector addition:**
$$\vec{a} + \vec{b} = \begin{bmatrix} a_1 \\ a_2 \\ a_3 \end{bmatrix} + \begin{bmatrix} b_1 \\ b_2 \\ b_3 \end{bmatrix} = \begin{bmatrix} a_1 + b_1 \\ a_2 + b_2 \\ a_3 + b_3 \end{bmatrix}$$

**Scalar multiplication:**
$$c \cdot \vec{a} = c \cdot \begin{bmatrix} a_1 \\ a_2 \\ a_3 \end{bmatrix} = \begin{bmatrix} c \cdot a_1 \\ c \cdot a_2 \\ c \cdot a_3 \end{bmatrix}$$

**Example:** $3 \cdot \begin{bmatrix} 1 \\ 2 \\ -1 \end{bmatrix} = \begin{bmatrix} 3 \\ 6 \\ -3 \end{bmatrix}$

---
## Vector Norm (Length) - Derivation

The **norm** (or magnitude/length) of a vector is derived from Pythagoras' theorem:

For 2D: $|\vec{v}| = \sqrt{v_1^2 + v_2^2}$

For 3D: $|\vec{v}| = \sqrt{v_1^2 + v_2^2 + v_3^2}$

**General formula (Euclidean norm):**
$$\|\vec{v}\| = |\vec{v}| = \sqrt{\vec{v} \cdot \vec{v}} = \sqrt{\sum_{i=1}^{n} v_i^2}$$

**Example:**
Force $\vec{F} = \begin{bmatrix} 3 \\ 4 \\ 0 \end{bmatrix}$ N

$$|\vec{F}| = \sqrt{3^2 + 4^2 + 0^2} = \sqrt{9 + 16} = 5 \text{ N}$$

---
# Unit Vector - Normalization

A **unit vector** has length 1 and indicates direction only.

**Derivation:**
$$\hat{v} = \frac{\vec{v}}{\|\vec{v}\|}$$

**Example:** $\vec{v} = \begin{bmatrix} 3 \\ 4 \end{bmatrix}$

$$\|\vec{v}\| = \sqrt{3^2 + 4^2} = 5$$

$$\hat{v} = \frac{1}{5}\begin{bmatrix} 3 \\ 4 \end{bmatrix} = \begin{bmatrix} 0.6 \\ 0.8 \end{bmatrix}$$

**Check:** $\|\hat{v}\| = \sqrt{0.6^2 + 0.8^2} = \sqrt{0.36 + 0.64} = 1$ ✓

---
# Dot Product (Scalar Product) - Derivation

The **dot product** of two vectors yields a scalar:

$$\vec{a} \cdot \vec{b} = a_1b_1 + a_2b_2 + a_3b_3 = \sum_{i=1}^{n} a_ib_i$$

**Alternative formula:**
$$\vec{a} \cdot \vec{b} = \|\vec{a}\| \|\vec{b}\| \cos\theta$$

where $\theta$ is the angle between the vectors.

**Physical interpretation:**
- Projection of one vector onto another
- Work: $W = \vec{F} \cdot \vec{s}$ (force times displacement)

---
# Dot Product - Example

$$\vec{a} = \begin{bmatrix} 2 \\ 3 \\ 1 \end{bmatrix}, \quad \vec{b} = \begin{bmatrix} 1 \\ 0 \\ -2 \end{bmatrix}$$

**Calculate:**
$$\vec{a} \cdot \vec{b} = 2 \cdot 1 + 3 \cdot 0 + 1 \cdot (-2) = 2 + 0 - 2 = 0$$

**Result:** $\vec{a} \cdot \vec{b} = 0$ → vectors are **orthogonal** (perpendicular)!

**Special cases:**
- $\vec{a} \cdot \vec{b} = 0$ → perpendicular ($\theta = 90°$)
- $\vec{a} \cdot \vec{b} > 0$ → acute angle ($\theta < 90°$)
- $\vec{a} \cdot \vec{b} < 0$ → obtuse angle ($\theta > 90°$)

---
# Angle Between Vectors - Derivation

From the dot product formula: $\vec{a} \cdot \vec{b} = \|\vec{a}\| \|\vec{b}\| \cos\theta$

**Solve for angle:**
$$\cos\theta = \frac{\vec{a} \cdot \vec{b}}{\|\vec{a}\| \|\vec{b}\|}$$

$$\theta = \arccos\left(\frac{\vec{a} \cdot \vec{b}}{\|\vec{a}\| \|\vec{b}\|}\right)$$

**Note:** Result is in radians. Convert to degrees: $\theta_{deg} = \theta_{rad} \cdot \frac{180°}{\pi}$

---
# Angle Between Vectors - Example

$$\vec{a} = \begin{bmatrix} 1 \\ 0 \\ 0 \end{bmatrix}, \quad \vec{b} = \begin{bmatrix} 1 \\ 1 \\ 0 \end{bmatrix}$$

**Step 1:** Calculate dot product
$$\vec{a} \cdot \vec{b} = 1 \cdot 1 + 0 \cdot 1 + 0 \cdot 0 = 1$$

**Step 2:** Calculate norms
$$\|\vec{a}\| = 1, \quad \|\vec{b}\| = \sqrt{1^2 + 1^2} = \sqrt{2}$$

**Step 3:** Calculate angle
$$\cos\theta = \frac{1}{1 \cdot \sqrt{2}} = \frac{1}{\sqrt{2}} \quad \Rightarrow \quad \theta = 45°$$

---

# Vector Transpose - Derivation

The **transpose** converts a column vector to a row vector (and vice versa):

**Column vector:**
$$\vec{v} = \begin{bmatrix} v_1 \\ v_2 \\ v_3 \end{bmatrix}$$

**Transpose (row vector):**
$$\vec{v}^T = \begin{bmatrix} v_1 & v_2 & v_3 \end{bmatrix}$$

**Why is this useful?**
Dot product can be written as: $\vec{a} \cdot \vec{b} = \vec{a}^T \vec{b}$

---

# Cross Product (Vector Product)

The **cross product** of two vectors yields a vector perpendicular to both:

$$\vec{a} \times \vec{b} = \begin{bmatrix} a_2b_3 - a_3b_2 \\ a_3b_1 - a_1b_3 \\ a_1b_2 - a_2b_1 \end{bmatrix}$$

**Properties:**
- $\vec{a} \times \vec{b} = -\vec{b} \times \vec{a}$ (anti-commutative)
- $|\vec{a} \times \vec{b}| = |\vec{a}||\vec{b}|\sin\theta$
- If $\vec{a} \times \vec{b} = \vec{0}$ → vectors are parallel

**Applications:** Moment/torque $\vec{M} = \vec{r} \times \vec{F}$, angular momentum

---
# How to code in Julia

```julia
using LinearAlgebra
a = [2, 1, 0]
b = [1, 3, 0]
c = cross(a, b)  # [0, 0, 5]

e = dot(a,b)
q = a'*b
q==e
n = norm(a)
a = [1, 1, 0]
b = [0, 1, 1]
theta_rad = acos(dot(a, b) / (norm(a) * norm(b)))
theta_deg = rad2deg(theta_rad)  # 60°
```

---


# Vector Norm - Example 1

Calculate the magnitude of the velocity vector:

$$\vec{v} = \begin{bmatrix} 6 \\ 8 \\ 0 \end{bmatrix} \text{ m/s}$$

**Solution:**
$$|\vec{v}| = \sqrt{6^2 + 8^2 + 0^2} = \sqrt{36 + 64} = \sqrt{100} = 10 \text{ m/s}$$

---
# Vector Norm - Example 2

A force vector $\vec{F} = \begin{bmatrix} 2 \\ 3 \\ 6 \end{bmatrix}$ N acts on a body.

**Calculate the magnitude:**

$$|\vec{F}| = \sqrt{2^2 + 3^2 + 6^2} = \sqrt{4 + 9 + 36} = \sqrt{49} = 7 \text{ N}$$

---
# Angle Between Vectors - Example 1

Find the angle between $\vec{a} = \begin{bmatrix} 1 \\ 1 \\ 0 \end{bmatrix}$ and $\vec{b} = \begin{bmatrix} 0 \\ 1 \\ 1 \end{bmatrix}$

**Solution:**
$$\vec{a} \cdot \vec{b} = 1 \cdot 0 + 1 \cdot 1 + 0 \cdot 1 = 1$$
$$|\vec{a}| = \sqrt{2}, \quad |\vec{b}| = \sqrt{2}$$
$$\cos\theta = \frac{1}{\sqrt{2} \cdot \sqrt{2}} = \frac{1}{2} \quad \Rightarrow \quad \theta = 60°$$

---
# Angle Between Vectors - Example 2

Calculate angle between $\vec{F}_1 = \begin{bmatrix} 3 \\ 0 \\ 4 \end{bmatrix}$ N and $\vec{F}_2 = \begin{bmatrix} 0 \\ 5 \\ 0 \end{bmatrix}$ N

**Solution:**
$$\vec{F}_1 \cdot \vec{F}_2 = 3 \cdot 0 + 0 \cdot 5 + 4 \cdot 0 = 0$$

Result: $\theta = 90°$ (forces are perpendicular!)

---

# Exercise 1.1 - Vector Operations

Given vectors: $\vec{a} = \begin{bmatrix} 3 \\ 4 \\ 0 \end{bmatrix}$ and $\vec{b} = \begin{bmatrix} 1 \\ 2 \\ 2 \end{bmatrix}$

**a)** Calculate the norm (length) of both vectors: $\|\vec{a}\|$ and $\|\vec{b}\|$

**b)** Calculate the dot product: $\vec{a} \cdot \vec{b}$

**c)** Calculate the angle between $\vec{a}$ and $\vec{b}$ in degrees


---

# Exercise 1.2 - Vector Operations

Given vectors: $\vec{a} = \begin{bmatrix} 6 \\ 1 \\ 0 \end{bmatrix}$ and $\vec{b} = \begin{bmatrix} 1 \\ 2 \\ 4 \end{bmatrix}$

**a)** Calculate the norm (length) of both vectors: $\|\vec{a}\|$ and $\|\vec{b}\|$

**b)** Calculate the dot product: $\vec{a} \cdot \vec{b}$

**c)** Calculate the cross product between $\vec{a}$ and $\vec{b}$ in degrees




---

---
<!-- _class: lead -->
# Questions?

Prof. Dr.-Ing. Christian Willberg
christian.willberg@h2.de
Office: Building 10, Room 2.09

