---
marp: true

theme: default
header: ''
footer: ''
backgroundImage: url('../assets/styles/background.png')
title: Materials-and-Production-Engineering-Lectures on Real Structures and Properties
author: Christian Willberg
---



<script type="module">
  import mermaid from 'https://cdn.jsdelivr.net/npm/mermaid@10/dist/mermaid.esm.min.mjs';
  mermaid.initialize({ startOnLoad: true });
</script>

<style>
.container{
  display: flex;
  }
.col{
  flex: 1;
  }
</style>

<style scoped>
.column
.column-container {
    display: flex;
    flex-direction: row;
}

.column {
    flex: 1;
    padding: 0 20px; /* Positioning of the columns */
}

.centered-image {
    display: block;
    margin: 0 auto;
}
</style>

<style>
footer {
    font-size: 14px; /* Change footer font size */
    color: #888; /* Change footer color */
    text-align: right; /* Change footer alignment */
}
</style>


## Materials-and-Production-Engineering-Lecture Materials Science - Lecture on Real Structures and Properties
Prof. Dr.-Ing. Christian Willberg<a href="https://orcid.org/0000-0003-2433-9183"><img src="../assets/styles/ORCIDiD_iconvector.png" alt="ORCID Symbol" style="height:15px;width:auto;vertical-align: top;background-color:transparent;"></a>
Hochschule Magdeburg-Stendal

