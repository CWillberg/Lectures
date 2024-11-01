---
marp: true

theme: default
header: ''
footer: ''
backgroundImage: url('../assets/styles/background.png')
title: Lecture on Fundamentals of Mechanical Engineering - Materials Science
author: Christian Willberg
---

<script type="module">
  import mermaid from 'https://cdn.jsdelivr.net/npm/mermaid@10/dist/mermaid.esm.min.mjs';
  mermaid.initialize({ startOnLoad: true });
</script>

<style>
.container {
  display: flex;
}
.col {
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
</style>

## Fatigue and Wear
Prof. Dr.-Ing. Christian Willberg<a href="https://orcid.org/0000-0003-2433-9183"><img src="../assets/styles/ORCIDiD_iconvector.png" alt="ORCID Symbol" style="height:15px;width:auto;vertical-align: top;background-color:transparent;"></a>
University of Applied Sciences Magdeburg-Stendal

![bg right](https://upload.wikimedia.org/wikipedia/commons/b/bd/Smith2.svg)

Contact: christian.willberg@h2.de  
Parts of this script are adapted from Prof. Dr.-Ing. Jürgen Häberle  
<div style="position: absolute; bottom: 10px; left: 520px; color: blue; font-size: 20px;"> 
  <a href="https://doi.org/10.1007/s42102-021-00079-6" style="color: blue;">Image reference</a>
</div>

---

<!--paginate: true-->

![bg right 50%](../assets/QR/stream_wst_04.png)

---

# Fatigue

<details>
<summary>What is Fatigue?</summary>

<img src="https://upload.wikimedia.org/wikipedia/commons/7/7e/Sleeping_students.jpg" alt="Alternative text" width="500">

</details>

---

- Typically occurs under cyclic loading
  - Isothermal mechanical fatigue
    - [Oscillating load](https://www.youtube.com/watch?v=_qVXkAWtH60)
    - Aircraft fuselages (pressure buildup and release)
  - Thermal fatigue
    - Ovens, heating elements
  - Thermomechanical fatigue
    - High-pressure containers
  - Electrothermal fatigue
    - Current conductors (filaments)

---

![bg 60%](https://leichtbau.dlr.de/wp-content/uploads/2021/11/Abbildung-2_Innovationsbericht_Wasserstofftank_CG06.png)

---

## Fatigue
- Load is below the yield strength $R_{p0,2}$
  - > _Reminder: What does $R_{p0,2}$ mean?_
- Stress concentrations occur at material defects (pores, microcracks) or in the crystal (dislocations, defects)
- Initially, random local areas of plastic deformation form under alternating load
- These points represent stress concentration areas that increase over time and can lead to fracture

[Explanation video](https://www.youtube.com/watch?v=o-6V_JoRX1g)

---

![bg fit](https://upload.wikimedia.org/wikipedia/commons/1/1c/Woehlerlinie.png)
![bg fit 80%](https://upload.wikimedia.org/wikipedia/commons/6/64/Spgs-Dehnungs-Kurve_Dehngrenze.svg)

---
## Stress Ratio
$R = \frac{\sigma_u}{\sigma_o}$
## Mean Stress
$\sigma_m=\frac{\sigma_u+\sigma_o}{2}$

$\sigma_o$ - Upper stress
$\sigma_o$ - Lower stress


---

## Endurance Limit Diagrams
- Haigh diagram and Smith diagram recommended according to DIN 50100

---

## Haigh Diagram

![](https://www.tec-science.com/wp-content/uploads/2021/03/de-dauerschwingversuch-haigh-diagramm-erstellung.jpg)



---

![](https://www.tec-science.com/wp-content/uploads/2021/03/de-dauerschwingversuch-haigh-diagramm-spannungsverhaeltnis.jpg)

---

## Smith Diagram

- Draw angle bisector
- Top and bottom (parallel lines) -> static tensile and compressive strength
- Curves are determined from Wöhler experiments with different R values

![bg right 90%](https://upload.wikimedia.org/wikipedia/commons/b/bd/Smith2.svg)

---

## Terms

- Lifetime
- Fatigue crack
- Fatigue fracture
- Low-cycle fatigue (LCF) $<10^5$ cycles 
- High-cycle fatigue (HCF) $10^4<10^6$ cycles 
- Very high-cycle fatigue (VHCF) $>10^6$ cycles 


![bg right fit 60%](https://upload.wikimedia.org/wikipedia/commons/9/96/Pedalarm_Bruch.jpg)
![bg vertical 60%](https://farm6.staticflickr.com/5522/12140479094_6f746014ab_z.jpg)



---

## Countermeasures

- Reduce notch effect
- Material adaptation
- Adjust design so that local stress does not exceed allowable limits
- Regular inspections

---

## Wear

- Permanent deformation and material loss on the surface of solids due to friction
- Technologically undesirable and can lead to malfunctions
- Influenced by:
  - Friction pair
  - Surface layer and intermediate substance
  - Type of motion
  - Load intensity

---

| Type of Wear            | Appearance                                                        | Primary Occurrence                                         |
|--------------------------|-------------------------------------------------------------------|------------------------------------------------------------|
| Sliding wear             | Grooves or scoring due to abrasion, material transfer, or local melting | Unlubricated bearings, clutches, brakes                   |
| Rolling wear             | Flaking due to fatigue cracks                                    | Wheel/rail, rolling bearings                               |
| Pitting                  | Pitting formation                                                | Rolling bodies, especially gears                           |
| Abrasive wear            | Plastic deformation, erosion                                     | Excavators, bulk material transport, particle impact       |
| Cavitation               | Surface damage due to impact of vapor bubbles                    | Water turbines, pumps                                      |
| Tribooxidation (fretting corrosion) | Loose oxidation product                             | Machine elements with form or force-fit connections        |

---

## Sliding Wear

- Influenced [by](https://download.basf.com/p1/8a8081c57fd4b609017fd66047f138c3/de/Reibung_und_Verschlei%25C3%259F%250Abei_Polymerwerkstoffen)
  - Average roughness depth $R_z$
  - Contact pressure
  - Wear path ratio $W=k\frac{F_N}{A}10^6$
  - $k$ in $\left[\frac{mm^3}{Nm}\right]$ specific wear coefficient (load-independent)

![bg right fit 90%](https://media.springernature.com/original/springer-static/image/chp:10.1007%2F978-3-658-17851-2_4/MediaObjects/299062_3_De_4_Fig17_HTML.gif)

---


## Rolling Wear
- [Rolling](https://link.springer.com/chapter/10.1007/978-3-658-17851-2_6) is a type of stress where sliding components (slip) overlay the pure rolling motion
- Small contact area; high surface pressure
- Surface disruption (plastic deformation, microstructural changes, etc.)
- Significantly reducible with lubrication $\rightarrow$ specific lubricant film thickness $\lambda$

![bg right fit 70%](https://media.springernature.com/full/springer-static/image/chp%3A10.1007%2F978-3-658-17851-2_6/MediaObjects/299062_3_De_6_Fig1_HTML.gif?as=webp)

![bg fit vertical 60%](https://media.springernature.com/full/springer-static/image/chp%3A10.1007%2F978-3-658-17851-2_6/MediaObjects/299062_3_De_6_Fig10_HTML.gif?as=webp)

---

## Cavitation

[Video](https://www.youtube.com/watch?v=J0H0Nw44oA4)

<details>
<summary>Physical Cause?</summary>
<div>

- Static pressure depends on the velocity of a fluid
- When vapor pressure is exceeded, vapor bubbles form
- These bubbles move into areas of higher pressure and collapse instantly
- Pressure and temperature peaks occur
</div>
</details>

---

- Local surface stresses
- These areas fatigue and spall off
- Affects the surface
  - Efficiency reduction
  - Corrosion
  - Areas where cracks can initiate

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/b/bf/Cavitation.jpg)

---

## Fretting Corrosion

- Sliding movements between two highly stressed components
- Often due to insufficient fit $\rightarrow$ tight fits

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/2/27/Corrosion_de_contact_sur_un_bout_d%27arbre_01.jpg)
