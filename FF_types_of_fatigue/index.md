---
marp: true
header: 'Fracture & Fatigue - Types of fatigue'
theme: h2
paginate: true
math: katex
---
<!-- _class: lead -->
# Fracture & Fatigue
## Types of Fatigue

Prof. Dr.-Ing. Christian Willberg
Hochschule Magdeburg-Stendal

---

## Overview

- What is fatigue?
- Loading types and stress cycles
- Classification of fatigue
  - High-Cycle Fatigue (HCF)
  - Low-Cycle Fatigue (LCF)
  - Very High-Cycle Fatigue (VHCF)
  - Thermal fatigue
  - Corrosion fatigue
  - Fretting fatigue
- S-N curve (Wöhler curve)
- Summary and comparison

---

## What is Fatigue?

**Definition:** Fatigue is the progressive, localised, and permanent structural change occurring in a material subjected to **cyclic or fluctuating strains and stresses** of an amplitude that is less than the static yield strength.

> *"Fatigue is the weakening of a material caused by cyclic loading."*

**Key characteristics:**
- Failure occurs **below** the static ultimate or yield strength
- Damage accumulates **irreversibly** with each cycle
- Failure is often **sudden** and without macroscopic plastic deformation
- Three phases: crack **initiation** → crack **propagation** → **fracture**

---

## Cyclic Loading – Stress Parameters

$$\sigma_m = \frac{\sigma_{max} + \sigma_{min}}{2} \quad \text{(mean stress)}$$

$$\sigma_a = \frac{\sigma_{max} - \sigma_{min}}{2} \quad \text{(stress amplitude)}$$

$$\Delta\sigma = \sigma_{max} - \sigma_{min} \quad \text{(stress range)}$$

$$R = \frac{\sigma_{min}}{\sigma_{max}} \quad \text{(stress ratio)}$$

| Loading type | $R$ | $\sigma_m$ |
|---|---|---|
| Fully reversed | $-1$ | $0$ |
| Pulsating tension | $0$ | $\sigma_a$ |
| Fluctuating tension | $0 < R < 1$ | $> 0$ |

---

## S-N Curve (Wöhler Curve)

The **S-N curve** (Stress vs. Number of cycles) is the fundamental tool to characterise fatigue life.

