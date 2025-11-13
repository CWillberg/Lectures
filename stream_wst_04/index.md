---
marp: true
theme: default
header: ''
footer: ''
backgroundImage: url('../assets/styles/background.png')
title: Lecture Alloy Formation
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
    padding: 0 20px;
}

.centered-image {
    display: block;
    margin: 0 auto;
}
</style>

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
</style>

## Materials Science Lecture - Alloy Formation
Prof. Dr.-Ing. Christian Willberg [![ORCID](../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)

![bg right](https://wiki.arnold-horsch.de/images/6/6e/EKD-1.jpg)

Contact: christian.willberg@h2.de
Parts of the script are adopted from Prof. Dr.-Ing. Jürgen Häberle

---

<!--paginate: true-->

# Contents

- **Basic concepts** of alloy formation
- **Crystal formation** and microstructure development
- **Phase diagrams** and phases
- **Diffusion** and mass transport

![bg right 70%](../assets/QR/stream_wst_04.png)

---

# What is an Alloy?

## Alloy
- **Origin:** from Latin "ligare" = to bind together, connect, unite
- **Definition:** Mixture of multiple atom types (_components_) with _metallic character_

## Components can be:
- **Metallic:** Cu (Copper), Ni (Nickel), Fe (Iron), Al (Aluminum)
- **Non-metallic:** C (Carbon), P (Phosphorus), S (Sulfur), N (Nitrogen), O (Oxygen)

<!-- 🖼️ INSERT IMAGE: Schematic representation of different alloy types (e.g., steel, bronze, brass) -->

---

# Why Alloys?

**Advantages over pure metals:**
- Higher strength
- Better corrosion resistance
- Improved processing properties
- Adjustable mechanical properties
- Economic efficiency

**Everyday examples:**
- Steel (Fe + C)
- Bronze (Cu + Sn)
- Brass (Cu + Zn)

<!-- 🖼️ INSERT IMAGE: Everyday objects made from different alloys -->

---

# Concentration and Composition

### 1. Mass fraction (Weight percent)
$$m_{rel} = \frac{m_1}{\sum_i m_i} \cdot 100 \text{ [\%]}$$

### 2. Atomic fraction (Atomic percent)
$$n_{rel} = \frac{n_1}{\sum_i n_i} \cdot 100 \text{ [\%]}$$

---

# When are both specifications equal?

**Note:**
- When atomic masses are **similar** → $m_{rel} \approx n_{rel}$
- When atomic masses are **different** → $m_{rel} \neq n_{rel}$

**Example:**
- Cu (63.54 u) and Ni (58.69 u) → similar masses
- Fe (55.85 u) and C (12.01 u) → very different masses!

<!-- 🖼️ INSERT IMAGE: Comparison chart mass fraction vs. atomic fraction -->

---

## Exercise

An alloy with 1 kg total mass contains:
- **25 atomic-% Ni**
- **75 atomic-% Cu**

**Questions:**
1. What is the mass of Ni and Cu for the **atomic fraction**?
2. What would the mass be for a **mass fraction** of 25% Ni and 75% Cu?

**Given:**
- $A_{Cu} = 63.54$ u; $A_{Ni} = 58.69$ u; $u = 1.66 \times 10^{-27}$ kg

---

# Solution - Part 1: Mass Fraction

<details>
<summary>🔍 Show solution</summary>

If **mass fraction** is given (25% Ni, 75% Cu):

$$m_{Cu} = 0.75 \cdot 1\text{ kg} = 0.75\text{ kg}$$
$$m_{Ni} = 0.25 \cdot 1\text{ kg} = 0.25\text{ kg}$$

</details>

---

<details>
<summary>🔍 Show solution</summary>

**Given:** 25 atomic-% Ni, 75 atomic-% Cu, total mass = 1 kg

$$m = n_{Cu} \cdot A_{Cu} + n_{Ni} \cdot A_{Ni}$$

$$m = (0.25 \cdot A_{Cu} + 0.75 \cdot A_{Ni}) \cdot n$$

$$n = \frac{m}{0.25 \cdot A_{Cu} + 0.75 \cdot A_{Ni}} = \frac{1\text{ kg}}{0.25 \cdot 63.54 + 0.75 \cdot 58.69} \cdot u$$
$$n = 1.00565 \times 10^{25} \text{ atoms}$$

$$m_{Cu} = n_{Cu} \cdot A_{Cu} = 0.2449\text{ kg}$$
$$m_{Ni} = n_{Ni} \cdot A_{Ni} = 0.7551\text{ kg}$$

</details>

---

# What is a Phase?

**General definition:**
> A phase is a chemically and physically **uniform homogeneous constituent** of an alloy or matter in general.

## Known from states of matter:
- Solid (s)
- Liquid (l)
- Gaseous (g)
- Plasma (p)

**But:** In alloys, there are more than just states of matter!

<!-- 🖼️ INSERT IMAGE: Phase diagram of water with Solid/Liquid/Gas -->

---

# Phase Examples

<div class="container">
<div class="col">

## Single-phase
- Pure aluminum
- Pure iron
- Liquid water
- Water vapor

</div>
<div class="col">

## Two-phase
- Fog (water + air)
- Ice in water
- Supersaturated solutions
- Many technical alloys

</div>
</div>

![bg right 60%](https://upload.wikimedia.org/wikipedia/commons/a/a8/114_once_an_iceberg_now_a_Growler_and_a_scupture_V-P_%28cropped%29.jpg)

---

# Phase Changes

**1. Transformations**
- Unstable lattice modifications transform into stable ones
- Below an **equilibrium temperature**
- Example: $\gamma$-Fe → $\alpha$-Fe upon cooling below 911°C
- In alloys: Change in solid solution configuration

**2. Precipitations**
- **Solubility** decreases (usually due to temperature change)
- Phases precipitate from the solid solution
- Requires **mass transport** (diffusion)
- Needs **heat** and **time**

---

## Diffusion - The Foundation
**Definition:** Temperature and time-dependent mass transport

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 2em;">

<div>

**1st Fick's Law:**
$$dm_A = -D \frac{dc_A}{dx} S \, dt$$
$$D = D_0 \exp\left(-\frac{Q_A}{RT}\right)$$
**Parameters:**
- $dm_A$ = diffused amount of component A
- $D$ = diffusion coefficient

</div>

<div>

- $c_A$ = concentration of component A
- $x$ = spatial coordinate
- $S$ = cross-sectional area
- $t$ = time
- $D_0$ = diffusion constant
- $Q_A$ = activation energy
- $R$ = gas constant
- $T$ = absolute temperature

</div>

</div>

---

# Diffusion
**Important for:**
- Steel hardening (case hardening, nitriding)
- Galvanizing
- Annealing
- Welding
- Soldering

**Also outside metallurgy:**
- Gas diffusion from tanks
- Diffusion of gases through membranes
- Corrosion

---

# Solid Solutions

**Definition:**
> A solid solution is a chemically homogeneous, uniform crystal built from **multiple atom types**.

**Properties:**
- At least 2 atom types
- **Homogeneous** on macroscopic level
- Heterogeneity only visible at atomic level
- English: "solid solution"
- Leads to "strains" in the lattice

---

## Types of Solid Solutions

![bg right fit](../assets/Figures/mischkristalle.png)

**1. Substitutional Solid Solution**

- Similar chemical character
- Similar atomic diameter (< 15% difference)
- Same crystal lattice

**Examples:**
- Cu-Ni (completely miscible)
- Cu-Zn (brass)

<div style="position: absolute; bottom: 10px; left: 520px; color: blue; font-size: 20px;"> 
    <a href="http://anorganik.chemie.vias.org/img/mischkristalle.png" style="color: blue;">Image source</a>
</div>

---

## Types of Solid Solutions

![bg right fit](../assets/Figures/mischkristalle.png)

**2. Interstitial Solid Solution**

- **Smaller** atoms
- Diameter ratio: $f = \frac{d}{D} \leq 0.41$
- Atoms in gaps (interstitial sites)

**Examples:**
- C in Fe (steel!)
- N in Fe (nitriding)

**Important:** Both types are **single-phase**!

<div style="position: absolute; bottom: 10px; left: 520px; color: blue; font-size: 20px;"> 
    <a href="http://anorganik.chemie.vias.org/img/mischkristalle.png" style="color: blue;">Image source</a>
</div>

---

# Intermetallic Phases

**Characteristics:**
- Complex lattice structure (several hundred atoms)
- Independent of parent lattices
- **Strong attractive forces** between atom types
- Bonding type: metallic + covalent + ionic
  - → **Intermediate** between metallic and chemical

**Properties:**
- Very **hard**
- Very **brittle**
- In technical alloys usually < 10%

---

## Important Intermetallic Phases

**Interstitial Phases (Insertion Structures)**

**Carbides:**
- Fe₃C (cementite) in steel
- Cr₂₃C₆ in stainless steels
- WC in hard metals

**Others:**
- Nitrides (e.g., Fe₄N)
- Borides (e.g., Fe₂B)

![bg right 60%](https://upload.wikimedia.org/wikipedia/commons/5/58/Cementite.png)

---

**Applications:**
- Tool steels
- Heat-resistant steels
- Wear-resistant coatings

---

# Microstructure of Materials

**Definition:**
Characterized by **type, size, shape, orientation, and arrangement** of individual constituents (phases):
- Crystallites (grains)
- Amorphous regions
- Reinforcements
- Fillers

![bg right 60%](https://upload.wikimedia.org/wikipedia/commons/a/a7/Vanadium-bar.jpg)
![bg vertical 60%](https://upload.wikimedia.org/wikipedia/commons/5/5e/AlubronzeCuAl20v500.png)

---

# Microstructure Formation - Process

    A[Melt] --> B[Cooling / Undercooling]
    B --> C[Nucleation homogeneous + heterogeneous]
    C --> D[Nucleus growth]
    D --> E[Crystallization]
    E --> F[Crystallite formationGrains + grain boundaries]
    F --> G[Microstructure]

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/a/a7/Gefuegebildung.png)

---

# Nucleation

## Two Types:

### Homogeneous Nucleation
- **Native** nuclei
- Fluctuations in the melt
- Higher undercooling required
- Rarer in practice

---

### Heterogeneous Nucleation
- **Foreign** nuclei (impurities, mold wall)
- Lower undercooling required
- Most common form in practice
- Can be used purposefully (inoculation)

---

# Crystal Growth

**Relationships:**
- **Number of nuclei (KZ)** depends on undercooling
- **Crystallization rate (KG)** depends on undercooling

## Effect on Grain Size:

| Condition | Result |
|-----------|--------|
| Many nuclei + slow growth | Fine-grained |
| Few nuclei + fast growth | Coarse-grained |

**Note:** Fast cooling → many nuclei → fine-grained!

---

# Effect of Grain Size

![](../assets/Figures/Korngroesse.png)

---

<div class="container">
<div class="col">

## a) Fine-grained Microstructure
- Many nuclei
- Fast cooling
- **Advantages:**
  - Higher strength
  - Better toughness
  - More uniform properties

</div>
<div class="col">

## b) Coarse-grained Microstructure
- Few nuclei
- Slow cooling
- **Disadvantages:**
  - Lower strength
  - More brittle
  - Anisotropic properties

</div>
</div>

---

# Terms: Grain and Grain Boundary

## Grain (Crystallite)
- Nuclei have completed growth
- Grains meet each other
- **Crystal orientation** between grains is different

**Shape determined by heat flow:**
- Uniform in all directions → **globular** (spherical)
- Preferred direction → **transcrystalline** solidification (columnar)

---

## Grain Boundary
- Transition surfaces between grains
- Disturbed lattice structure
- Important for mechanical properties!

---

# Casting and Continuous Casting - Three Zones

![bg right 80%](../assets/Figures/Kokille.png)

When casting into a metal mold (chill), **three characteristic zones** form:

1. **Fine-grained outer zone**
2. **Transcrystalline zone**
3. **Globular core zone**

---

## Zone 1: Fine-grained Outer Zone

![bg right 80%](../assets/Figures/Kokille.png)

**Formation:**
- Strong **undercooling** at mold wall
- Many crystal nuclei form simultaneously
- Rapid solidification

**Result:**
- Small, uniform crystallites
- Globular shape
- Fine-grained microstructure

---

## Zone 2: Transcrystalline Zone

![bg right 80%](../assets/Figures/Kokille.png)

**Formation:**
- **Directional** growth of crystallites
- Growth opposite to heat flow
- Crystallographic orientation parallel to temperature gradient

---

## Zone 2: Transcrystalline Zone
![bg right 80%](../assets/Figures/Kokille.png)
**Result:**
- **Columnar crystals** (very coarse)
- Pronounced preferred orientation
- → **Cast texture** develops
- **Anisotropic** properties

---

## Zone 3: Globular Core Zone

![bg right 80%](../assets/Figures/Kokille.png)

**Formation:**
- Impurities are "pushed ahead" by columnar crystals
- Enrichment in core (**segregation**)
- Many **foreign nuclei**

**Result in normal metals:**
- Globular, fine-grained structure

**In very pure metals:**
- Coarse-grained microstructure
- [Crystal Growth in Water](https://youtu.be/xlxFVIw_Esc?si=Dqws4vs14SN5CU4y&t=7)

---

## Welding - Microstructure Formation

**Similar zones as in casting:**
- Heat-affected zone (HAZ)
- Fusion zone with solidification microstructure
- Transition zone

**Special features:**
- Very fast cooling possible
- Fine-grained microstructure
- But: Risk of hardening

![bg right 70%](https://tse1.mm.bing.net/th/id/OIP.tK_WZq_J28dNU-D5WwcJhwHaC8?pid=Api)

![bg vertical 70%](https://s3.eu-central-1.amazonaws.com/weka-alps-media/media/factory/_1200x630_crop_center-center_82_none/4687.png?mtime=1640248699)

<!-- 🖼️ INSERT IMAGE: Detailed cross-section weld seam with zone labels -->

---

## Microstructure Analysis - Why?

**Problem:**
- Crystallites are normally **not visible**
- Materials science investigations require visualization

**Goal:**
- Analyze microstructure
- Determine grain size
- Examine phase distribution
- Detect defects

<!-- 🖼️ INSERT IMAGE: Comparison: unetched vs. etched sample -->

---

# Microstructure Analysis - Work Steps

## Sample Preparation:

1. **Targeted sample extraction**
   - Select representative location
   - Gentle separation (avoiding microstructure influence)

2. **Grinding**
   - Various grits (coarse → fine)
   - Create plane surface

3. **Polishing**
   - Diamond suspension or oxide polishing
   - Mirror-smooth surface

4. **Etching**
   - Chemical etching for contrast formation

---

## Microsections

**Investigation methods:**

**Light microscope**
- Up to approx. 1000× magnification
- Simple handling
- Sufficient for many applications

**Scanning electron microscope (SEM)**
- Up to > 100,000× magnification
- **Higher resolution**
- **Greater depth of field**
- Elemental analysis possible (EDX)

---

# Etching Methods

**Etching = controlled corrosion process**

## 1. Grain Boundary Etching
- Preferential dissolution of **grain boundaries**
- Grain boundaries appear as dark lines
- Grains become visible

![bg right 50%](../assets/Figures/Korngrenzenaetzung.png)

---

## Etching Methods

## 2. Grain Surface Etching
- Grain sections are roughened differently
- Or: different oxide layer thicknesses
- Grains reflect light with **different intensities**
- → Contrast formation through various gray tones

![bg right 60%](../assets/Figures/Kornflaechenaetzung.png)

---

## Macrosections

**Definition:** Microstructure examination with naked eye or magnifying glass

**Applications:**

1. **Detect and localize segregations**
   - Etching according to Heyn and Oberhoffer
   - Baumann print (for sulfur)

2. **Quality of welded joints**
   - Adler etching

3. **Lines of force** after plastic deformation
   - Etching according to Fry
   - Visualize fiber flow

<!-- 🖼️ INSERT IMAGE: Example macrosection with fiber orientation after forming -->

---

# Technical Terms for Microstructure Description

## Scientific Disciplines:

| Material | Field |
|----------|-------|
| Metals | **Metallography** |
| Ceramics | **Ceramography** |
| Polymers | **Plastography** |

**Qualitative description:** Microstructure shape, phase distribution
**Quantitative description:** Grain size, phase fractions, grain size distribution

---

# Grain Boundaries in Detail

[🎬 Video on crystal growth](https://youtu.be/xlxFVIw_Esc?si=Dqws4vs14SN5CU4y&t=7)

**Important effect:**
- Insoluble constituents and impurities are **pushed ahead** by crystal fronts
- Enrichment at grain boundaries
- → **Grain boundary substances**

![bg right 70%](https://wiki.arnold-horsch.de/images/a/a5/16MnCrS5-CRIDA_Gr%C3%BCn.jpg)

<!-- 🖼️ INSERT IMAGE: Schematic representation of segregation at grain boundaries -->

---

## Influence of Grain Boundary Substances

### Case 1: Deformable Grain Boundary Substance
- Material behavior is dominated by **grains**
- Good ductility
- Example: Pure metals with low impurities

### Case 2: Brittle Grain Boundary Substance
- Material behavior is dominated by **grain boundaries**
- Intergranular fractures
- → **Embrittlement** of material!
- Example: Phosphorus segregation in steel

**Important for:** Weldability, hot forming, toughness

---

# Summary

**Key points of this lecture:**

✓ Alloys = multi-component systems with metallic character
✓ Concentration: mass fraction ≠ atomic fraction (except for similar atomic masses)
✓ Phases = homogeneous regions with uniform properties
✓ Diffusion = temperature and time-dependent mass transport
✓ Solid solutions: substitutional and interstitial
✓ Microstructure develops through nucleation and crystal growth
✓ Grain size significantly influences mechanical properties
✓ Microstructure analysis through sectioning and etching

---

# Outlook - Next Lecture

**Phase Diagrams:**
- How do we read phase diagrams?
- Lever rule
- Eutectic and eutectoid
- Practical application: Iron-carbon diagram

**Preparation:**
- Review: phases, concentration, solubility
- Practice problems on alloy compositions

---

# References

**Textbooks:**
- Rainer Schwab: *Werkstoffkunde und Werkstoffprüfung für Dummies*, 2019; ISBN-10: 352771538X

**Online Resources:**
- [Fundamentals of Metallurgy](https://wiki.arnold-horsch.de/index.php/Grundlagen_der_Metallkunde)


<!-- 🖼️ INSERT IMAGE: QR codes to additional learning resources -->

---

# Thank You for Your Attention!

**Questions?**

📧 christian.willberg@h2.de
🔗 [ORCID](https://orcid.org/0000-0003-2433-9183)

**Next Lecture:**
Phase Diagrams and Phase Equilibria

<!-- 🖼️ INSERT IMAGE: Motivating image on materials science -->