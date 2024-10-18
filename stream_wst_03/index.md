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

![bg right](https://upload.wikimedia.org/wikipedia/commons/a/a2/Bochumer_Verein-23-50078.jpg)

Contact: christian.willberg@h2.de
Parts of the script are adopted from \
Prof. Dr.-Ing. Jürgen Häberle


---

<!--paginate: true-->
## Material Properties

<details>
<summary>What are material properties?</summary>

<!DOCTYPE html>
<html lang="en">
  <body>
    <pre align="center" class="mermaid">
    %%{init: {'theme': 'forest'}}%%
    mindmap
      root((Properties))
        Physical
                Mechanical
                Electrical
                Thermal
                ...
            Chemical
                Solubility
                Electronegativity
                ...
            Biological / Physiological
                Environmental Impact
                Weatherability
                Toxicity
                ...
            Social / Societal
                Value
                Acceptance
                Working Conditions
                Origin
                ...
    </pre>
    <script type="module">
      import mermaid from 'https://cdn.jsdelivr.net/npm/mermaid@10/dist/mermaid.esm.min.mjs';
    </script>

  </body>
</html>
</details>

<!DOCTYPE html>



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

---

# Fatigue

<details>
<summary>What is Fatigue?</summary>
<!DOCTYPE html>
<html lang="en">

<img src="https://upload.wikimedia.org/wikipedia/commons/7/7e/Sleeping_students.jpg" alt="Alternative text" width="500">
  </body>
</html>
</details>

---

- Typically occurs with cyclic loading
  - Isothermal mechanical fatigue
    - [Oscillating load](https://www.youtube.com/watch?v=_qVXkAWtH60)

    - Aircraft fuselage (pressure build-up and release)
  - Thermal fatigue
    - Ovens, heating elements
  - Thermo-mechanical fatigue
    - High-pressure tanks
  - Electro-thermal fatigue
    - Electrical conductors (filaments)

---

![bg 60%](https://leichtbau.dlr.de/wp-content/uploads/2021/11/Abbildung-2_Innovationsbericht_Wasserstofftank_CG06.png)

---

## Fatigue
- The load is below the yield strength $R_{p0,2}$
  - > _Reminder: What does $R_{p0,2}$ indicate?_
- Stress concentrations occur in material defects (pores, microcracks, etc.) or in the crystal (dislocations, vacancies, etc.)
- Initially, randomly distributed regions of local plastic deformation develop under alternating loads
- These points represent stress concentration areas, which enlarge over time and can lead to fracture

[Explanation video](https://www.youtube.com/watch?v=o-6V_JoRX1g)

---

![bg fit](https://upload.wikimedia.org/wikipedia/commons/1/1c/Woehlerlinie.png)
![bg fit 80%](https://upload.wikimedia.org/wikipedia/commons/6/64/Spgs-Dehnungs-Kurve_Dehngrenze.svg)

---

## Terms

- Lifespan
- Fatigue crack
- Fatigue fracture
- Short-term strength (K)
- Operational strength (Time strength Z)
- Endurance limit (D)

![bg right fit 70%](https://upload.wikimedia.org/wikipedia/commons/9/96/Pedalarm_Bruch.jpg)

---

## Countermeasures

- Reduce notch effect
- Material adaptation
- Design adjustments to prevent local stress from exceeding allowable limits
- Regular inspections

---

## Wear

- Permanent deformation and material loss on the surface of solids due to friction
- Technologically unintended and can lead to functional failure
- Influenced by:
  - Frictional pairing
  - Surface layer and intermediate substance properties
  - Type of motion
  - Load intensity

---

| Wear Type             | Appearance                                                        | Primary Occurrence                                         |
|-----------------------|-------------------------------------------------------------------|------------------------------------------------------------|
| Sliding wear           | Grooves or furrows from abrasion, material transfer, or local melting | Unlubricated bearings, clutches, brakes                    |
| Rolling wear           | Flaking due to fatigue cracks                                     | Rail/wheel, rolling bearings                               |
| Pitting               | Pitting formation: pitting                                        | Rolling elements, especially gears                         |
| Abrasive wear          | Plastic deformation, erosion                                     | Excavating equipment, bulk material transport, particle impingement |
| Cavitation             | Pitted surface with fatigue cracks                               | Water turbines, pumps                                      |
| Tribo-oxidation (fretting corrosion) | Loose oxidation products                            | Machine elements with form-fit or force-fit connections     |

---

## Sliding Wear

- Influenced [by](https://download.basf.com/p1/8a8081c57fd4b609017fd66047f138c3/de/Reibung_und_Verschlei%25C3%259F%250Abei_Polymerwerkstoffen)
  - The average roughness depth $R_z$
  - Contact pressure
  - Wear path ratio $W=k\frac{F_N}{A}10^6$
  - $k$ in $\left[\frac{mm^3}{Nm}\right]$ specific wear rate (independent of load)

![bg right fit 90%](https://media.springernature.com/original/springer-static/image/chp:10.1007%2F978-3-658-17851-2_4/MediaObjects/299062_3_De_4_Fig17_HTML.gif)

---

## Rolling Wear
- [Rolling](https://link.springer.com/chapter/10.1007/978-3-658-17851-2_6) involves slip components superimposed on the rolling process
- Small contact area; high surface pressure
- Surface degradation (plastic deformation, microstructure changes, etc.)
- Can be significantly reduced by lubrication $\rightarrow$ specific lubricant film thickness $\lambda$

![bg right fit 70%](https://media.springernature.com/full/springer-static/image/chp%3A10.1007/978-3-658-17851-2_6/MediaObjects/299062_3_De_6_Fig1_HTML.gif?as=webp)

![bg fit vertical 60%](https://media.springernature.com/full/springer-static/image/chp%3A10.1007/978-3-658-17851-2_6/MediaObjects/299062_3_De_6_Fig10_HTML.gif?as=webp)

---

## Cavitation

[Video](https://www.youtube.com/watch?v=J0H0Nw44oA4)

<details>
<summary>Physical cause?</summary>
<div>

- Static pressure is dependent on fluid velocity
- Vapor bubbles form when the vapor pressure drops below a threshold
- These bubbles move into regions with higher pressure and rapidly collapse
- Pressure and temperature spikes occur
</div>
</details>

---

- Localized stress on the surface
- These regions weaken and flake off
- Surface is affected by:
  - Efficiency reduction
  - Corrosion
  - Areas where cracks can initiate

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/b/bf/Cavitation.jpg)

---

## Fretting Corrosion

- Sliding motions between two highly loaded components
- Typically occurs with insufficient interference fit $\rightarrow$ Fits

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/2/27/Corrosion_de_contact_sur_un_bout_d%27arbre_01.jpg)