$$\sigma_a^k \cdot N = C \quad \text{(Basquin's law)}$$

**Regions of the S-N curve:**

| Region | Cycles $N$ | Name |
|---|---|---|
| Quasi-static | $N < 10^3$ | Static / LCF transition |
| Low-Cycle Fatigue | $10^3 \leq N \leq 10^4$ | LCF |
| High-Cycle Fatigue | $10^4 \leq N \leq 10^7$ | HCF |
| Endurance limit | $N > 10^7$ | VHCF / Fatigue limit |

- For **steels**: a fatigue (endurance) limit $\sigma_D$ often exists at $\approx 10^6$–$10^7$ cycles
- For **aluminium alloys**: no distinct endurance limit – fatigue life continues to decrease

---

## High-Cycle Fatigue (HCF)

**Definition:** $10^4 \leq N_f \leq 10^7$ cycles

**Characteristics:**
- Stress amplitudes **below** the yield strength $\sigma_a < R_{p0.2}$
- Deformation is **predominantly elastic**
- Crack initiation dominates the fatigue life
- Life governed by **stress amplitude** $\sigma_a$

**Typical applications:**
- Rotating machinery (shafts, gears, turbine blades)
- Pressure vessels under cyclic load
- Automotive suspension components

**Design approach:** Ensure $\sigma_a < \sigma_D$ (endurance limit)

$$\sigma_D \approx 0.4 \cdot R_m \quad \text{(steel, rough estimate)}$$

---

## Low-Cycle Fatigue (LCF)

**Definition:** $N_f \lesssim 10^4$ cycles

**Characteristics:**
- High stress amplitudes $\sigma_a > R_{p0.2}$ → **plastic deformation per cycle**
- Life governed by **strain amplitude** $\varepsilon_a$
- Coffin-Manson relation:

$$\varepsilon_{a,p} = \varepsilon_f' \cdot (2N_f)^c$$

where $\varepsilon_f'$ is the fatigue ductility coefficient and $c \approx -0.5 \ldots -0.7$

**Complete strain-life relation (Morrow):**

$$\varepsilon_a = \underbrace{\frac{\sigma_f'}{E}(2N_f)^b}_{\text{elastic}} + \underbrace{\varepsilon_f'(2N_f)^c}_{\text{plastic}}$$

**Typical applications:**
- Pressure vessels under thermal cycling
- Nuclear reactor components
- Landing gear, aircraft structures under extreme loads

---

## Very High-Cycle Fatigue (VHCF)

**Definition:** $N_f > 10^7$ cycles (up to $10^{10}$)

**Why relevant?**
- Modern engineering systems run for **billions of cycles**
- High-speed rail, gas turbines, ultrasonic transducers

**Key findings:**
- Steel does **not** always have a "true" endurance limit
- Crack initiation can occur at **internal inclusions** (fisheye fracture)
- Two-step S-N curve with a "knee" around $10^6$–$10^7$

**Crack initiation sites in VHCF:**
- Surface defects (HCF regime)
- Sub-surface inclusions, pores (VHCF regime) → **fisheye** morphology

$$\sigma_{VHCF} < \sigma_D \quad \text{(failure still possible!)}$$

---

## Thermal Fatigue

**Definition:** Fatigue caused by **cyclic thermal stresses** due to temperature changes (no mechanical external load required).

**Mechanism:**
$$\sigma_{th} = E \cdot \alpha \cdot \Delta T \quad \text{(constrained thermal expansion)}$$

- Temperature gradients → differential expansion → cyclic stress
- Combined with creep at elevated temperatures → **creep-fatigue interaction**

**Influencing factors:**
- Temperature range $\Delta T$
- Heating/cooling rate
- Coefficient of thermal expansion $\alpha$
- Elastic modulus $E$ and yield strength (temperature-dependent)

**Typical applications:**
- Turbine blades, exhaust manifolds
- Soldered joints in electronics (TMF)
- Power plant components

---

## Corrosion Fatigue

**Definition:** Accelerated fatigue damage in the presence of a **corrosive environment**.

**Key effects:**
- Corrosion pits act as **stress concentrators** → earlier crack initiation
- Corrosion product wedging accelerates crack propagation
- **No distinct fatigue limit** in corrosive environment – S-N curve continues to fall

**Corrosion fatigue vs. SCC (Stress Corrosion Cracking):**

| Property | Corrosion Fatigue | SCC |
|---|---|---|
| Loading | Cyclic | Static |
| Affected materials | Most metals | Material-environment specific |
| Fatigue limit | Eliminated | – |

**Typical applications:**
- Offshore structures (steel in seawater)
- Marine propeller shafts
- Implants in biological environments

---

## Fretting Fatigue

**Definition:** Fatigue damage caused by small-amplitude oscillatory **slip** at the contact interface between two components under load.

**Mechanism:**
1. Small relative displacement at contact → surface damage (fretting wear)
2. Fretting debris and micro-cracks act as **stress concentrators**
3. Fatigue cracks initiate at contact edge → propagate under bulk stress

**Characteristic features:**
- Very small slip amplitudes ($\delta \approx 5$–$50\,\mu\text{m}$)
- Red-brown oxide debris ("cocoa powder") for steel
- Significant **reduction of fatigue life** compared to plain fatigue

**Typical applications:**
- Bolted and riveted joints
- Dovetail blade-disc connections in turbines
- Press fits and shrink fits on shafts

---

## Comparison of Fatigue Types

| Type | Load | $N_f$ range | Key parameter | Typical failure site |
|---|---|---|---|---|
| HCF | Cyclic stress | $10^4$–$10^7$ | $\sigma_a$ | Surface |
| LCF | Cyclic strain | $<10^4$ | $\varepsilon_a$ | Surface |
| VHCF | Cyclic stress | $>10^7$ | $\sigma_a$ | Interior (inclusions) |
| Thermal | $\Delta T$ cycles | Variable | $\Delta T$, $\alpha$ | Surface / gradient |
| Corrosion | Cyclic + corrosion | Reduced | $\sigma_a$, environment | Pits / surface |
| Fretting | Micro-slip + stress | Reduced | $\delta$, $\sigma_{bulk}$ | Contact edge |

---

## Damage Accumulation – Miner's Rule

For **variable amplitude loading**, the linear damage accumulation hypothesis (Palmgren-Miner):

$$D = \sum_{i} \frac{n_i}{N_{f,i}} \leq 1$$

where:
- $n_i$ = number of applied cycles at stress level $i$
- $N_{f,i}$ = cycles to failure at stress level $i$ from S-N curve
- Failure when $D = 1$

**Limitations:**
- No load sequence effects
- No mean stress effects (use Goodman / Gerber for correction)
- Conservative or non-conservative depending on load history

**Goodman correction (mean stress):**
$$\frac{\sigma_a}{\sigma_D} + \frac{\sigma_m}{R_m} = 1$$

---

## Summary

**Fatigue types and their distinguishing features:**

- **HCF** – elastic regime, high cycles, stress-controlled → design to endurance limit
- **LCF** – plastic regime, low cycles, strain-controlled → Coffin-Manson
- **VHCF** – internal crack initiation, no safe endurance limit for all materials
- **Thermal fatigue** – temperature-induced cyclic stress, no mechanical load needed
- **Corrosion fatigue** – environment eliminates endurance limit, accelerates initiation
- **Fretting fatigue** – micro-slip at interfaces causes premature crack initiation

**Design principles:**
1. Identify the relevant fatigue type for your application
2. Use appropriate life prediction method ($\sigma_a$ vs. $\varepsilon_a$ vs. $\Delta T$)
3. Account for environment, surface finish, stress concentrations
4. Apply safety factors / probabilistic design

---
<!-- _class: lead -->
## Thank you

**Questions?**

Prof. Dr.-Ing. Christian Willberg
christian.willberg@h2.de
Hochschule Magdeburg-Stendal