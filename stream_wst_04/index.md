---
marp: true

theme: default
header: ''
footer: ''
backgroundImage: url('../assets/styles/background.png')
title: Lecture on Fundamentals of Mechanical Engineering - Materials Science
author: Christian Willberg
---


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
$R = \frac{\sigma_l}{\sigma_u}$
## Mean Stress
$\sigma_m=\frac{\sigma_l+\sigma_u}{2}$

$\sigma_u$ - Upper stress
$\sigma_l$ - Lower stress

![bg right 90%](../assets/Figures/sinuskurven_mit_offset.png)

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

# Wear

---

- Permanent shape and material changes on the surface of solid bodies due to friction
- Not intended technologically and can represent or result in functional failure
- Influenced by
  - Friction pair combination
  - Condition of boundary layers and intermediate substances
  - Type of movement
  - Magnitude of load 

---

- **Adhesive Wear**
- **Abrasive Wear**
- **Surface Fatigue**
- **Triboxidation**

---

## Adhesive Wear
 - Adhesive wear occurs with insufficient lubrication
 - High surface pressure causes surfaces to stick together
 - When sliding occurs, boundary layer particles transfer
 - Results in holes and flaky material particles, often adhering to the sliding surface of the harder counterpart

---

![bg 50%](https://upload.wikimedia.org/wikipedia/commons/3/31/Rt%2BRv%2BRp.gif)

---

## Abrasive Wear

- Hard particles in a lubricant or roughness peaks of a friction partner penetrate the boundary layer
  -> results in scratching and micro-cutting
  - Groove wear or erosion wear 

- Correct choice of material pairing; metal-plastic or metal-ceramic pairings

---

Example Wind Energy:
- Sand in the wind "grinds" down the surface
- Efficiency decreases
![bg right 100%](https://encyclopedia.pub/media/item_content/202209/6333de2d03ef5energies-15-05672-g008.png)

---

## Surface Fatigue

- Alternating or swelling mechanical stresses on the surface
- Fatigue or creep of the material on the surface

---

## Triboxidation
- Triboxidation (fit corrosion) on a steel shaft
- Formation of intermediate layers, e.g., oxide layers, due to chemical reaction and their mechanical destruction due to movement of parts
- Almost always occurs together with adhesive wear

---

| Type of Wear               | Appearance                                                        | Primary Occurrence                                          |
|----------------------------|-------------------------------------------------------------------|-------------------------------------------------------------|
| Sliding Wear               | Grooves or scratches due to abrasion, material transfer, or local melting | Non-lubricated bearings, clutches, brakes                   |
| Rolling Wear               | Flaking due to fatigue cracks                                      | Wheel/rail, rolling bearings                                |
| Pitting                    | Formation of pits: pitting                                        | Rolling elements, especially gears                          |
| Abrasive Wear              | Plastic deformation, erosion                                      | Excavators, bulk material transport, particle impact        |
| Cavitation                 | Surface damage due to impact of vapor bubbles                     | Water turbines, pumps                                       |
| Triboxidation (Friction Corrosion) | Loose oxidation product                                | Machine elements with form or force-locked connections      |

---

## Sliding Wear

- Influenced [by](https://download.basf.com/p1/8a8081c57fd4b609017fd66047f138c3/de/Reibung_und_Verschlei%25C3%259F%250Abei_Polymerwerkstoffen)
  - Mean roughness depth $R_z$
  - Contact pressure
  - Wear path ratio $W=k\frac{F_N}{A}10^6$
  - $k$ in $\left[\frac{mm^3}{Nm}\right]$ specific wear coefficient (load-independent)

![bg right fit 90%](https://media.springernature.com/original/springer-static/image/chp:10.1007%2F978-3-658-17851-2_4/MediaObjects/299062_3_De_4_Fig17_HTML.gif)

---

## Rolling Wear
- [Rolling](https://link.springer.com/chapter/10.1007/978-3-658-17851-2_6) is a type of stress in which sliding components (slip) superimpose the pure rolling process
- Small contact area; high surface pressure
- Surface fatigue (plastic deformation, structural changes, etc.)
- Significantly reducible through lubrication $\rightarrow$ specific lubricant film thickness $\lambda$

![bg right fit 70%](https://media.springernature.com/full/springer-static/image/chp%3A10.1007%2F978-3-658-17851-2_6/MediaObjects/299062_3_De_6_Fig1_HTML.gif?as=webp)

![bg fit vertical 60%](https://media.springernature.com/full/springer-static/image/chp%3A10.1007%2F978-3-658-17851-2_6/MediaObjects/299062_3_De_6_Fig10_HTML.gif?as=webp)

---

## Cavitation

[Video](https://www.youtube.com/watch?v=J0H0Nw44oA4)

<details>
<summary>Physical Cause?</summary>
<div>

- Static pressure depends on the speed of a fluid
- When the vapor pressure is undercut, vapor bubbles form
- These bubbles move into areas with higher pressure and condense abruptly
- Pressure and temperature peaks occur
</div>
</details>

---

- Local stress on the surface
- These areas fatigue and flake off
- Impacts the surface
  - Efficiency reduction
  - Corrosion
  - Areas where cracks can initiate

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/b/bf/Cavitation.jpg)

---

## Friction Corrosion

- Sliding movements between two highly loaded components
- Often occurs when there is insufficient clearance $\rightarrow$ fits

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/2/27/Corrosion_de_contact_sur_un_bout_d%27arbre_01.jpg)
