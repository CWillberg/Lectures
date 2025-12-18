---
marp: true

theme: h2
header: ''
footer: ''

title: Materials-and-Production-Engineering - Materials Science
author: Christian Willberg
---


<style>
footer {
    font-size: 14px; /* Change footer font size */
    color: #888; /* Change footer color */
    text-align: right; /* Change footer alignment */
}
img[alt="ORCID"] {
    height: 15px !important;
    width: auto !important;
    vertical-align: top !important;
    display: inline !important;
    margin: 0 !important;
}
</style>

## Materials-and-Production-Engineering - Materials
Prof. Dr.-Ing.  Christian Willberg [![ORCID](../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)

![bg right](../assets/Figures/IWES_test.jpg)

Contact: christian.willberg@h2.de
Parts of the script are adopted from \
Prof. Dr.-Ing. Jürgen Häberle
<div style="position: absolute; bottom: 10px; left: 520px; color: blue; font-size: 20px;"> 
    <a href="https://doi.org/10.1007/s42102-021-00079-6" style="color: blue;">Image Reference</a>
</div>

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

![bg right 50%](../assets/QR/stream_wst_01.png)

---

## Content

- Materials
- Structure of materials
  - Atoms and bonds
  - Fine structure
  - Microstructure
- Structure of materials
- Material properties
  - physical
  - non-physical
- Phase diagrams
- ...

---

## Materials

<details>
<summary>What are materials?</summary>
<div>

[Materials in the narrow sense are solid-state materials that can be used to make components and constructions.](https://de.wikipedia.org/wiki/Werkstoff)
</div>
</details>

---
## Application Areas 

- Metals
  - Iron, steel, cast iron
  - Non-ferrous metals
- Plastics
- Ceramics
- Composite materials

---

## Cast Iron - Steel

![bg 60% right](https://upload.wikimedia.org/wikipedia/commons/b/bf/Gu%C3%9Fteil_2007.gif)

![bg 60% vertical](https://upload.wikimedia.org/wikipedia/commons/2/2e/LPD_22_MAR_2010.jpg)

---

## Non-Ferrous Metals

- Copper is a very good electrical and thermal conductor

![bg right 70%](https://images-of-elements.com/copper.jpg)

---

- Magnesium is used in lightweight construction
- Titanium and titanium alloys 
    - high strength and heat resistance
    - Corrosion resistant
- Nickel
    - Corrosion resistance
    - high heat resistance

![bg right 30%](https://images-of-elements.com/magnesium.jpg)
![bg right 30% vertical](https://images-of-elements.com/titanium-crystal.jpg)
![bg right 30%](https://images-of-elements.com/nickel.jpg)

---

## Ceramics

![bg right](https://upload.wikimedia.org/wikipedia/commons/c/ca/Langstab-Isolator_110_kV.jpg)

---

## Glasses

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/1/15/Magnifying_Glass_Photo.jpg)

---

## Fiber Composites

![bg right fit](https://leichtbau.dlr.de/wp-content/uploads/2022/03/boom_blank_be.png)

---

# Mechanical Properties
What are important properties from an engineer's perspective?
- Material behavior without damage
- Fatigue behavior
- Wear behavior
- When does damage occur
- ...

---

## Stress-Strain Concept
- Detailed in engineering mechanics
$\varepsilon$ - Strain
$\sigma$ - Mechanical stress

---

## 1D Strains
$$\varepsilon = \frac{\Delta l}{l}$$

Example:
$l_0 = 1m$
$l_1 = 1.01m$
$$\varepsilon = \frac{l_1-l_0}{l_0}=0.01\rightarrow 1\%$$

---

## 1D Stresses

$$\sigma = \frac{F}{A}$$

Example:
$F = 100N$
$A = 20mm^2$
$$\sigma = \frac{F}{A} = \frac{100 N}{20 mm^2} = 5 \frac{N}{mm^2}$$

---

# More Dimensionality

---

## Symmetries
- Isotropy
- Transverse isotropy
- Orthotropy
- ...
- Anisotropy
![bg right 80%](../assets/Figures/xyz.png)

<!---
- Discussion; Properties can be direction-dependent
- Practical examples
-->

---

## Mechanical Properties

- **Reversible** deformation, where the deformed material returns to its original shape immediately or after a certain time after the external load is applied: elastic and viscoelastic deformation;

- **Irreversible (permanent)** deformation, where the shape change is retained even after the external load is applied: plastic and viscous deformation;

- Fracture, i.e. a separation of the material caused by the formation and propagation of cracks.

---

## Steel Example

![bg fit right:50%](../assets/Figures/Stress_strain_ductile.svg)

[Curve determination](https://youtu.be/WWAb7Q5DAYw?si=fcnLckvNurSh0LC5)

[Steel data sheet](https://www.stauberstahl.com/fileadmin/Downloads/werkstoffe/Werkstoff-1.2842-Datenblatt.pdf)

<div style="position: absolute; bottom: 10px; right: 0px; color: blue; font-size: 20px;"> 
    <a href="https://commons.wikimedia.org/w/index.php?curid=89891144" style="color: blue;">By Nicoguaro - Own work, CC BY 4.0</a>
</div>

---

# Material Behavior - Reversible
## Elasticity
- Reversible, energy-conserving
- Hooke's Law 1D
Normal stress $\sigma = E\varepsilon$
Shear stress $\tau = G\gamma$

---

## Fundamentals

- Normal strain [-]
$\varepsilon_{mechanical} = \frac{l - l_0}{l_0}$

- Normal stress $\left[\frac{N}{m^2}\right]$, $[Pa]$
$\sigma = \frac{F}{A}=E\varepsilon$
E - Elastic modulus, Young's modulus $\left[\frac{N}{m^2}\right]$

- Relevant e.g. for deformation analyses

![bg right:25%](../assets/Figures/Normalspannung.gif)

---

## Fundamentals - Lateral Contraction

- Poisson's ratio [-]
- $\nu = -\frac{\varepsilon_y}{\varepsilon_x}$
For homogeneous materials $0\leq\nu\leq 0.5$
For heterogeneous materials other configurations are conceivable

![bg fit right:25%](https://upload.wikimedia.org/wikipedia/commons/6/65/Querkontraktion_am_einachsig_gezogenen_Stab.png)

- Relevant e.g. for press fits

---

## Fundamentals - Shear

- Shear strains [-]
$\varepsilon = \frac12(\frac{u_x}{l_0}+\frac{u_y}{b_0})=\frac{\gamma}{2}$

- Shear stress $\left[\frac{N}{m^2}\right]$, $[Pa]$
$\tau = \frac{F_s}{A}= G\gamma$

- Normal and shear stresses are not compatible; therefore equivalent stresses
- G - [Shear](https://de.wikipedia.org/wiki/Kompressionsmodul#Umrechnung_zwischen_den_elastischen_Konstanten_isotroper_Festk%C3%B6rper) modulus $\left[\frac{N}{m^2}\right]$
$G = \frac{E}{2(1+\nu)}$

![bg right:25%](../assets/Figures/Schubspannung.gif)

- Relevant e.g. for torsion (drive trains, torsion springs)

---

## Fundamentals - Compression

$\sigma_h = p = -K \cdot \frac{\Delta V}{V_0}$

$\varepsilon_v = \frac{\Delta V}{V_0} = \varepsilon_1 + \varepsilon_2 + \varepsilon_3$

[Bulk modulus](https://de.wikipedia.org/wiki/Kompressionsmodul#Umrechnung_zwischen_den_elastischen_Konstanten_isotroper_Festk%C3%B6rper) $K = \frac{E}{3(1-2\nu)}$

- Relevant e.g. for hydraulics

![bg right:25%](../assets/Figures/Kompression.gif)

---

| Material                          | E [GPa]   | G [GPa] | ν [-]     |
|:----------------------------------|:----------|:--------|:----------|
| Unalloyed steel                   | 200       | 77      | 0.30      |
| Titanium                          | 110       | 40      | 0.36      |
| Copper                            | 120       | 45      | 0.35      |
| Aluminum                          | 70        | 26      | 0.34      |
| Magnesium                         | 45        | 17      | 0.27      |
| Tungsten                          | 360       | 130     | 0.35      |
| Cast iron with lamellar graphite  | 120       | 60      | 0.25      |
| Thermoplastics/Thermosets         | 2-5       | 1-2     | ca. 0.35  |
| Elastomers                        | 0.1       | 0.03    | 0.45-0.49 |
| Plywood                           | 4-16      | -       | -         |

---

## Stiffness
<details>
<summary>How do material properties relate to stiffness?</summary>

- Material × Cross-sections = Stiffness
- Axial stiffness = $EA$
- Bending stiffness = $EI$
- Torsional stiffness = $GI_P$

</details>

![bg fit right:50%](../assets/Figures/IWES_test.jpg)
<div style="position: absolute; bottom: 10px; left: 520px; color: blue; font-size: 20px;"> 
    <a href="https://doi.org/10.3390/en14092451" style="color: blue;">Image reference</a>
</div>

---

## Viscous Behavior

- Irreversible
- Time-dependent, strain rate-dependent

Spring model $\sigma = E\epsilon$
 - Elastic component
 - Represented by spring elements
<div style="position: absolute; bottom: -10px; left: 500px; color: blue; font-size: 20px;"> 
    <img src="../assets/Figures/spring.svg" alt="Presentation link" style="height:550px;width:auto;vertical-align: top;background-color:transparent;">
</div>

<div style="position: absolute; bottom: -150px; left: 500px; color: blue; font-size: 20px;"> 
    <img src="../assets/Figures/damper.svg" alt="Presentation link" style="height:550px;width:auto;vertical-align: top;background-color:transparent;">
</div>

Damper $\sigma = \eta\dot{\epsilon}=\eta\frac{\partial \epsilon}{\partial t}$
- Viscous component
- Represented by damper elements

---

- Fast loading -> behavior is elastic
- Slow loading -> material flows
- [Fast loading](https://en.wikipedia.org/wiki/File:Sillyputty.ogv)

![bg right:30% fit](https://upload.wikimedia.org/wikipedia/commons/f/f3/Silly_putty_dripping.jpg)

---

## Hardness

Resistance of a material to the penetration of a harder test body

**Dependence on:**
- Type and strength of bonding
- Crystal structure
- Microstructure and grain size
- Alloying elements
- Heat treatment

**Significance:**
- Wear resistance
- Machinability

---

# Material Behavior - Irreversible

---

## Strength

[The strength of a material describes the load-bearing capacity under mechanical loads before failure occurs, and is specified as mechanical stress $\left[N/m^2\right]$. Failure can be an **unacceptable deformation**, in particular a **plastic (permanent) deformation** or a **fracture**.](https://de.wikipedia.org/wiki/Festigkeit)

>Important: Strength ≠ Stiffness

---

## Plasticity

- [Forging](https://youtu.be/AxLszR6fkLM?si=k6A9aOVfQceOK9v0&t=80)
- [Rolling](https://www.youtube.com/watch?v=WOTO64HgnXc)

---
## Ductility
### Reduction of Area (Necking)
$$Z = \frac{A_0 - A_f}{A_0} \cdot 100\%$$
- A₀ = Initial cross-sectional area [mm²]
- A_f = Cross-sectional area at fracture [mm²]
- Z = Reduction of area [%]

The reduction of area describes the **relative decrease in cross-section** of a material under tensile loading until fracture.

---

## Ductility Assessment
### Interpretation of Reduction of Area

| Z-Value | Ductility | Material Behavior |
|--------|------------|-------------------|
| Z < 5% | Brittle | Ceramics, cast iron |
| 5% ≤ Z < 20% | Moderately ductile | High-strength steels |
| 20% ≤ Z < 50% | Ductile | Structural steels |
| Z ≥ 50% | Highly ductile | Pure copper, aluminum |

---

## Significance
**High reduction of area (Z > 40%)** means:
- Material can withstand large plastic deformations
- Good formability (forging, deep drawing)
- Fracture warning through visible necking
- High energy absorption before failure

**Low reduction of area (Z < 10%)** means:
- Brittle failure without warning
- Low formability
- Little energy absorption

---

## Toughness (Fracture Work)
![bg fit right:50%](../assets/Figures/Stress_strain_ductile.svg)

**True Strain and Stress**
$$\varepsilon_{true} = \ln\left(\frac{L}{L_0}\right) = \ln(1 + \varepsilon_{nom})$$
$$\sigma_{true} = \sigma_{nom} \cdot (1 + \varepsilon_{nom}) = \frac{F}{A}$$
- F = Force
- A = Current cross-sectional area

---

### Toughness as Energy Absorption
$$U = \int_0^{\varepsilon_f} \sigma_{true} \, d\varepsilon_{true}$$
- U = Specific toughness [J/m³]
- ε_f = Fracture strain

![bg fit right:50%](../assets/Figures/Stress_strain_ductile.svg)

<div style="position: absolute; bottom: 10px; right: 0px; color: blue; font-size: 20px;">
    <a href="https://commons.wikimedia.org/w/index.php?curid=89891144" style="color: blue;">By Nicoguaro - Own work, CC BY 4.0</a>
</div>

---

A tough material combines:
- **High strength** (σ) → resists high stresses
- **High ductility** (ε) → deforms significantly before fracture

**Toughness = Survivability of a material under extreme conditions**

---

## Toughness Values of Typical Materials

| Material | Toughness [MJ/m³] | Characteristic |
|----------|-------------------|----------------|
| Glass | 0.01 | Extremely brittle |
| Cast iron | 1-3 | Brittle |
| High-strength steel | 50-100 | Strong, moderately ductile |
| Structural steel | 100-200 | Optimally tough |
| Aluminum | 70-200 | Light and tough |
| Copper | 200-400 | Highly ductile |
| Rubber | 10-100 | Elastic-ductile |

