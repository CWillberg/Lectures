---
marp: true

theme: default
header: ''
footer: ''
backgroundImage: url('../../assets/styles/background.png')
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
    font-size: 14px; /* Footer font size */
    color: #888; /* Footer color */
    text-align: right; /* Footer alignment */
}
</style>

## Lecture Basics of Mechanical Engineering - Materials Science
Prof. Dr.-Ing. Christian Willberg<a href="https://orcid.org/0000-0003-2433-9183"><img src="../../assets/styles/ORCIDiD_iconvector.png" alt="ORCID Symbol" style="height:15px;width:auto;vertical-align: top;background-color:transparent;"></a>
Magdeburg-Stendal University of Applied Sciences 

![bg right](../../assets/Figures/IWES_test.jpg)

Contact: christian.willberg@h2.de
Parts of the script were taken from \
Prof. Dr.-Ing. Jürgen Häberle
<div style="position: absolute; bottom: 10px; left: 520px; color: blue; font-size: 20px;"> 
    <a href="https://doi.org/10.1007/s42102-021-00079-6" style="color: blue;">Image Reference</a>
</div>

---

<!--paginate: true-->


# Lecture

**Framework**

- Eating or drinking is okay, but quietly
- Issues with childcare
- Everything stays in the room!
- Questions

![bg right 50%](../../assets/styles/vorlesung.png)

---

## Content

- Materials
- Structure of materials
  - Atoms and bonds
  - Fine structure
  - Microstructure
- Material microstructure
- Plasticity

---

## Materials

<details>
<summary>What are materials?</summary>
<div>
Materials in the strict sense refer to solid substances used for manufacturing components and constructions.
</div>
</details>

---

## Application areas with images

- Metals
  - Iron Steel
  - Non-ferrous
- Plastics
- Ceramics
- Composites

---

## Cast Iron - Steel

