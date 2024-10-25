---
marp: true

theme: default
header: ''
footer: ''
backgroundImage: url('../assets/styles/background.png')
title: Materials-and-Production-Engineering-Lectures Fatigue and wear
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


## Lectures on Materials Science - Fatigue and wear
Prof. Dr.-Ing. Christian Willberg<a href="https://orcid.org/0000-0003-2433-9183"><img src="../assets/styles/ORCIDiD_iconvector.png" alt="ORCID symbol" style="height:15px;width:auto;vertical-align: top;background-color:transparent;"></a>
Magdeburg-Stendal University of Applied Sciences

![bg right](https://upload.wikimedia.org/wikipedia/commons/a/a2/Bochumer_Verein-23-50078.jpg)

Contact: christian.willberg@h2.de
Parts of the script are adopted from \
Prof. Dr.-Ing. Jürgen Häberle


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


