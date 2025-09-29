---
marp: true

theme: default
header: ''
footer: ''
backgroundImage: url('../assets/styles/background.png')
title: Lecture Fracture and Fatigue
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
    padding: 0 20px; /* Platzierung der Spalten */
}

.centered-image {
    display: block;
    margin: 0 auto;
}
</style>

<style>
footer {
    font-size: 14px; /* Ändere die Schriftgröße des Footers */
    color: #888; /* Ändere die Farbe des Footers */
    text-align: right; /* Ändere die Ausrichtung des Footers */
}
img[alt="ORCID"] {
    height: 15px !important;
    width: auto !important;
    vertical-align: top !important;
    display: inline !important;
    margin: 0 !important;
}
</style>


## Lecture Fracture and Fatigue
Prof. Dr.-Ing.  Christian Willberg<a href="https://orcid.org/0000-0003-2433-9183"><img src="../assets/styles/ORCIDiD_iconvector.png" alt="ORCID Symbol" style="height:15px;width:auto;vertical-align: top;background-color:transparent;"></a>
Magdeburg-Stendal University of Applied Sciences

![bg right](../assets/Figures/FKV_struktur.png)

Kontakt: christian.willberg@h2.de


---

![bg fit](../assets/Figures/FKV_Beispiele.png)

<!--paginate: true-->

---

# What are fractures?

## Examples








---

---

---

---

# What is fatigue?


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


---
---


---


## Recap Material Sciences


## Mechanics


## Truss example
- 2 Sections one load

---

## Beam example


---

## Continuum mechanics

Strain measures


stresses

stress transformation 


main stresses


Seminar
example -> compute the main stresses of xxx
plot the stresses 11 and 22 in relation to the angle phi


---


