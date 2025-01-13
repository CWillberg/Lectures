---
marp: true

theme: default
header: ''
footer: ''
backgroundImage: url('../assets/styles/background.png')
title: Materials-and-Production-Engineering-Lecture Heat Treatment
author: Christian Willberg
---

<style>
footer {
    font-size: 14px; /* Change footer font size */
    color: #888; /* Change footer color */
    text-align: right; /* Change footer alignment */
}
</style>


## Lecture on Materials Science -  Heat Treatment
Prof. Dr.-Ing. Christian Willberg<a href="https://orcid.org/0000-0003-2433-9183"><img src="../assets/styles/ORCIDiD_iconvector.png" alt="ORCID symbol" style="height:15px;width:auto;vertical-align: top;background-color:transparent;"></a>
Magdeburg-Stendal University of Applied Sciences

![bg right](https://wiki.arnold-horsch.de/images/3/36/Flamm-1.png)

Contact: christian.willberg@h2.de
Parts of the script are adopted from \
Prof. Dr.-Ing. Jürgen Häberle


---

<!--paginate: true-->

## Contents



![bg right 70%](../assets/QR/stream_wst_09.png)

---
## Heat Treatment

- Annealing processes
- Hardening processes

Characterization:
- Type of heating
- Holding temperature
- Holding time
- Type of cooling (furnace, air, oil, water cooling)

![bg right 50% fit](../assets/styles/w.png)

---

# Why?

---

- Improvement of machinability (soft annealing)
- Step in production process (hardening of tools)
- Enhancement of mechanical properties (tempering of steel, aging of aluminum alloys)
- Reduction of wear (surface hardening of gears)
- Elimination of work hardening (recrystallization annealing)
- Reduction of casting or welding stresses (stress-relief annealing)

---

![bg 70% fit](../assets/Figures/Eisen_Kohlenstoff_Diagramm_Deutsch.svg)

---

![bg 43% fit](../assets/Figures/EKD_farbe.png)

---

## Annealing

- Slow cooling, aiming to approach the equilibrium state

Objectives for:
- Stress-relief annealing
- Recrystallization annealing
- Soft annealing
- Normalizing
- Coarse grain annealing
- Diffusion annealing

---

## Stress-Relief Annealing

- Slow heating to 550 - 650 °C (below $\text{A}_{c1}$)
- Holding time 2 - 4 hours, slow cooling (furnace cooling)

![bg fit right](../assets/Figures/EKD_farbe.png)

Objective:
Reduction of internal stresses (residual stresses) without significant change to other properties

---

## Stress-Relief Annealing

- Slow heating to 550 - 650 °C (below $\text{A}_{c1}$)
- Holding time 2 - 4 hours, slow cooling (furnace cooling)

![bg right 90% fit](../assets/Figures/spannungsarmgluehen.svg)

Objective:
Reduction of internal stresses (residual stresses) without significant change to other properties

---

## Recrystallization Annealing

![bg fit right](../assets/Figures/EKD_farbe.png)

- Reversal of property changes (hardening) caused by cold deformation
- Structural transformation or new formation in the solid state
- Stress reduction
- Increase in fracture elongation

---

## Recrystallization Annealing

- Recrystallization temperature for steel: 500 - 600 °C
- Holding, slow cooling
- Excessive holding time: coarse grain formation

![bg right 90% fit](../assets/Figures/rekristallisationsgluehen.svg)

---

## Soft Annealing

![bg fit right](../assets/Figures/EKD_farbe.png)

- Producing a soft condition favorable for further processing
- Cementite particles are spherodized (spherodized annealing).

---

## Soft Annealing

- Temperatures around $\text{A}_{C1}$ (below, above, or oscillating around $\text{A}_{C1}$)
- Slow cooling.

![bg fit right 90%](../assets/Figures/weichgluehen.svg)

---

## Normalizing

- Temperature 30 - 50 °C above transformation temperature in the austenite range
- Rapid heating between $\text{A}_{C1}$ and annealing temperature, short holding time
- Rapid cooling through two-phase interval, then slow cooling

![bg fit right](../assets/Figures/EKD_farbe.png)

---

## Normalizing

![bg fit right 90%](../assets/Figures/normalgluehen.svg)

- Produces a uniform, fine-grained structure with pearlite
- Approaches equilibrium state through double recrystallization (during heating and cooling)
- Frequently used process

---

## Coarse Grain Annealing

- Achieves coarse grains
- Improves machinability

![bg fit right](../assets/Figures/EKD_farbe.png)

---

## Coarse Grain Annealing

- Temperature significantly above $\text{A}_{C3}$ (950 - 1100 °C)
- Holding time 1 to 2 hours
- Slow furnace cooling
- Faster air cooling afterward

![bg fit right 90%](../assets/Figures/grobkorngluehen.svg)

---

## Diffusion Annealing

- Eliminates local concentration differences (segregations) through diffusion

![bg fit right](../assets/Figures/EKD_farbe.png)

---

## Diffusion Annealing

- High temperature in the austenite range
- Long holding time (up to 50 hours)
- Slow cooling

![bg fit right 90%](../assets/Figures/diffussionsgluehen.svg)

---

![bg 60%](../assets/Figures/Diffusion_Kohlenstoff_in_Eisen.png)

---

## TTT Diagrams

- Time-Temperature-Transformation diagrams
- Provided for various materials and alloys
- Basis for planning heat treatment processes
- Differentiation in cooling at
  - constant temperature (isothermal transformation)
  - continuous cooling

---

## Isothermal Transformation

- Sample is quenched
- Held at constant temperature until transformation is complete

![bg right fit](../assets/Figures/ztisotherm.png)

---

## Continuous Cooling

- Starting from the austenitization condition, cooled at various rates
- Transformation into ferrite, pearlite, bainite (intermediate stage), or martensite occurs at different temperatures to varying extents
- Final hardness is usually marked at the end of the cooling curve

![bg right fit](../assets/Figures/ztukontinuierlich.png)

---

# Hardening Processes

---

## Hardening

- Cooling from a temperature above the transformation line GOSK at a rate faster than the critical rate (“quenching”)
- Goal is a non-equilibrium state through the transformation of austenite into martensite (possibly bainite)

![bg right 100%](../assets/Figures/Eisen_Kohlenstoff_Diagramm_Deutsch.svg)

---

## Processes

- Volume heating hardening
- Tempering
- Quenching and tempering
- Surface hardening
- Thermochemical processes
  - Carburizing / case hardening
  - Nitriding
- Thermomechanical processes
- Curing

---

## Volume Heating Hardening

- Carbon content of at least 0.3% (otherwise pre-treatment required)
- For small cross-sections, complete martensite formation can occur throughout the section (through-hardening). For large sections, the critical cooling rate is achieved only up to a certain depth (case hardening).
- Maximum hardness depends only on carbon content

---

## Surface Hardening

- Applied to low-alloy and unalloyed steels with 0.3 - 0.7% carbon (upper limit to avoid quench cracks)
- Especially for crankshafts, journals, rolls, gears, etc. The goal is a hard and wear-resistant surface with a tough core.
- Surface layer of the workpiece is heated to hardening temperature and quenched to harden.

---

## Methods

The [surface hardening](http://wiki.arnold-horsch.de/index.php/Oberfl%C3%A4chenh%C3%A4rteverfahren) can be achieved through the following methods:

- Flame hardening
- Induction hardening
- Beam hardening (electron beam and laser hardening)
- Quenching

![bg right fit 55%](http://wiki.arnold-horsch.de/images/3/36/Flamm-1.png)

![bg vertical fit 55%](http://wiki.arnold-horsch.de/images/c/c8/Induktion-1.png)
