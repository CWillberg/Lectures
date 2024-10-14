---
marp: true

theme: default
header: ''
footer: ''
backgroundImage: url('../assets/styles/background.png')
title: Lecture Basics of Mechanical Engineering - Materials Science
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
    padding: 0 20px; /* Placement of columns */
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

## Streams - Materials
Prof. Dr.-Ing. Christian Willberg<a href="https://orcid.org/0000-0003-2433-9183"><img src="../assets/styles/ORCIDiD_iconvector.png" alt="ORCID Symbol" style="height:15px;width:auto;vertical-align: top;background-color:transparent;"></a>
Hochschule Magdeburg-Stendal

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

- Eating or drinking is okay, but quietly
- Problems with childcare
- Everything stays in the room!
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
  - Iron steel 
  - Non-ferrous
- Plastics
- Ceramics
- Composites

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

# Structure of Materials

![bg right fit](https://wiki.arnold-horsch.de/images/6/6e/Strukturebene_Metall-2.jpg)

---

-	Atomic structure (type of atomic building blocks)
-	Fine structure (bonds between atomic building blocks and their geometric arrangement)
-	Microstructure (structure - areas of geometric arrangement separated by interfaces inside the material)
-	Macrostructure (coarse structure - overall appearance of a material during production and application of a component)

---

# Bonds

## Primary Bonds  
**Primary bonds - high bond energy, strong bond**
-	Ionic or heteropolar bond 
-	Covalent bond: polar (O-H) and non-polar (C-C, C-H)
-	Metallic bond

---

## Metallic Bond

- Valence electrons are only weakly bound
- a lattice (periodically arranged) of positively charged metal ions (atomic cores) is formed
- Valence electrons can move almost freely within the lattice, known as **electron gas**
- Results: good electrical conductivity + high thermal conductivity

![](https://upload.wikimedia.org/wikipedia/commons/4/41/Nuvola_di_elettroni.svg)

---

![bg fit](https://upload.wikimedia.org/wikipedia/commons/0/00/Periodensystem_Einfach.svg)

---
## Relevant Quantities

**Atomic number**
Number of protons in the nucleus
**Atomic mass**
Defines the mass of the element
The mass of the material is a combination of atomic mass and density
**Electronegativity**
Defines whether atoms are donated or accepted in a bond
Metallic bonds tend to the left
Covalent bonds tend to the right

---

## Secondary Bonds 
**Secondary bonds - low bond energy, weak bond**
-	Van der Waals bond: intermolecular forces
-	Hydrogen bond: two molecules or two suitably distant parts of a macromolecule interact via hydrogen atoms
- The bond energies are one to two orders of magnitude smaller than atomic bonds.

---

| **Name** | **Ionic or heteropolar bond** | **Covalent homopolar (covalent) bond** | **Metallic bond** |
|----------|-------------------------------|---------------------------------------|-------------------|
| **Components** | Ions (metal + non-metal) | Same atom type (non-metal + non-metal) | Same atom type (metal + metal) |
| **Description of electrical charge state** | Positively charged ion + negatively charged ion (cation + anion) | Atoms have one or more shared electron pairs to reach noble gas configuration | Atoms donate their valence electrons to the whole bond. Electrons move freely in the lattice |
---

## Atomic Structure

Consists of
- Nucleus (Protons + Neutrons) which defines the mass
- Shell (Electrons) with various layers that define chemical and many physical properties

![bg fit right](https://upload.wikimedia.org/wikipedia/commons/0/04/AtomRadialeDichte_He%2C_Ne%2CAr.jpg)

---

![bg 80%](../assets/Figures/Bindungskraefte_zwischen_Atome.svg)

---

### Fine Structure
- Crystal structures
- Molecular structures
- Glassy-amorphous structures
- Real structure

---
## Space Lattice

- Formed by the three-dimensional periodic shift of its components
- Characterized by three spatial axes x, y, and z, with angles α, β, γ and distances on the axes defining the respective space lattice
- a₀, b₀, and c₀ (lattice constants) -> Unit cell

![bg fit right](../assets/Figures/einheitszelle.png)

---

| Crystal System    | Lattice Constants       | Angles         | Examples                                                  |
|------------------|-------------------------|----------------|-----------------------------------------------------------|
| Triclinic         | a₀ ≠ b₀ ≠ c₀            | α ≠ β ≠ γ ≠ 90° | Silicate minerals                                          |
| Monoclinic        | a₀ ≠ b₀ ≠ c₀            | α = γ = 90°; β ≠ 90° | Mo₂S₃; β-Pu                                                |
| Orthorhombic      | a₀ ≠ b₀ ≠ c₀            | α = β = γ = 90° | U, S, P, Ga, γ-Sn                                          |
| Rhombohedral      | a₀ = b₀ = c₀            | α = β = γ ≠ 90° | As, Hg, Sb                                                 |
| Hexagonal         | a₀ = b₀ ≠ c₀            | α = β = 90°; γ = 120° | α-Ti, Mg, Zn                                               |
| Tetragonal        | a₀ = b₀ ≠ c₀            | α = β = γ = 90° | B, CuTi₃, Sn (T > 13.5°C)                                  |

---

## Common Lattice Structures in Metals

| Crystal System    | Lattice Constants       | Angles         | Examples                                                  |
|------------------|-------------------------|----------------|-----------------------------------------------------------|
| Cubic             | a₀ = b₀ = c₀            | α = β = γ = 90° | Cu, Al, Ni, Au, Ag; γ-Iron (FCC); α-Iron, V, Cr, W (BCC); Mn, Po (SC) |

---

Face-Centered Cubic (FCC)

![bg right 30%](../assets/Figures/kfz.png)

Body-Centered Cubic (BCC)

![bg vertical 30%](../assets/Figures/krz.png)

Hexagonal Close-Packed (HCP)

![bg 30%](../assets/Figures/hdp.png)

---

## Influences

- **Corrosion**: Aggressive media attack preferred planes.
- **Deformation**: Plastic deformation occurs along preferred crystallographic planes and directions → Slip systems.
- **Ultrasound**: Use of quartz crystals with specific crystallographic surfaces.
- **Conductivity**: Use of germanium or silicon wafers in (1 1 1)- or (1 0 0)- orientation for semiconductor elements.
- **Magnetization**: Easiest magnetization of iron-silicon transformer sheets along the cube edge [1 0 0].

---

## Polymorphism in Metals

- **Polymorphism**: Formation of different lattice structures depending on temperature.
- The different lattice forms are the allotropic modifications.

(Also: Carbon polymorphism: graphite, diamond, etc.)

---

## Determining Transformation Points

_Dilatometry_
- Measurement of length changes due to lattice transformation.

_Thermal Analysis_
- Recording of the temperature curve.
- Lattice transformations (phase changes) require or release thermal energy.
- Holding or inflection points in heating or cooling curves.

- Holding points: In pure metals.

---

![bg fit](../assets/Figures/Haltepunkte_knickpunkte.png)

---

## Molecular Structures

- Typical for non-metallic organic materials.
  - Natural materials: Wood, rubber, leather, fibers, etc.
  - Synthetic plastics: PMMA, epoxy, etc.

![bg right 60%](https://upload.wikimedia.org/wikipedia/commons/f/fe/Spruce_plywood.JPG)

![bg vertical 80%](https://upload.wikimedia.org/wikipedia/commons/0/03/14-05-28-LEGO-by-RalfR-061.jpg)

---

- Formed by assembly reactions of monomeric building blocks into chain molecules.
- Atomic bonds occur within the chains.
- Van der Waals forces and molecular entanglements exist between the chains.

![bg right fit](../assets/Figures/Syndiotactic_polypropene.png)

---

## Assembly Reaction (Polymerization)

- Free bonds must be created in the monomers.
- The monomers "need" new partners to reach an energetic minimum.

---

## Chain Polymerizations

  - Breaking of C=C double bonds in the monomer (catalytic process through pressure, temperature, catalyst).
  - Linking the split monomers to macromolecules.

![bg right 50%](https://upload.wikimedia.org/wikipedia/commons/7/7e/Kettenwachstum.svg)

---

## Step-Growth Reactions

**Polycondensation**
- Release of low molecular weight reaction products (e.g., H₂O) through a chemical reaction creates free bonds.
- Stepwise reaction or interruption leads to the formation of linear, branched, or cross-linked polymers (thermoplastics, elastomers, or thermosets).
![](https://upload.wikimedia.org/wikipedia/commons/a/a0/Polykondensation_Bakelit_1.svg)

---

**Polyaddition**
- Free bonds are formed by rearrangement of double bonds between two different monomer molecules.
- These then form molecular chains.

![](https://upload.wikimedia.org/wikipedia/commons/4/4d/Polyaddition_Polyurethane_V.2.1.png)

---

## Glassy-Amorphous Structures

- Glasses are non-metallic inorganic, primarily silicate melt products.
- They are in a non-crystalline (amorphous) state.
- In glass, the melt is first undercooled and then "frozen" below the transformation temperature (Tg).

![bg right fit](../assets/Figures/amorph.png)

---


# Material Properties
- Properties are significantly influenced by the microstructure and electrons (outer shell).

**Work Function**
- Thermal expansion
- Electrical conductivity
- Thermal conductivity

