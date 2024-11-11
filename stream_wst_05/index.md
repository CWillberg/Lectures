---
marp: true

theme: default
header: ''
footer: ''
backgroundImage: url('../assets/styles/background.png')
title: Corrosion
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
    padding: 0 20px; /* Column spacing */
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


## Corrosion
Prof. Dr.-Ing.  Christian Willberg<a href="https://orcid.org/0000-0003-2433-9183"><img src="../assets/styles/ORCIDiD_iconvector.png" alt="ORCID Symbol" style="height:15px;width:auto;vertical-align: top;background-color:transparent;"></a>
University of Applied Sciences Magdeburg-Stendal

![bg right](https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Rost.jpg/1920px-Rost.jpg)

Contact: christian.willberg@h2.de
Parts of the script are taken from \
Prof. Dr.-Ing. Jürgen Häberle



---

<!--paginate: true-->

# Contents

![bg right 70%](../assets/QR/wst_mb_05.png)

---

# Corrosion


- divided into chemical, electrochemical, or physical reactions of metals with the environment
- affects the material properties
- most corrosion damages are electrochemical

![bg 100% fit](https://s3.amazonaws.com/static.wd7.us/5/55/Rust03102006.JPG)

![bg right 80% fit](https://upload.wikimedia.org/wikipedia/commons/8/88/County_Fire_Office_roof.jpg)

[Further Reading](https://www.fh-muenster.de/bau/downloads/personen/muero/intern/bau/4.1Stahlkorrosion.pdf)

---

## Chemical Corrosion

- immediate reaction of metals with the environment
- involves direct electron exchange
- reaction partner is usually oxygen $\text{O}_2$
Example:
 $\text{Mg}+\text{O}_2\rightarrow \text{MgO}_2$
 
- mostly occurs at higher temperatures (process: scaling)

---

## Electrochemical Reaction
- most corrosion damages are electrochemical
- two partial reactions, often spatially separated
- both reactions require an exchange of charge carriers
    - metals enable this through their conductivity
    - outside the metal, the circuit is closed by an electrolyte
    
**Electrolyte**
- a medium in which ions can move (_ion conduction_)
- mostly aqueous solutions 
- also includes soil, molten salts, or solids (used in fuel cells)

---



**_Degree of Dissociation_**
- determines the aggressiveness of the electrolyte
- the further the ion concentration deviates from the concentration in water, the more aggressive the electrolyte
- can be represented by pH value. 
pH < 7 acidic
pH = 7 neutral
pH > 7 basic (alkaline)

---

## Schematic of a Galvanic Cell

- Anions - negative ions
- Cations - positive ions
- under direct current, negatively charged ions migrate to the anode
- Spatial separation (Anode, Cathode)

![bg fit right 80%](https://upload.wikimedia.org/wikipedia/commons/c/c7/Galvanische_Zelle_2009-02-08.svg)

---

## Galvanization

![bg right:40% fit](https://kluthe.com/magazin/wp-content/uploads/2023/02/Galvanisierung-850x448.jpg)

- the cathode reaction is a reduction

$\text{Metal ion} + \text{Electron} \rightarrow \text{Metal atom}$

- a deposit forms on the surface
- principle of electroplating
- at the anode, oxidation occurs (release of electrons)
---

## Schematic of Corrosion Element
- two components
- conductively connected areas
  - two metals
  - identical metals with different electrical potentials
- Electrolyte wetting
![bg right fit](https://i.stack.imgur.com/hGbnD.jpg)

---

- the nobler material becomes the cathode
- the less noble electrode becomes the anode
  - as in galvanization, the anode releases electrons
  $\text{Metal} \rightarrow \text{Metal}^{++} + 2\text{e}^{-}$
  - it dissolves and corrodes
- At the cathode, a metal-metal ion reaction cannot occur
  - a redox reaction takes place
  - hydrogen corrosion or oxygen corrosion
---

| Metal    | Potential | Corrosion behavior       |
|-----------|-----------|-----------------|
| Gold      | +1.50 V   | noble      |
| Platinum  | +1.18 V   |       |
| Silver    | +0.80 V   |       |
| Copper    | +0.34 V   |       |
| Hydrogen  | +0.00 V  | neutral  |
| Tin       | -0.14 V   |   |
| Iron      | -0.41 V   |   |
| Zinc      | -0.76 V   |   |
| Titanium  | -1.75 V   |   |
| Aluminum  | -1.66 V   | non-noble  |

---

## Hydrogen Corrosion
- only possible in very acidic electrolytes
- occurs in the presence of water but in the absence of oxygen
>Acid corrosion

---

## Oxygen Corrosion
- free electrons react with water to form hydroxide ions
$\text{H}_2\text{O} + \frac12\text{O}_2 + 2\text{e}^{-} \rightarrow 2\text{OH}^-$
$2\text{Fe}^{2+} + 4\text{(OH)}^- +\text{H}_2\text{O} + \frac12\text{O}_2 \rightarrow 2\text{Fe(OH)}_3$
- can decompose further
![bg vertical](../assets/Figures/whitespace.png)
![bg fit](../assets/Figures/whitespace.png)
![bg  fit](https://upload.wikimedia.org/wikipedia/commons/9/97/Korrosion.svg)

---

## Physical Corrosion

- Microcracks or dislocations form due to stress, where corrosion can begin
- Corrosion occurs in combination with a mechanical load (static or dynamic - oscillating)


---

## Types of Corrosion
- 36 types of corrosion according to [DIN EN ISO 8044](https://cdn.standards.iteh.ai/samples/71134/642505f174ad4feeb2eef113b494d4e4/ISO-8044-2020.pdf)

**Surface Corrosion**
- large area corrosion
- easily visible and relatively harmless
- the coating layer provides corrosion protection
![bg fit right 80%](https://www.hausjournal.net/wp-content/uploads/Was-ist-Korrosion-720x480.jpg)

---

## Types of Corrosion
**Pitting Corrosion**
- often goes unnoticed for a long time
- can expand in a trough shape in depth
![bg vertical right 1%](../assets/Figures/whitespace.png)
![bg fit](https://upload.wikimedia.org/wikipedia/commons/8/84/Pitting_corrosion-scheme.png)
![bg fit](https://upload.wikimedia.org/wikipedia/commons/b/b3/Corrosion.Pit.jpg)

---

## Types of Corrosion
**Crevice Corrosion**
- occurs on metal parts in narrow, non-closed crevices like overlaps, applied ridges, and in non-continuously welded seams
- difficult to detect
- should be structurally avoided in critical areas


---

## Types of Corrosion
**Intergranular Corrosion**
- also known as grain boundary corrosion
- occurs at grain boundaries
- Reminder: Influence of the crystal lattice - aggressive media attack preferential planes
![bg right fit](https://upload.wikimedia.org/wikipedia/commons/2/28/Intergranular_corrosion.JPG)

---

## Other Types of Corrosion

- [Microbial](https://en.wikipedia.org/wiki/Microbial_corrosion) Corrosion
  - Sewage
  - Aviation fuel
  - Fungal infestation
- Undermining Corrosion
- High-Temperature Corrosion
- Stress Corrosion Cracking
    - the protective layer is breached, leading to corrosion
- ...

---

## Corrosion Protection

- Distinguishable between passive and active protection
- Passive: Separation of metal and electrolyte / corrosive medium
- Active: Complete separation is not necessary

---

## Corrosion Protection 

- Work in small groups, 10–15 minutes of research
- 2 groups:
  - Identify 3 passive methods
  - Identify 3 active methods 
- Brief presentation of results (use the board if needed)
  - Highlight the main takeaways