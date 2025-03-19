---
marp: true

theme: default
header: ''
footer: ''
backgroundImage: url('../assets/styles/background.png')
title: Materials-and-Production-Engineering-Lectures Corrosion
author: Christian Willberg
---

<style>
footer {
    font-size: 14px; /* Change footer font size */
    color: #888; /* Change footer color */
    text-align: right; /* Change footer alignment */
}
</style>


## Lecture on Materials Science - Alloy (1/3)
Prof. Dr.-Ing. Christian Willberg<a href="https://orcid.org/0000-0003-2433-9183"><img src="../assets/styles/ORCIDiD_iconvector.png" alt="ORCID symbol" style="height:15px;width:auto;vertical-align: top;background-color:transparent;"></a>
Magdeburg-Stendal University of Applied Sciences 

![bg right](https://wiki.arnold-horsch.de/images/6/6e/EKD-1.jpg)

Contact: christian.willberg@h2.de
Parts of the script are adopted from \
Prof. Dr.-Ing. Jürgen Häberle


---

<!--paginate: true-->

# Content


![bg right 70%](../assets/QR/stream_wst_06.png)




---

# Terminology

## Alloy
- Mixture of multiple types of atoms (_components_) with _metallic character_
- Components:
  - Mostly metallic (Cu, Ni)
  - Non-metallic (C, P, S, N, O)
- Variations:
  - Which components
  - Number of components
  - Concentration of components

---

## Chemical Composition or Concentration
**Mass fraction, weight fraction, mass percent (synonym)**  
$\frac{m_1}{\sum_i m_{i}}\cdot 100 = m_{1-rel}$ in [%]  
E.g., $m_{Cu-rel}=\frac{m_{Cu}}{m_{Cu}+m_{Fe}}\cdot 100$  

Masses $m$ of components differ.

**Atomic fraction**  
$\frac{n_1}{\sum_i n_{i}}\cdot 100 = n_{1-rel}$ in [%]  
E.g., $n_{Cu-rel}=\frac{n_{Cu}}{n_{Cu}+n_{Fe}}\cdot 100$

If masses $m$ of components are similar, then $n_{rel}$ and $m_{rel}$ are equal.

---

## Exercise

1 kg alloy 25% Ni - 75% Cu.  

What are the masses of Cu and Ni for mass fraction and atomic fraction?

---
## Solution


Mass Fraction


$m_{Ni}=0.75\cdot 1kg = 0.75 kg$  
$m_{Cu}=0.25\cdot 1kg = 0.25 kg$


Atomic Fraction


$A_{Cu}= 63.54 u$ - Atomic mass unit $u = 1.66\cdot 10^{-27}kg$  
$A_{Ni}= 58.69 u$  
$m = n_{Cu}A_{Cu}+n_{Ni}A_{Ni}$  
$n_{Cu} = 0.25n$, $n_{Ni} = 0.75n$  
$m=(0.25A_{Cu}+0.75A_{Ni})n$  
$n = \frac{m}{0.25A_{Cu}+0.75A_{Ni}}=1.00565E+25$  
$m_{Cu}=n_{Cu}A_{Cu}=0.2449kg$  
$m_{Ni}=n_{Ni}A_{Ni}=0.7551kg$

---

## Phase

Commonly understood in terms of the state of matter (solid, liquid, gas, plasma)

**General Definition**  
A phase is a chemically and physically uniform, homogeneous part of an alloy or matter in general.

---

Phase changes can be categorized into:  
- Transformations  
- Precipitations  

---


## Transformations

- Unstable lattice modifications convert into stable ones.  
- Below an equilibrium temperature (e.g., $\gamma-Fe$ to $\alpha-Fe$).  
- In alloys, the configuration of solid solutions can change, altering concentration (e.g., $\gamma$-MK to $\alpha$-MK).  

---

## Precipitations
- Solubility decreases (with temperature change)
- Phases (one or more) precipitate out of the solid solution
- Requires mass transport (diffusion) → physical work (heat) and time

---

## Diffusion

- Diffusion, in general, is temperature- and time-dependent
- Involves mass transport  
Described by Fick's First Law:  
$dm_A=-D\frac{dc_A}{dx}Sdt$  
with  
$D=D_0exp(-\frac{Q_A}{RT})$  
- $D_0$ - Diffusion constant  
- $Q_A$ - Activation energy / heat  

_The model can also be applied to describe gas diffusion from tanks._

---

## Gibbs' Phase Rule

$F = n - P + 2$  
(for gases and liquids)  
F = Number of degrees of freedom; n = Number of components; P = Number of phases  

At constant pressure (solid substances):  
        
$F = n - P + 1$  

For cooling and heating curves in metallic systems, this results in:  
F = 0 → A plateau  
F = 1 → A gradient change

---

<details>
<summary>Single Phase</summary>
<div>
- Pure aluminum  
- Pure iron  
- Water  
</div>
</details>

<details>
<summary>Two Phases</summary>
<div>
- Mist  
- Supersaturated solutions  
</div>
</details>

<details>
<summary>Solid Solution</summary>
<div>
A solid solution is a chemically homogeneous, uniform crystal consisting of multiple types of atoms.  
</div>
</details>

![bg right 60%](https://upload.wikimedia.org/wikipedia/commons/a/a8/114_once_an_iceberg_now_a_Growler_and_a_scupture_V-P_%28cropped%29.jpg)  
![bg vertical 60%](https://upload.wikimedia.org/wikipedia/commons/4/4e/Nuclear_Power_Plant_Cattenom.jpg)

---

# Solid Solutions

- At least 2 types of atoms
- Heterogeneity becomes visible only at atomic dimensions
- Most metals can incorporate a certain number of foreign atoms in their lattice
- This leads to "strain" in the lattice  

- Known as "solid solution"

---

## Types of Solid Solutions

![bg right fit](../assets/Figures/mischkristalle.png)

<div style="position: absolute; bottom: 10px; left: 520px; color: blue; font-size: 20px;"> 
    <a href="http://anorganik.chemie.vias.org/img/mischkristalle.png" style="color: blue;">Image Source</a>
</div>

**Substitutional Solid Solution**  
- Similar chemical properties  
- Similar diameters  
- Same crystal lattice  

---

## Types of Solid Solutions (continued)

![bg right fit](../assets/Figures/mischkristalle.png)

<div style="position: absolute; bottom: 10px; left: 520px; color: blue; font-size: 20px;"> 
    <a href="http://anorganik.chemie.vias.org/img/mischkristalle.png" style="color: blue;">Image Source</a>
</div>

**Interstitial Solid Solution**  
- Smaller atoms  
- Fit into gaps in the crystal lattice (interstitial atoms)  
- Second component is dissolved  
- Diameter ratio $f=\frac{d}{D}\leq 0.41$  

_Both types are single-phase._

---

## Intermetallic Phase / Intermediate Crystals

- Usually a complex lattice structure, independent of parent lattices (hundreds of atoms)
- Strong attractive forces between atom types
- In addition to metallic bonds, covalent and ionic bonds are present  
→ Binding form lies between chemical and metallic → intermediate  

---

- These are very hard and brittle  
- Technical alloys usually contain less than 10% of these phases  
- Important subgroup → interstitial phases (interstitial structures):  
  - Carbides, borides, nitrides  
  - Used in tool steels and heat-resistant steels  

---

# Microstructure of Materials

- Characterized by the type, size, shape, orientation, and arrangement of individual components (phases) such as crystallites (grains), amorphous areas, and reinforcement or filler materials  
![bg right 60%](https://upload.wikimedia.org/wikipedia/commons/a/a7/Vanadium-bar.jpg)  
![bg vertical 60%](https://upload.wikimedia.org/wikipedia/commons/5/5e/AlubronzeCuAl20v500.png)

---

## Formation of Microstructure

Melt  → Cooling / Undercooling  
↓  
Nucleation (homogeneous + heterogeneous)  
↓  
Nucleus Growth → Crystallization  
↓  
Formation of Crystallites (grains with grain boundaries)  
↓  
∑ of all grains and grain boundaries  → Microstructure  

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/a/a7/Gefuegebildung.png)

---

## Nucleation

- Solidification does not occur uniformly → nuclei form  
- Can be homogeneous (of the same type) or heterogeneous (of different types)  
- Nuclei grow (crystal growth) until the entire melt has solidified  
- Relationships exist between the number of nuclei (N) and the crystallization rate (R) on one hand, and the degree of undercooling ΔT on the other.  

---

## Factors Influencing Grain Size Formation

![](../assets/Figures/Korngroesse.png)  
a) → Fine-grained structure  $\qquad$	b)  → Coarse-grained structure  

- High number of nuclei → fine-grained structure  
- Rapid crystal growth and low nucleus count → coarse-grained structure  

---

## Terminology  
**Grain**  
- Nuclei have finished growing and meet each other  
- Crystal orientation between neighboring grains is generally different  
- Shape and size are determined by heat flow:  
  - Uniform in all directions - _globular_  
  - Preferential direction of heat flow - _columnar solidification_  

**Grain Boundary**  
- Transition surfaces between grains  

---

## Casting or Continuous Casting

- During casting or continuous casting into a metal mold, a casting structure forms in three zones, typically with distinct boundaries:

---

1. Fine-Grained Globular Boundary Zone  
- Strong undercooling of the melt at the mold wall  
- Formation of numerous nuclei → small, uniform crystallites  

![bg right 80%](../assets/Figures/Kokille.png)

---

2. Columnar Zone with Stem-Shaped, Very Coarse Crystallites  
- Directed growth of crystallites (stem crystals), with crystallographic orientation aligned with the direction of the heat gradient  
- This orientation results in a casting texture  

![bg right 80%](../assets/Figures/Kokille.png)

---

3. Globular Core Zone  
- Impurities are pushed by stem crystals and accumulate at the core  
- High number of foreign nuclei → globular fine-grained core zone  
- In very pure metals, a coarse-grained structure is observed in the third zone  

![bg right 80%](../assets/Figures/Kokille.png)

---

# Microstructure Detection

- Generally, individual crystallites (grains) in a material are not visible to the naked eye. 
- For materials science investigations, however, it is necessary to analyze the existing microstructure. 
- Work steps:
  - targeted sample extraction 
  - grinding and polishing the sample
  - etching the surface

---

## Metallographic Sections
- A carefully prepared section can be viewed with a light or scanning electron microscope. 
- The scanning electron microscope not only offers significantly higher resolution but also greater depth of field.


---

## Etching
Etching for microstructure development can also be regarded as a corrosion process.

Grain boundary etching
- preferential dissolution of grain boundaries

![bg right 50%](../assets/Figures/Korngrenzenaetzung.png)

---

Grain surface etching
- adjacent grain sections are roughened or covered with oxide layers to different extents
- grains reflect light differently 


![bg right 60%](../assets/Figures/Kornflaechenaetzung.png)

---
## Macro Sections

Using macro etching, only those microstructural phenomena that are visible to the naked eye or under a magnifying glass can be studied. The following analyses are possible:
- Segregation and its localization: Heyn and Oberhoffer etching or Baumann print
- Quality of welds: Adler etching
- Development of force flow lines after plastic deformation: Fry etching

---

## Terms for the Qualitative and Quantitative Description of Microstructures

Metallography - Metals  
Ceramography - Ceramics  
Plastography - Polymer materials

