---
marp: true

theme: default
header: ''
footer: ''
backgroundImage: url('../assets/styles/background.png')
title: Materials-and-Production-Engineering-Lecture Alloy Formation
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
.column-container {
    display: flex;
    flex-direction: row;
}

.column {
    flex: 1;
    padding: 0 20px; /* Placement of the columns */
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


## Lecture on Materials Science - Material properties
Prof. Dr.-Ing. Christian Willberg<a href="https://orcid.org/0000-0003-2433-9183"><img src="../assets/styles/ORCIDiD_iconvector.png" alt="ORCID symbol" style="height:15px;width:auto;vertical-align: top;background-color:transparent;"></a>
Magdeburg-Stendal University of Applied Sciences

![bg right](https://wiki.arnold-horsch.de/images/6/6e/EKD-1.jpg)

Contact: christian.willberg@h2.de
Parts of the script are adopted from \
Prof. Dr.-Ing. Jürgen Häberle


---

<!--paginate: true-->
## Material Properties

What are material properties?


---

## Symmetry
- Isotropy
- Transverse Isotropy
- Orthotropy
- ...
- Anisotropy
![bg right 80%](../assets/Figures/xyz.png)

<!---
- Discussion; properties can be direction-dependent
- Practical examples
-->

---

## Mechanical Properties
<a id="Mechanics"></a>

- **Reversible** deformation, where immediately or after a certain time following the application of external load, the deformed material returns to its original shape: elastic and viscoelastic deformation.

- **Irreversible (permanent)** deformation, where the shape change remains even after the external load is removed: plastic and viscous deformation.

- Fracture, i.e., separation of the material caused by the formation and propagation of cracks.

---

## Simulation Example
[External Link](https://perilab-results.nimbus-extern.dlr.de/models/DCB?step=65&variable=Damage&displFactor=400)

---


## Concept of Stress - Strain

- Geometry-independent characteristics
- How can one determine a characteristic that is defined solely by the material?
- Example: Density

---

## Elasticity

- Reversible, energy-preserving
- Hooke's Law 1D
Normal stress $\sigma = E\varepsilon$
Shear stress $\tau = G\gamma$
- Hooke's Law 2D or 3D
$\boldsymbol{\sigma}=\mathbf{C}\boldsymbol{\varepsilon}$

---

## Basics

- Normal strain [-]
$\varepsilon_{mechanical} = \frac{l - l_0}{l_0}$

- Normal stress $\left[\frac{N}{m^2}\right]$, $[Pa]$
$\sigma = \frac{F}{A}=E\varepsilon$
E - Elastic modulus, Young's modulus $\left[\frac{N}{m^2}\right]$\
\
\
\
\
.
<div style="position: absolute; bottom: 40px; left: 80px; color: blue; font-size: 20px;"> 
    <img src="Figures/EModul.svg" style="height:230px;width:auto;vertical-align: top;">
</div>

![bg right:25%](../assets/Figures/Normalspannung.gif)

---

## Basics

- Shear strain [-]
$\varepsilon = \frac12(\frac{u_x}{l_0}+\frac{u_y}{b_0})=\frac{\gamma}{2}$

- Shear stress $\left[\frac{N}{m^2}\right]$, $[Pa]$
$\tau = \frac{F_s}{A}= G\gamma$

- Normal and shear stresses are not compatible, leading to the concept of equivalent stresses -> Engineering Mechanics

- G - Shear modulus $\left[\frac{N}{m^2}\right]$

![bg right:25%](../assets/Figures/Schubspannung.gif)

---

## Basics

- Poisson's ratio [-]
$\nu = -\frac{\varepsilon_y}{\varepsilon_x}$
for homogeneous materials $0\leq\nu\leq 0.5$
for heterogeneous materials, other configurations are possible

- [Bulk modulus](https://en.wikipedia.org/wiki/Bulk_modulus#Relation_between_elastic_moduli) $K = \frac{E}{3(1-2\nu)}$
- [Shear modulus](https://en.wikipedia.org/wiki/Bulk_modulus#Relation_between_elastic_moduli) $K = \frac{E}{2(1+\nu)}$

![bg right:25%](../assets/Figures/Kompression.gif)

---

## Material Examples

| Material                          | E [GPa]   | G [GPa] | $\nu [-]$     |
|:----------------------------------|:----------|:--------|:--------------|
| Unalloyed steel                   | 200       | 77      | 0.30          |
| Titanium                          | 110       | 40      | 0.36          |
| Copper                            | 120       | 45      | 0.35          |
| Aluminum                          | 70        | 26      | 0.34          |
| Magnesium                         | 45        | 17      | 0.27          |
| Tungsten                          | 360       | 130     | 0.35          |
| Cast iron with lamellar graphite  | 120       | 60      | 0.25          |
| Brass                             | 100       | 35      | 0.35          |
| Thermoplastics / Thermosets       | 2 … 5     | 1 … 2   | ~0.35         |
| Elastomers                        | 0.1       | 0.03    | 0.45 - 0.49   |
| Plywood                           | 4 … 16    | -       | -             |
| Concrete                          | 40 … 45   | -       | -             |

---

## Stiffness
<details>
<summary>How are material properties related to stiffness?</summary>

- Material $\cdot$ cross-sectional area = stiffness
- Tensile, normal stiffness = $EA$
- Bending stiffness = $EI$
- Torsional stiffness = $GI_P$

</details>

![bg fit right:50%](../assets/Figures/IWES_test.jpg)
<div style="position: absolute; bottom: 10px; left: 520px; color: blue; font-size: 20px;"> 
    <a href="https://doi.org/10.3390/en14092451" style="color: blue;">Image reference</a>
</div>

---

## 
<!---

* 1st and 2nd natural frequencies ->  https://doi.org/10.3390/en14092451
* Deformation in the impact and swing direction are identical
* Tower impact is relevant
* Dynamic stability
* -->

![bg fit](../assets/Figures/EF1.png)
![bg fit](../assets/Figures/EF2.png)

<div style="position: absolute; bottom: 10px; left: 520px; color: blue; font-size: 20px;"> 
    <a href="https://doi.org/10.3390/en14092451" style="color: blue;">Image reference</a>
</div>

---

## Strength

[The strength of a material describes its ability to withstand mechanical loads before failure occurs and is expressed as mechanical stress $\left[N/m^2\right]$. Failure can involve **unacceptable deformation**, particularly **plastic (permanent) deformation**, or **fracture**.](https://en.wikipedia.org/wiki/Strength_of_materials)

>Important: Strength $\neq$ Stiffness

---

## Plastic Failure

![bg fit right:50%](../assets/Figures/Stress_strain_ductile.svg)

<div style="position: absolute; bottom: 10px; right: 0px; color: blue; font-size: 20px;"> 
    <a href="https://commons.wikimedia.org/w/index.php?curid=89891144" style="color: blue;">By Nicoguaro - Own work, CC BY 4.0</a>
</div>

---

## Viscous Behavior

- Reversible
- Time-dependent

Spring model $\sigma = E\epsilon$ 
 - Elastic component
 - Represented by spring elements
<div style="position: absolute; bottom: -10px; left: 500px; color: blue; font-size: 20px;"> 
    <img src="../assets/Figures/spring.svg" alt="Presentation link" style="height:550px;width:auto;vertical-align: top;background-color:transparent;">
</div>

<div style="position: absolute; bottom: -150px; left: 500px; color: blue; font-size: 20px;"> 
    <img src="../assets/Figures/damper.svg" alt="Presentation link" style="height:550px;width:auto;vertical-align: top;background-color:transparent;">
</div>

Damper  $\sigma = \eta\dot{\epsilon}=\eta\frac{\partial \epsilon}{\partial t}$ 
- Viscous component
- Represented by damper elements

---

## 


![bg fit](../assets/Figures/Spannung-Dehnung.png)
![bg fit](../assets/Figures/Spannung-Dehnrate.png)

---

## 

![bg fit](../assets/Figures/Spannung-Zeit.png)
![bg fit](../assets/Figures/Hysteresis.png)