![bg 60% right](https://upload.wikimedia.org/wikipedia/commons/b/bf/Gu%C3%9Fteil_2007.gif)

![bg 60% vertical](https://upload.wikimedia.org/wikipedia/commons/2/2e/LPD_22_MAR_2010.jpg)

---

## Non-ferrous Metals

- Copper is an excellent conductor of electricity and heat

![bg right 70%](https://images-of-elements.com/copper.jpg)

---

- Magnesium is used in lightweight construction
- Titanium and titanium alloys
    - high strength and heat resistance
    - corrosion resistant
- Nickel
    - corrosion resistant
    - high heat resistance

![bg right 30%](https://images-of-elements.com/magnesium.jpg)
![bg right 30% vertical](https://images-of-elements.com/titanium-crystal.jpg)
![bg right 30%](https://images-of-elements.com/nickel.jpg)

---

## Ceramics

![bg right fit](http://www.hoogspanningsnet.com/wp-content/uploads/Eindsluitingen%20(Michel).jpg)

---

## Glasses

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/1/15/Magnifying_Glass_Photo.jpg)

---

## Fiber-reinforced Composites

![bg right fit](https://leichtbau.dlr.de/wp-content/uploads/2022/03/boom_blank_be.png)

---

# Structure of Materials

![bg right fit](https://wiki.arnold-horsch.de/images/6/6e/Strukturebene_Metall-2.jpg)

---

-	Atomic structure (type of atomic components)
-	Fine structure (bonds between atomic components and their geometric arrangement)
-	Microstructure (grains – geometrically arranged areas separated by boundaries within the material)
-	Macrostructure (overall appearance of a material during manufacturing and use)

---

# Bonds

## Primary Bonds  
**Primary bonds - high bond energy, strong bond**
-	Ionic bond 
-	Covalent bond: polar (O-H) and nonpolar (C-C, C-H)
-	Metallic bond

---

## Metallic Bond

- Outer electrons (valence electrons) are weakly bound 
- A lattice of positively charged metal ions (atomic cores) is formed
- Outer electrons can move freely within the lattice, known as **electron gas** 
- Result: good electrical and thermal conductivity

![](https://upload.wikimedia.org/wikipedia/commons/4/41/Nuvola_di_elettroni.svg)

---

![bg fit](https://upload.wikimedia.org/wikipedia/commons/0/00/Periodensystem_Einfach.svg)

---

## Relevant Quantities

**Atomic Number**
Number of protons in the nucleus
**Atomic Mass**
Defines the mass of the element
The mass of the material is a combination of atomic mass and density
**Electronegativity**
Determines whether atoms give or receive electrons in a bond
Metallic bonds tend to be on the left
Covalent bonds tend to be on the right

---

## Secondary Bonds 
**Secondary bonds - low bond energy, weak bond**
-	Van der Waals bond: intermolecular forces
-	Hydrogen bond: two molecules or two suitable parts of a macromolecule interact via hydrogen atoms
- Bond energies are one to two orders of magnitude smaller than those of covalent bonds.

---

| **Description** | **Ionic or heteropolar bond** | **Covalent bond (homopolar)** | **Metallic bond** |
|-----------------|-------------------------------|---------------------------------|-------------------|
| **Participating Components** | Ions (Metal + Nonmetal) | Same atom type (Nonmetal + Nonmetal) | Same atom type (Metal + Metal) |
| **Electrical charge state** | Positive ion + negative ion (Cation + Anion) | Atoms share electron pairs to achieve noble gas configuration | Atoms release their outer electrons to the entire structure; electrons move freely within the lattice |

---

| **Description** | **Ionic bond** | **Covalent bond** | **Metallic bond** |
|-----------------|-----------------|-------------------|-------------------|
| **Material properties** | Electrically conductive when dissolved, crystalline structure | Low electrical and thermal conductivity; high melting point | Excellent electrical and thermal conductivity, ductility; limited chemical resistance |
| **Examples** | Alkali metal compounds, halides (e.g., NaCl, MgO) | Diamond, methane (CH₄) (nonpolar), methanol (CH₃OH) (polar) | Copper (Cu), Aluminum (Al), Iron (Fe) |

---

## Atomic Structure

Composed of:
- Nucleus (protons + neutrons) defining the mass
- Shell (electrons) with different layers, defining chemical and many physical properties

![bg fit right](https://upload.wikimedia.org/wikipedia/commons/0/04/AtomRadialeDichte_He%2C_Ne%2CAr.jpg)

---

![bg 80%](../../assets/Figures/Bindungskraefte_zwischen_Atome.svg)

---

### Fine Structure
- Crystal structures
- Molecular structures
- Glassy-amorphous structures
- Real structure

---

## Crystal Lattice

- Formed by a three-dimensional periodic shift of its components
- Characterized by three space axes x, y, and z, angles α, β, γ, and distances along the axes
- a0, b0, and c0 (lattice constants) -> unit cell

![bg fit right](../../assets/Figures/einheitszelle.png)

---

| Crystal System    | Lattice Constants      | Angles        | Examples                                                 |
|-------------------|------------------------|---------------|----------------------------------------------------------|
| Triclinic         | a₀ ≠ b₀ ≠ c₀            | α ≠ β ≠ γ ≠ 90°| Silicate minerals                                        |
| Monoclinic        | a₀ ≠ b₀ ≠ c₀            | α = γ = 90°; β ≠ 90°| Mo₂S₃; β-Pu                                               |
| Orthorhombic      | a₀ ≠ b₀ ≠ c₀            | α = β = γ = 90°| U, S, P, Ga, γ-Sn                                         |
| Rhombohedral      | a₀ = b₀ = c₀            | α = β = γ ≠ 90°| As, Hg, Sb                                                |
| Hexagonal         | a₀ = b₀ ≠ c₀            | α = β = 90°; γ = 120°| α-Ti, Mg, Zn                                              |
| Tetragonal        | a₀ = b₀ ≠ c₀            | α = β = γ = 90°| B, CuTi₃, Sn (T > 13.5°)                                 |



---

## Most Common Lattice Forms in Metals

| Crystal System    | Lattice Constants      | Angles        | Examples                                                 |
|-------------------|------------------------|---------------|----------------------------------------------------------|
| Cubic             | a₀ = b₀ = c₀            | α = β = γ = 90°| Cu, Al, Ni, Au, Ag; γ-Iron (fcc); α-Iron, V, Cr, W (bcc); Mn, Po (hcp) |


---

Cubic Face-Centered (fcc)
![bg right 30%](../../assets/Figures/kfz.png)

Cubic Body-Centered (bcc)

![bg vertical 30%](../../assets/Figures/krz.png)

Hexagonal Close-Packed (hcp)

![bg 30%](../../assets/Figures/hdp.png)

---

## Influences

- Corrosion: Aggressive media attack occurs at preferred planes
- Deformation: Plastic deformation occurs along preferred crystallographic planes and directions → Slip Systems
- Ultrasound: Use of oscillating crystals with specific crystallographic boundary surfaces
- Conductivity: Use of Germanium or Silicon wafers in (1 1 1)- or (1 0 0)-orientation for semiconductor elements
- Magnetization: Easiest magnetization of iron-silicon transformer sheets along the cube edge [1 0 0]

---



## Polymorphism in Metals

- Polymorphism: The formation of different lattice structures depending on temperature
- The different lattice forms are the allotropic modifications 

(also: Polymorphism of carbon: Graphite, Diamond, etc.).

---

## Determination of Transformation Points

_Dilatometry_
- Measurement of length changes due to lattice transformation

_Thermal Analysis_
- Recording the temperature progression
- Lattice transformations (phase changes) require or release thermal energy
- Plateau or inflection points in heating or cooling curves.

- Plateau points: in pure metals


---

![bg fit](../../assets/Figures/Haltepunkte_knickpunkte.png)


---



## Molecular Structures

- Typical for non-metallic-organic materials
  - Natural materials: Wood, Rubber, Leather, Fibers, etc.
  - Synthetic plastics: PMMA, Epoxy, etc.



![bg right 60%](https://upload.wikimedia.org/wikipedia/commons/f/fe/Spruce_plywood.JPG)

![bg vertical 80%](https://upload.wikimedia.org/wikipedia/commons/0/03/14-05-28-LEGO-by-RalfR-061.jpg)

---

- Formed through polymerization reactions of monomeric building blocks into chain molecules
- Within the chains, covalent bonds occur
- Between the chains, secondary valence bonds and molecular entanglements exist


![bg right fit](../../assets/Figures/Syndiotactic_polypropene.png)

---

## Polymerization Reaction

- Free bonds must be created in the monomers
- The monomers "need" new partners to reach a new energetic minimum

---

## Chain Polymerizations

  - Splitting of C=C double bonds in the monomer (catalytic process through pressure, temperature, catalyst)
  - Linking the split monomers into macromolecules

![bg right 50%](https://upload.wikimedia.org/wikipedia/commons/7/7e/Kettenwachstum.svg)

---

## Step-Growth Reactions 

**Polycondensation**
- Removal of low-molecular (e.g., H2O) reaction products through a chemical reaction creates free bonds
- Stepwise reaction or interruption leads to the formation of linear, branched, or cross-linked polymers (thermoplastics, elastomers, or thermosets)  
![](https://upload.wikimedia.org/wikipedia/commons/a/a0/Polykondensation_Bakelit_1.svg)

---

**Polyaddition**
- Free bonds are created by rearrangement of double bonds between different monomer molecules
- These then form molecular chains

![](https://upload.wikimedia.org/wikipedia/commons/4/4d/Polyaddition_Polyurethane_V.2.1.png)

---

## Glassy-Amorphous Structures

- Glasses are non-metallic inorganic, preferably silicate melt products
- Non-crystalline, i.e., amorphous state
- In glass, the melt is first undercooled and then "frozen" below the transformation temperature Tg. 

![bg right fit](../../assets/Figures/amorph.png)

---

# Real Structure of Crystals
## Lattice Defects

- Zero-Dimensional Defects (Point Defects): Vacancies, interstitial atoms, interstitial foreign atoms, substitutional foreign atoms
- One-Dimensional Defects (Line Defects): Dislocations
- Two-Dimensional Defects (Plane Defects): Stacking faults, grain boundaries, subgrain boundaries, phase boundaries

---

## Zero-Dimensional Defects

![bg right 50%](../../assets/Figures/ideales_gitter.png)

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

- [Doping](https://de.wikipedia.org/wiki/Dotierung) in semiconductors
    - Targeted manipulation of electrical conductivity by introducing additional atoms
- Interstitial and substitutional foreign atoms
    - Increased strength through natural "crack stop" or locally easier slip and local reduction of stresses
</div>
</details>

---

## Dislocations

[Dislocations](https://de.wikipedia.org/wiki/Versetzung_(Materialwissenschaft)) arise
- During crystal growth
- Due to residual stresses
- Through plastic deformations

![bg right 80%](../../assets/Figures/versetzung.png)
![bg 105%](https://upload.wikimedia.org/wikipedia/commons/7/77/Versetzung_im_2D-Kristall.svg)

---

## Two-Dimensional Defects - Grain Boundaries
- Grain boundaries
- Phase boundaries
- Subgrain boundaries

![bg right fit](https://www.struers.com/-/media/Struers-media-library/Knowledge/Materials/Grain-structures/FIg-0A-974x732-px.jpg?lm=20191009T054854Z&h=732&w=974&hash=4504C0AA9A9B6DEB6BDF91CC93EDF46ED9AADF75)

[Skript](https://cwillberg.github.io/Werkstofftechnik/dev/Skript/svw/gitterbaudefekte/)

---

## Plasticity

Good or Bad

![bg right 70%](../../assets/Figures/fragezeichen.png)

---

## Examples

**High Plasticity**:

- Modeling clay
- Wet clay
- Metals and metal alloys with suitable atomic lattice:
  - Hot steel during forging
  - Cold forming of sheets 

**Low Plasticity**:
  - Rubber
  - Ceramics
  - Fiber-reinforced composites (epoxy-glass fiber or epoxy-carbon fiber)
   
---

## Plasticity - Single Crystal

Plastic deformation of a crystal essentially occurs through the sliding of atomic layers along specific crystallographic planes and directions under the influence of shear stresses.

- Slip system consists of slip plane and slip direction
- Critical shear stress ($\tau_{Kr}\approx G/10$ - estimation or theoretical shear strength)
- Reality ~100 times lower due to dislocations

---

## Image

![](../../assets/Figures/Beispiel_plast.bmp)
  
---

## Plastic Deformation of Polycrystalline Materials

- Micro- and Macroplasticity
  - Plastic deformation starts at "unfavorable" orientations
- Grain boundaries
  - Barrier for dislocation movement
  - At high temperatures, grain boundaries can slide (creep)
  - Targeted manufacturing can increase toughness through grain boundaries
- Heterogeneity
  - Multiphasic
  - Inhomogeneous distribution of stresses and deformations
- Anisotropy

---

## Polycrystal Plasticity
[Example from a simulation](https://www.youtube.com/watch?v=mWanREXKLO4)

---

## Yield Strength

![bg right 90%](https://upload.wikimedia.org/wikipedia/commons/6/64/Spgs-Dehnungs-Kurve_Dehngrenze.svg)

- $R_m$ - Tensile Strength
- $R_e$ - Yield Strength
- Elongation limit or yield strength $R_{p0,2}$
  - Loading and then unloading, 0.2% elongation remains
- Elongation limit is used as a substitute for yield strength

---

## Yield Strength

![bg right 90%](https://upload.wikimedia.org/wikipedia/commons/6/6e/Spgs-Dehnungs-Kurve_Streckgrenze.svg)

- Upper yield strength $R_{eH}$
- Lower yield strength $R_{eL}$
>Zigzag area: Lüders band

[Example Video](https://youtu.be/E80yUNniESU?si=pqGRAWamxFQedWqw&t=95)

---

## Plasticity - Forming
- [Deep Drawing Principle](https://www.youtube.com/watch?v=Zbfld_851z0)
- [Deep Drawing Real](https://www.youtube.com/watch?v=rHfepOqPVHI)