![bg right](https://upload.wikimedia.org/wikipedia/commons/d/d7/Gold-crystals.jpg)

Contact: christian.willberg@h2.de
Parts of the script are taken from \
Prof. Dr.-Ing. Jürgen Häberle

---

## Objectives
- Defects in crystals
- Plasticity
- Basics of mechanical properties

![bg right 70%](stream_wst_02.png)

---

<!--paginate: true-->

# Real Structure of Crystals
## Lattice Defects

- Zero-dimensional defects (point defects): vacancies, interstitial atoms, interstitial foreign atoms, substitutional foreign atom
- One-dimensional defects (line defects): dislocations
- Two-dimensional defects (surface defects): stacking faults, grain boundaries, subgrain boundaries, phase boundaries

---

## Zero-dimensional Defects

![bg right 50%](../assets/Figures/ideales_gitter.png)

<details>
<summary>What are the possible variants?</summary>
<div>

- Interstitial atoms
- Vacancies
- Frenkel type (occurrence of the same number of interstitial atoms and vacancies)
- Substitutional foreign atom
- Interstitial foreign atom 
</div>
</details>

---

## Foreign Atoms

<details>
<summary>How can foreign atoms be used?</summary>
<div>

- [Doping](https://en.wikipedia.org/wiki/Doping_(semiconductor)) in semiconductors
    - targeted manipulation of electrical conductivity by introducing additional atoms
- Interstitial and substitutional foreign atom
    - increase in strength through natural "crack stopping" or locally easier dislocation and reduction of local stresses
</div>
</details>

---

## Dislocations

[Dislocations](https://en.wikipedia.org/wiki/Dislocation_(materials_science)) occur
- during crystal growth
- due to residual stresses
- through plastic deformation

![bg right 80%](../assets/Figures/versetzung.png)
![bg 105%](https://upload.wikimedia.org/wikipedia/commons/7/77/Versetzung_im_2D-Kristall.svg)

---

# [Defects](https://cwillberg.github.io/Werkstofftechnik/dev/Skript/svw/gitterbaudefekte/)

---

## Two-dimensional Defects - Grain Boundaries
- Grain boundaries
- Phase boundaries
- Subgrain boundaries

![bg right fit](https://www.struers.com/-/media/Struers-media-library/Knowledge/Materials/Grain-structures/FIg-0A-974x732-px.jpg?lm=20191009T054854Z&h=732&w=974&hash=4504C0AA9A9B6DEB6BDF91CC93EDF46ED9AADF75)

[Script](https://cwillberg.github.io/Werkstofftechnik/dev/Skript/svw/gitterbaudefekte/)

---

## Plasticity

Good or Bad?

![bg right 70%](../assets/Figures/fragezeichen.png)

---

## Examples

**High plasticity**:

- Modeling clay
- Wet clay
- Metals and metal alloys with a suitable atomic lattice:
  - glowing steel in forging
  - cold forming of sheets 

**Low plasticity**:
  - Rubber
  - Ceramics
  - Fiber-reinforced composites (epoxy-glass fiber or epoxy-carbon fiber)

---

## Plasticity - Single Crystal

The plastic deformation of a crystal mainly occurs through the sliding of atomic layers along certain crystallographic planes and directions under the influence of shear stress.

- The slip system consists of a slip plane and a slip direction.
- Critical shear stress ($\tau_{Cr}\approx G/10$ - estimate or theoretical shear strength)
- Reality is ~100 times lower due to dislocations

---

## Image

![](../assets/Figures/Beispiel_plast.bmp)

---

## Plastic Deformation of Polycrystalline Material

- Micro- and macroplasticity
  - Plastic deformation starts at "unfavorable" orientations
- Grain boundaries
  - Barrier to dislocation motion
  - At high temperatures, grain boundaries can slide (creep)
  - Targeted manufacturing can increase toughness through grain boundaries
- Heterogeneity
  - Multiphase materials
  - Inhomogeneous distribution of stresses and deformations
- Anisotropy

---
## Slip Systems 
![](https://upload.wikimedia.org/wikipedia/commons/b/b9/Slip_systems_in_zirconium_alloys.png)


---

## Polycrystal Plasticity
[Example from a simulation](https://www.youtube.com/watch?v=mWanREXKLO4)


---


## Shear bands

![bg right 100%](https://upload.wikimedia.org/wikipedia/commons/8/81/X-shaped_shear_bands_in_clay.jpg)

---

## Yield Strength

![bg right 90%](https://upload.wikimedia.org/wikipedia/commons/6/64/Spgs-Dehnungs-Kurve_Dehngrenze.svg)

- $R_m$ - tensile strength
- $R_e$ - yield strength
- Offset yield strength or elastic limit $R_{p0.2}$
  - After loading and unloading, 0.2% strain remains
- Offset yield strength is used as a substitute for yield strength




---

## Yield Strength

![bg right 90%](https://upload.wikimedia.org/wikipedia/commons/6/6e/Spgs-Dehnungs-Kurve_Streckgrenze.svg)

- Upper yield strength $R_{eH}$
- Lower yield strength $R_{eL}$
>Jagged area: Lüders region

[Example video](https://youtu.be/E80yUNniESU?si=pqGRAWamxFQedWqw&t=95)

---

## Plasticity - Forming
- [Deep drawing principle](https://www.youtube.com/watch?v=Zbfld_851z0)
- [Deep drawing in reality](https://www.youtube.com/watch?v=rHfepOqPVHI)

---

## Creeping

- Time-dependent deformation under constant load

- **Example**: [Deployable Space Structures](https://youtu.be/vMMc7-VUUtM?si=5uYx40b4eWGl7j0G&t=77)

![bg right fit](https://leichtbau.dlr.de/wp-content/uploads/2022/03/boom_blank_be.png)

---

- **Occurs in metals above a transition temperature**:  
  $T > 0.3–0.4 \cdot T_S$
  
- **Irreversible plastic deformation** takes place even at low mechanical stresses, **below the yield strength** $R_e$:
  - Slow but continuous progress

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/4/4d/3StageCreep.svg)

---

## Creep Characteristics in Metals

- **Dependent on**: temperature, stress, time, material
- **Causes**: 
  - Dislocation movements
  - Vacancy diffusion
  - Grain boundary sliding
  - Grain boundary diffusion

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/4/4d/3StageCreep.svg)

