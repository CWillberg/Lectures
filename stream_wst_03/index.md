---
marp: true

theme: default
header: 'Real Structures and Properties'
footer: ''
backgroundImage: url('../assets/styles/background.png')
title: Real Structures and Properties
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
    padding: 0 20px; /* Column spacing */
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
img[alt="ORCID"] {
    height: 15px !important;
    width: auto !important;
    vertical-align: top !important;
    display: inline !important;
    margin: 0 !important;
}
</style>


## Fine Structure
Prof. Dr.-Ing.  Christian Willberg [![ORCID](../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)

![bg right:35% fit](../assets/Figures/kfz.png)

Contact: christian.willberg@h2.de
Parts of the script are taken from \
Prof. Dr.-Ing. Jürgen Häberle

---

## Contents

- Identify and characterize crystal structures
- Understand molecular structures and their composition
- Describe real structures of crystals with their defects
- Explain relationships between structure and mechanical properties
- Plastic deformation mechanisms

![bg right 60%](../assets/QR/wst_mb_03.png)




---

<!--paginate: true-->



## Why is Fine Structure Important?

**Structure Determines Properties**

- Mechanical properties (strength, ductility)
- Electrical conductivity
- Thermal behavior
- Optical properties
- Chemical resistance

---

## Space Lattice

- Created by three-dimensional periodic displacement of its building blocks
- Characterized by three spatial axes x, y, and z with angles α, β, γ and the distances on the axes that define the respective space lattice
- a₀, b₀, and c₀ (lattice constants) → unit cell


![bg fit right 80%](../assets/Figures/einheitszelle.png)

---

| Crystal System   | Lattice Constants      | Angles        | Examples                                                 |
|------------------|-----------------------|------------------------------------|-----------------------------------------------------------|
| triclinic          | a₀ ≠ b₀ ≠ c₀          | α ≠ β ≠ γ ≠ 90°                    | Silicate minerals                                           |
| monoclinic         | a₀ ≠ b₀ ≠ c₀          | α = γ = 90°; β ≠ 90°               | Mo₂S₃; β-Pu                                                |
| (ortho)rhombic | a₀ ≠ b₀ ≠ c₀          | α = β = γ = 90°                    | U, S, P, Ga, γ-Sn                                          |
| rhombohedral    | a₀ = b₀ = c₀          | α = β = γ ≠ 90°                    | As, Hg, Sb                                                 |
| hexagonal        | a₀ = b₀ ≠ c₀          | α = β = 90°; γ = 120°              | α-Ti, Mg, Zn                                               |
| tetragonal       | a₀ = b₀ ≠ c₀          | α = β = γ = 90°                    | B, CuTi₃, Sn (T > 13.5°)                                   |


---

## Most Common Lattice Forms in Metals

| Crystal System   | Lattice Constants      | Angles        | Examples                                                 |
|------------------|-----------------------|------------------------------------|-----------------------------------------------------------|
| cubic          | a₀ = b₀ = c₀          | α = β = γ = 90°                    | Cu, Al, Ni, Au, Ag; γ-iron (fcc); α-iron, V, Cr, W (bcc); Mn, Po (sc) |

---

## Crystallographic Designations

**Packing Density** = Volume of atoms / Volume of unit cell


---

Face-Centered Cubic (fcc)
- 4 atoms per unit cell
- Packing density: 74%
- Coordination number: 12
![bg right 30%](../assets/Figures/kfz.png)

Body-Centered Cubic (bcc)
- 2 atoms per unit cell
- Packing density: 68%
- Coordination number: 8

![bg vertical 30%](../assets/Figures/krz.png)

---


Hexagonal Close-Packed (hcp)
- 2 atoms per unit cell
- Packing density: 74%
- Coordination number: 12

![bg right 30%](../assets/Figures/hdp.png)

---

## Packing Density and Properties

**Packing Density** = Volume of atoms / Volume of unit cell

| Structure | Packing Density | Typical Properties |
|----------|----------------|------------------------|
| fcc | 74% | Ductile, easily deformable |
| hcp | 74% | Anisotropic, limited ductility |
| bcc | 68% | Higher strength, more brittle |



---

## Crystal planes

**Miller Indices**
- Planes: (h k l)
- Directions: [h k l]

![bg right fit 40%](https://upload.wikimedia.org/wikipedia/commons/d/d5/Miller_Indices_Felix_Kling.svg)



---


## Influences of Crystal Structure

- **Corrosion**: Attack by aggressive media occurs on preferred planes
- **Deformation**: Plastic deformation occurs along preferred crystallographic planes and directions → slip systems
- **Ultrasound**: Use of quartz oscillators with special crystallographic boundary surfaces
- **Conductivity**: Use of germanium or silicon wafers in (1 1 1) or (1 0 0) orientation for semiconductor elements
- **Magnetization**: Easiest magnetization of iron-silicon transformer sheets along the cube edge [1 0 0]

---

## Anisotropy in Crystals

**Anisotropy** = Directional dependence of properties

Examples:
- Elastic modulus varies with crystal direction
- Thermal expansion is direction-dependent
- Optical properties (birefringence)

**Practical Significance:**
- Textured materials (rolling direction)
- Single-crystal turbine blades
- Anisotropic magnetic materials

![bg right fit](https://www.edelmetallschmiede.ch/wp-content/uploads/2018/05/Gefuege1.jpg)

---

## Polymorphism in Metals

- **Polymorphism**: Formation of different lattice structures depending on temperature
- The different lattice forms are the **allotropic modifications**

(also: Polymorphism of carbon: graphite, diamond, fullerene, graphene)

**Technical Significance:**
- Heat treatment of steel
- Shape memory alloys
- Phase transformation hardening

---
## Example: Iron Polymorphism

| Phase | Structure | Temperature | Properties |
|-------|----------|------------|---------------|
| α-Fe | bcc | < 911°C | Ferromagnetic |
| γ-Fe | fcc | 911-1392°C | Paramagnetic |
| δ-Fe | bcc | 1392-1538°C | Paramagnetic |

**Volume Change During Transformation:**
- α → γ: Volume contraction (-1%)
- γ → α: Volume expansion (+1%)

---

## Determination of Transformation Points

_Dilatometry_
- Measurement of length change due to lattice transformation
- Precision: ±0.1 µm
- Application: Determination of critical temperatures

_Thermal Analysis (DTA/DSC)_
- Recording of temperature profile
- Lattice transformations (phase changes) require or release thermal energy
- Arrest or inflection points in heating or cooling curves
- Arrest points: for pure metals
- Inflection points: for alloys



---

![bg fit](../assets/Figures/Haltepunkte_knickpunkte.png)


---



# Molecular Structures - Introduction

- Typical for non-metallic organic materials
  - Natural materials: wood, rubber, leather, fibers, etc.
  - Synthetic plastics: PMMA, epoxy, etc.

---



**Difference from Metals:**
- Covalent and Van der Waals bonds
- Chain molecules instead of crystal lattice
- Temperature-dependent behavior

![bg right 60%](https://upload.wikimedia.org/wikipedia/commons/f/fe/Spruce_plywood.JPG)

![bg vertical 80%](https://upload.wikimedia.org/wikipedia/commons/0/03/14-05-28-LEGO-by-RalfR-061.jpg)


---

- Created by assembly reactions of monomeric building blocks into chain molecules
- Atomic bonds occur within the chains
- Secondary valence bonds and molecular entanglements exist between chains


![bg right fit](../assets/Figures/Syndiotactic_polypropene.png)

---

## Structure of Polymers

- Created by assembly reactions of monomeric building blocks into chain molecules
- **Within the chains**: strong atomic bonds (covalent)
- **Between the chains**: weak secondary valence bonds and molecular entanglements (Van der Waals and hydrogen bonding)


![bg right fit](../assets/Figures/Syndiotactic_polypropene.png)

---

## Polymer Classification

**By Structure:**
1. Linear: Thermoplastics (PE, PP, PS)
2. Branched: Thermoplastics with reduced crystallinity
3. Cross-linked: Thermosets (epoxy), Elastomers (rubber)

**By Behavior:**
- Thermoplastics: meltable
- Thermosets: non-meltable
- Elastomers: rubber-elastic

---

## Assembly Reaction (Polymerization)

- Free bonds must be created in the monomers
- The monomers "need" new partners to reach the energy minimum again

**Degree of Polymerization (n):**
- Number of monomer units
- Molar mass M = n × M₀
- Typical: n = 1,000 - 100,000
- e.g. Polyethylene (PE): n CH₂=CH₂ → (-CH₂-CH₂-)ₙ
---

**Properties change with n:**
- Strength ↑
- Melting temperature ↑
- Solubility ↓

---



## Crystallinity in Polymers

**Semi-crystalline:**
- Ordered (crystalline) and disordered (amorphous) regions
- Crystallinity: 30-80%
- Examples: PE, PP, PA

**Amorphous:**
- No order
- Typical for branched and cross-linked polymers
- Examples: PS, PMMA, epoxy

![bg right fit](https://cdn1.slideserve.com/3117708/slide1-l.jpg)

---

**Influence on Properties:**
- Higher crystallinity → higher strength, stiffness
- Lower crystallinity → better transparency, flexibility

---

## Glassy-Amorphous Structures

- Glasses are a non-metallic inorganic, preferably silicate melt product
- **Non-crystalline, i.e., amorphous state**
- With glass, the melt is first supercooled and then "frozen" below the transformation temperature Tg
![bg right fit](../assets/Figures/amorph.png)

---

**Glass Transition Temperature Tg:**
- Below: brittle, hard
- Above: low hardness, deformable
![bg right fit](../assets/Figures/amorph.png)

---

## Glass Formation

**Conditions for Glass Formation:**
1. Rapid cooling (supercooling)
2. High viscosity of melt
3. Complex molecular structures

**Technical Glasses:**
- Soda-lime glass (windows)
- Borosilicate glass (laboratory glass)
- Quartz glass (optics)
- Metallic glasses (amorphous metals)

---

**Properties:**
- Isotropic
- Transparent (often)
- Brittle at room temperature

![bg right fit 60%](https://upload.wikimedia.org/wikipedia/commons/4/4b/Silica.svg)

---

## Metallic Glasses

**Production:**
- Extremely rapid cooling (10⁶ K/s)
- Prevents crystallization

**Properties:**
- Very high strength
- No dislocations
- Corrosion resistant
- Soft magnetic


---

# Real Structure of Crystals

---

## Lattice Defects

- **Zero-dimensional defects** (point defects): vacancies, interstitial atom, interstitial foreign atoms, substitutional foreign atom
- **One-dimensional defects** (line defects): dislocations
- **Two-dimensional defects** (planar defects): stacking faults, grain boundaries, subgrain boundaries, phase boundaries
- **Three-dimensional defects**: pores, inclusions, cracks

---


## Zero-Dimensional Defects

![bg right 50%](../assets/Figures/ideales_gitter.png)

**Types:**
- Vacancies
- Interstitial atoms
- Substitutional foreign atom
- Interstitial foreign atom
- Frenkel defect (vacancy + interstitial atom)
- Schottky defect (vacancy pair)


---

## Vacancies

**Effects:**
- Enable diffusion
- Reduce strength
- Vacancy migration

---

## Foreign Atoms

**Benefits:**
- [Doping](https://en.wikipedia.org/wiki/Doping_(semiconductor)) in semiconductors
    - Targeted manipulation of electrical conductivity by introducing additional atoms


![bg right 40%](https://upload.wikimedia.org/wikipedia/commons/2/22/Schema_-_n-dotiertes_Silicium.svg)


![bg vertical 40%](https://upload.wikimedia.org/wikipedia/commons/0/0d/Schema_-_p-dotiertes_Silicium.svg)

---

- Interstitial and substitutional foreign atoms
    - Increase in strength through natural "crack stopper" or locally easier displacement and local reduction of stresses
    - Size and chemical similarity define substitution or interstitial position

**Solid Solution Strengthening:**
- Atomic size difference creates lattice distortions
- Hindrance of dislocation movement
- Strength increase proportional to square root of concentration

---

## Dislocations

[Dislocations](https://en.wikipedia.org/wiki/Dislocation) arise
- During crystal growth
- Due to internal stresses
- Through plastic deformation

![bg right 80%](../assets/Figures/versetzung.png)
![bg 105%](https://upload.wikimedia.org/wikipedia/commons/7/77/Versetzung_im_2D-Kristall.svg)

**Dislocation Density:**
- Annealed crystal: 10⁶ - 10⁸ cm⁻²
- Deformed crystal: 10¹⁰ - 10¹² cm⁻²

---

## Types of Dislocations


**Burgers Vector**

**Definition:**
- Vector describing the lattice displacement
- Magnitude: usually one lattice constant
- Direction: slip direction

**Significance:**
- Characterizes the dislocation
- Remains constant along the dislocation line
- Mixes edge and screw character

---

**Determination:**
- Burgers circuit in crystal
- Closure failure = Burgers vector

---

**Edge Dislocation**
- Extra half-plane in crystal
- Energy: $E \approx \frac{3}{4} G b^2$
- Burgers vector ⊥ dislocation line

![bg right 60%](https://upload.wikimedia.org/wikipedia/commons/9/99/Dislocation_edge_d2.svg)

**Screw Dislocations**
- Spiral lattice distortion
- Energy: $E \approx \frac{1}{2} G b^2$
- Burgers vector ∥ dislocation line

![bg vertical 60%](https://upload.wikimedia.org/wikipedia/commons/5/52/Dislocation_screw_e.svg)

---


## Dislocation Movement

**Glide:**
- Dislocation moves in glide plane
- Low required shear stress
- Main mechanism of plastic deformation

**Climb:**
- Dislocation leaves glide plane
- Requires diffusion of vacancies
- Only at high temperatures
- Important in creep

---

**Cross-slip:**
- Screw dislocation changes glide plane
- Enables three-dimensional deformation

---

## Dislocation Interactions

**Dislocation Pileup:**
- Dislocations pile up at obstacles
- Stress concentration
- Can lead to crack formation

**Dislocation Entanglement:**
- Dislocations block each other
- Strengthening mechanism
- "Forests" of dislocations

---

**Dislocation Reactions:**
- Two dislocations can merge
- New dislocation with different Burgers vector
- Frank-Read source: dislocation multiplication

---

# [Defect Overview](https://cwillberg.github.io/Werkstofftechnik/dev/Skript/svw/gitterbaudefekte/)


---

## Two-Dimensional Defects - Grain Boundaries
- Grain boundaries
- Phase boundaries
- Subgrain boundaries

![bg right fit](https://www.struers.com/-/media/Struers-media-library/Knowledge/Materials/Grain-structures/FIg-0A-974x732-px.jpg?lm=20191009T054854Z&h=732&w=974&hash=4504C0AA9A9B6DEB6BDF91CC93EDF46ED9AADF75)

[Script](https://cwillberg.github.io/Werkstofftechnik/dev/Skript/svw/gitterbaudefekte/)


---


**Grain Boundaries:**
- High-angle grain boundaries (θ > 15°)
- Low-angle grain boundaries (θ < 15°)
- Special grain boundaries (twin boundaries)

**Phase Boundaries:**
- Coherent boundaries (epitaxial)
- Semi-coherent boundaries (with dislocations)
- Incoherent boundaries (disordered)

**Subgrain Boundaries:**
- Arrangement of dislocations
- Formed during recovery


---

## Grain Boundary Properties

**Structural Features:**
- Higher energy than crystal interior
- Reduced atomic density
- Increased chemical activity

**Influence on Properties:**
- Diffusion along grain boundaries faster
- Preferred corrosion attack sites
- Hindrance of dislocation movement (Hall-Petch)
- Starting point for recrystallization

---

## Large Grains (Coarse Microstructure)


- **Lower Strength**
  - Few grain boundaries as dislocation barriers