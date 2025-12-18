---
marp: true

theme: h2
header: ''
footer: ''

title: Engineering Mechanics
author: Christian Willberg
---




<style>
.container{
  display: flex;
  }
.col{
  flex: 1;
  }
</style>

<style scoped>
.column-container {
    display: flex;
    flex-direction: row;
}

.column {
    flex: 1;
    padding: 0 20px; /* Platzierung der Spalten */
}

.centered-image {
    display: block;
    margin: 0 auto;
}
</style>

<style>
footer {
    font-size: 14px; /* Ändere die Schriftgröße des Footers */
    color: #888; /* Ändere die Farbe des Footers */
    text-align: right; /* Ändere die Ausrichtung des Footers */
}
img[alt="ORCID"] {
    height: 15px !important;
    width: auto !important;
    vertical-align: top !important;
    display: inline !important;
    margin: 0 !important;
}
</style>
## Engineering Mechanics
Prof. Dr.-Ing.  Christian Willberg [![ORCID](../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/1/1d/KragbalkenA.png)

Contact: christian.willberg@h2.de


---

<!--paginate: true-->

## Lecture

**Framework**


- Food or drinks are okay, but quiet
- Problems:
    - with childcare
    - disadvantage compensation
    - discrimination
    - language-related
    - ...
- Questions

![bg right 50%](../assets/QR/stream_mech_01.png)

---

## Content

- Forces and Moments
- Force Equilibrium (Kraftgleichgewichte)
- Moment Equilibrium (Momentengleichgewichte)
- Truss Structures (Stabtragwerke)
- Bending Beams (Biegebalken)
- Joints (Gelenke)
- Internal Forces (Schnittgrößen)
- Area Moments of Inertia (Flächenträgheitsmomente)
- Stresses (Spannungen)

---

## Engineering Mechanics
- statics
- deformable body
- dynamics
- Fluid mechanics

**Goal:** Evaluate structures or machines, e.g. in machine design

---

# Mechanical Models

- analytical
- semi-analytical
- numerical

---

## Numerical models

- continuum mechanical models
  - homogenous material
  - no discontinuities in deformation
- typically discretized with finite elements, Finite Element Method (FEM)

![bg fit right](https://upload.wikimedia.org/wikipedia/commons/c/cd/Elmer-pump-heatequation.png)

---

## Multi-body problems

- kinematic desription of different bodies
- bodies itself can be flexible as well

![bg right fit](https://biomec.upc.edu/wp-content/uploads/2016/09/biomechanics-multibody-600.png)

---

## Fluid mechanics

- uses Navier-Stokes equation 
- in discretized form
  - finite volume method
  - finite element method
- [Video](https://www.youtube.com/watch?v=nzNx0NRk7-8)
- can also be used to study fluid - structure interaction

![bg right fit](https://leichtbau.dlr.de/wp-content/uploads/2021/03/wind-scaled-1000x423.bmp)

---

# Assumptions
- conservation of momentum
$$\sum\mathbf{p} = const$$

- conservation of angular momentum
$$\sum\mathbf{L} = const$$
- conservation of energy

$$\sum E = const$$

---

## What is a force?

---

[**In physics, a force is an action, a push or a pull, that can cause an object to change its velocity or its shape, or to resist other forces, or to cause changes of pressure in a fluid. In mechanics, force makes ideas like 'pushing' or 'pulling' mathematically precise. Because the magnitude and direction of a force are both important, force is a vector quantity (force vector). The SI unit of force is the newton (N), and force is often represented by the symbol F.**](https://en.wikipedia.org/wiki/Force)

---

## In detail 

- a force changes the momentum

$$\mathbf{F}=\frac{d\mathbf{p}}{dt}=m\frac{d\mathbf{v}}{dt}=m\mathbf{a}$$

- Unit is Newton $N=\frac{kg m}{s^2}$
- because $\sum\mathbf{p} = const$, $\sum_i\mathbf{F}_i=\mathbf{0}$

$\mathbf{F} = \begin{bmatrix} F_x\\ F_y \\ F_z \end{bmatrix}$

$\sum_i\begin{bmatrix} F_x\\ F_y \\ F_z \end{bmatrix}_i=\begin{bmatrix} 0\\ 0 \\ 0 \end{bmatrix}$

---

# Examples \& notations