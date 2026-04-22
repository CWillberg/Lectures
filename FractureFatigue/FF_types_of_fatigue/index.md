---
marp: true
header: 'Fracture & Fatigue - Types of fatigue'
theme: h2
paginate: true
math: katex
---

<style>
footer {
    font-size: 14px;
    color: #888;
    text-align: right;
}
img[alt="ORCID"] {
    height: 15px !important;
    width: auto !important;
    vertical-align: top !important;
    display: inline !important;
    margin: 0 !important;
}
</style>

<!-- _class: lead -->
# Fracture & Fatigue - Types of fatigue
Prof. Dr.-Ing. Christian Willberg [![ORCID](../../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)

Hochschule Magdeburg-Stendal

<div style="position: absolute; top: 200px; left: 850px;"> 
<img src="https://quickchart.io/qr?text=https://cwillberg.github.io/Lectures/FractureFatigue/FF_types_of_fatigue/&light=0000&size=300&centerImageUrl=https://raw.githubusercontent.com/CWillberg/Lectures/main/assets/QR/h2.png"
     style="height:380px;width:auto;vertical-align:top;background-color:transparent;">
</div>

---

## Overview

- What is fatigue?
- Three stages of fatigue failure
- High-Cycle Fatigue (HCF)
  - Dislocation mechanisms
  - Persistent slip bands
  - Crack initiation & propagation
- Further fatigue types (next lectures)

---

## What is Fatigue?

> *Fatigue is the **initiation and propagation of cracks** in a material due to cyclic loading.*

**Key characteristics:**
- Cracks grow a small amount **with each loading cycle** → striations on fracture surface
- Failure occurs **far below** the static yield or ultimate strength
- Damage is **irreversible** — materials do not recover when rested
- Fatigue has a degree of **randomness** — considerable scatter even in identical specimens
- Responsible for the majority of mechanical failures in engineering practice

**Most materials** — metals, composites, plastics, ceramics — experience fatigue-related failure.

---

## Three Stages of Fatigue Failure

All fatigue failures — HCF and LCF alike — follow the same sequence:

$$\underbrace{\text{Crack initiation}}_{\text{Stage I}} \longrightarrow \underbrace{\text{Crack propagation}}_{\text{Stage II}} \longrightarrow \underbrace{\text{Final fracture}}_{\text{Stage III}}$$

**Stage I** – Crack nucleates at stress concentrations: holes, PSBs, inclusions, grain boundaries

**Stage II** – Crack grows perpendicular to applied load; striations form (one per cycle)

**Stage III** – Stress intensity exceeds fracture toughness $K_{Ic}$ → sudden, brittle-like fracture

> Even in normally **ductile** materials, fatigue failures resemble sudden **brittle** fractures — because the bulk of the damage is invisible without destructive testing.

---

## High-Cycle Fatigue (HCF) — Overview

**Range:** $10^4 \leq N_f \leq 10^7$ cycles

**Mechanical regime:**
- Applied stress amplitudes **below** the macroscopic yield strength $\sigma_a < R_{p0.2}$
- Bulk of the material deforms **elastically**
- Yet failure occurs — driven by **localised microplasticity**

**High cycle fatigue strength** can be described by stress-based parameters.
Testing typically at **20–50 Hz** on load-controlled servo-hydraulic rigs.

> **Key insight:** Even when the global stress is elastic, individual grains in favourable orientations experience local shear stresses exceeding their critical resolved shear stress → **local plasticity** drives all damage.

---

## Dislocations — The Carriers of Plastic Deformation

**Dislocations** are line defects in the crystal lattice. They move when the resolved shear stress on their slip plane exceeds the critical value $\tau_{CRSS}$.

**Under monotonic loading:**
- Dislocations glide → macroscopic plastic strain
- Work hardening through dislocation–dislocation interactions

**Under cyclic loading — the crucial difference:**
- Forward half-cycle: dislocations glide in one direction
- Reverse half-cycle: dislocations are driven **back**
- Reversal is **not perfect** → net irreversible displacement accumulates

---

**Why is reversal imperfect?**
- **Cross-slip:** screw dislocations change slip planes → cannot retrace exact path
- **Jog formation:** dislocation interactions create steps → obstacles on return path
- **Point defect creation:** jog motion produces vacancies and interstitials → lattice damage

$$\varepsilon_{p,\text{forward}} \neq \varepsilon_{p,\text{backward}} \quad \Rightarrow \quad \Delta\varepsilon_p^{\text{net}} > 0 \text{ per cycle}$$

---

## Dislocation Structure Evolution

With increasing cycle number, dislocation structures evolve through distinct stages:

**Stage 1 — Random distribution** *(few cycles)*
- Dislocations distributed homogeneously throughout grains
- Low density, weak interactions → material hardens in response to cyclic load

**Stage 2 — Vein and channel structure** *(intermediate cycles)*
- Dislocations cluster into dense **veins** (tangles) separated by dislocation-poor **channels**
- Dislocations shuttle back and forth in channels during each cycle
- Cell structures form and harden → amplitude of applied stress increases under strain control

---

**Stage 3 — Persistent Slip Bands (PSBs)** *(later cycles)*
- Ladder-like **wall-and-channel** microstructure develops within the veins
- Localised bands of intense cyclic plasticity form
- Plastic strain amplitude in PSBs up to **100× higher** than in the surrounding matrix

![bg right fit](./assets/slipbands.png)

<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild aus F. Weber "Microstructure-Based Fatigue Strength
Estimation for Design and Qualification of
Heavy-Section Ductile Iron Castings"
</div>

---

## Persistent Slip Bands (PSBs)

**PSBs are the critical precursor to fatigue crack initiation.**

**Microstructure:**
- Alternating dislocation-rich **walls** and dislocation-poor **channels**
- Edge dislocations accumulate in walls; screw dislocations glide in channels
- Wall spacing $\approx 1\,\mu\text{m}$

---

**Why "persistent"?**
- PSBs reform at the **same location** even after electropolishing and re-testing
- Represent a stable, low-energy configuration for cyclic plastic deformation

**Consequence at the free surface:**
- Net irreversible slip in PSBs → material is **extruded** outward and **intruded** inward
- Intrusions and extrusions create a surface resembling **the edge of a misaligned deck of cards**
- Surface structure size inversely related to stress concentration factor
- **Intrusions** act as sharp notches → preferred sites for crack nucleation

$$\text{PSB slip} \rightarrow \text{intrusions \& extrusions} \rightarrow \text{Stage I crack nucleation}$$

---

## Crack Initiation — Stage I

**Where does a fatigue crack nucleate?**

- Primarily at **free surfaces** — surface is always the weakest link in HCF
- At PSB–matrix interfaces (most common in clean, smooth specimens)
- At **inclusions, pores, second-phase particles** — stress concentration without needing PSBs
- At **grain boundaries** in coarse-grained or hard materials
- At **geometric stress concentrators** — notches, holes, keyways, sharp corners

---

**Mechanism:**
- Intrusion at PSB acts as a sharp micro-notch
- Crack nucleates along the **PSB plane** — parallel to maximum shear stress ($\approx 45°$ to load)
- Initial growth is **crystallographic** (Stage I): crack follows slip planes
- Extends only a few grain diameters — strongly retarded by grain boundaries

> If a pre-existing stress concentrator is present (inclusion, notch), Stages 1–3 of PSB formation can be **bypassed entirely** — crack initiates immediately.

---

## Crack Propagation — Stage II

**Stage I → Stage II transition:**
- Crack reaches a grain boundary → deflected or transferred to adjacent grain
- Crack reorients **perpendicular to the maximum principal stress** (Mode I opening)
- Now governed by continuum fracture mechanics

**Paris law:**
$$\frac{da}{dN} = C \cdot (\Delta K)^m$$

where $\Delta K = K_{max} - K_{min}$ is the stress intensity range.

---

**Characteristic fracture surface features:**
- **Striations** — one striation per load cycle, result of crack-tip plasticity (blunting & re-sharpening)
- **Beach marks** — macroscopic bands visible to the naked eye, caused by load changes or rest periods
- No significant necking or gross plastic deformation

**Growth rates in Stage II:**  $\sim 10\,\text{nm/cycle}$ to $\sim 1\,\mu\text{m/cycle}$

Most of the **fatigue life** is consumed in the crack growth phase.

---

## Final Fracture — Stage III

- Crack reaches **critical length** $a_c$:
$$K_{max} = K_{Ic} \quad \Rightarrow \quad a_c = \frac{1}{\pi}\left(\frac{K_{Ic}}{\sigma \cdot Y}\right)^2$$

- Remaining cross-section can no longer sustain the load → **rapid, catastrophic fracture**
- Often by **microvoid coalescence** (ductile) or **cleavage** (brittle materials)

**Fracture surface morphology — two zones:**

| Zone | Appearance | Origin |
|---|---|---|
| Fatigue zone | Smooth, flat, striations, beach marks | Slow crack growth |
| Overload zone | Rough, fibrous or granular | Sudden final fracture |

The crack **origin** is often identifiable — surface defect, inclusion, or notch.

---
![w:800](https://materialmagazin.com/images/bilder/labor/Brucharten-450px_0.png)
[Source](https://materialmagazin.com/index.php/labor/fraktographie)

---

## Role of Microstructure in HCF

**Grain boundaries as barriers:**
- Stage I cracks must transfer slip across grain boundaries
- High misorientation angle → strong barrier → crack arrested or deflected
- **Finer grain size** → more barriers → longer initiation life
- Hall-Petch analogy: $\sigma_D \propto d^{-1/2}$

**Inclusions and second phases:**
- Hard inclusions (oxides, sulfides, carbides) create local stress concentrations
- Crack can nucleate at inclusion–matrix interface even without PSB development
- Critical in engineering alloys (steels, aluminium alloys)

---

**Surface condition (critical for HCF):**
- Surface finish directly controls PSB activity and intrusion severity
- **Compressive residual stresses** (shot peening, deep rolling, laser peening) suppress crack initiation
- Depth of compressive layer matters: shot peening $\approx 0.1\,\text{mm}$, laser peening $\approx 1$–$2.5\,\text{mm}$

---

## The S-N Curve 

- also known as Wöhler curve

- Maps **stress amplitude** $\sigma_a$ vs. **cycles to failure** $N_f$.



$$\sigma_a^k \cdot N_f = C \quad \text{(Basquin's power law, 1910)}$$



![bg right fit](./assets/S-N-curve.png)

<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild aus F. Weber "Microstructure-Based Fatigue Strength
Estimation for Design and Qualification of
Heavy-Section Ductile Iron Castings"
</div>

---

**The chain of events:**

1. Cyclic elastic stress → **local resolved shear stress** exceeds $\tau_{CRSS}$ in favourably oriented grains
2. Dislocation glide → **irreversible** due to cross-slip, jog formation, point defect creation
3. Dislocation structures evolve: random → veins → **persistent slip bands (PSBs)**
4. PSBs concentrate plastic strain → **intrusions and extrusions** at the free surface
5. Intrusions act as sharp notches → **Stage I micro-crack** nucleates along PSB plane (~45°)
6. Crack transfers across grain boundary → **Stage II**: Mode I growth, striations form
7. Crack reaches critical size → **final fracture** (Stage III)


---

- HCF damage is a **surface phenomenon** — even when the bulk is elastic
- Damage is **irreversible** and accumulates with every cycle
- **Steels** have an endurance limit (bcc, interstitial pinning); **aluminium** does not (fcc)
- Surface treatment (peening, polishing) is the most effective life improvement measure


---

## Thermal Fatigu

**Definition:** Fatigue damage driven purely by **cyclic thermal stresses** — no external mechanical load required.

**Physical origin:**
- Temperature changes → material expands/contracts
- If thermal expansion is **constrained** → internal stresses develop
- Cyclic heating and cooling → cyclic stress → fatigue damage

$$\sigma_{th} = E \cdot \alpha \cdot \Delta T \quad \text{(fully constrained case)}$$

**Key difference to mechanical HCF/LCF:**
- The "load" is the **temperature cycle** $\Delta T$, not an applied force
- Damage occurs even in **stationary components** (pipes, turbine casings, brake discs)

---

## Thermal Fatigue — Stress Generation Mechanism

**Unconstrained component:**
- Uniform heating → free thermal expansion → **no stress**

$$\varepsilon_{th} = \alpha \cdot \Delta T$$

**Constrained component (e.g. pipe between two rigid walls):**
- Heating → wants to expand → constraint generates **compressive stress**
- Cooling → wants to contract → constraint generates **tensile stress**
- Cyclic temperature → cyclic stress → fatigue

---

**Non-uniform temperature distribution (e.g. surface heated, core cold):**
- Hot surface layer wants to expand but is restrained by cool core
- Surface: **compression** on heating, **tension** on cooling
- Core: opposite sign → self-equilibrating stress state
- Cracks initiate at the **surface** where tensile stresses act on cooling

---

## Thermal Fatigue — Dislocation Mechanisms

**At elevated temperature, dislocation behaviour changes fundamentally:**

**Additional recovery mechanisms active:**
- **Climb:** Edge dislocations can move perpendicular to their slip plane by absorbing/emitting vacancies → thermally activated, requires $T > 0.3\,T_m$
- **Cross-slip:** Easier at high temperature → dislocations escape obstacles more readily
- **Recovery:** Dislocation annihilation reduces stored energy → material **softens** between cycles

---

**Consequence for PSB formation:**
- Recovery competes with dislocation accumulation
- PSBs may not form in the same way as in isothermal HCF
- Instead: **dislocation cell structures** coarsen with each thermal cycle
- Grain boundaries become preferred damage sites due to **grain boundary sliding** at high $T$

---

## Thermal Fatigue — Creep Interaction

**At high temperatures ($T > 0.4\,T_m$), creep and fatigue act simultaneously:**

**Creep mechanisms:**
- Dislocation creep: dislocations climb over obstacles → permanent strain under constant stress
- Grain boundary sliding → cavities nucleate at grain boundary triple points

**Creep-fatigue interaction:**
- During the **hold time** at peak temperature → creep strain accumulates
- On **cooling** → tensile stress reversal → fatigue crack propagation
- Grain boundary cavities link up with fatigue cracks → accelerated failure

---

**In-phase vs. out-of-phase loading (TMF):**

| Mode | Peak stress | Peak temperature | Dominant damage |
|---|---|---|---|
| In-phase (IP) | Tensile | High | Creep cavitation |
| Out-of-phase (OP) | Tensile | Low | Fatigue crack growth |

---

## Thermal Fatigue — Oxidation Effects

**At high temperatures, the environment plays an active role:**

**Oxidation at crack tip:**
- Oxide forms at the crack tip during the high-temperature part of the cycle
- On cooling, oxide layer is **stiffer** than the metal → prevents full crack closure
- Effective $\Delta K$ increases → crack grows faster than in vacuum

**Oxide-induced crack closure reversal:**
- In mechanical fatigue: crack closure **reduces** effective $\Delta K$ → beneficial
- In thermal fatigue with oxidation: oxide wedge **prevents** closure → detrimental

---

**Surface oxidation:**
- Repeated oxidation and spalling removes protective surface layer
- Fresh metal exposed each cycle → continuous oxidation damage
- Combined with thermal stress → **thermal-oxidation fatigue**

**Affected materials:** Nickel superalloys, stainless steels, titanium alloys at $T > 500°C$



---

## Thermal Fatigue — Crack Initiation Sites

**Preferred initiation locations differ from isothermal HCF:**

**Surface and near-surface:**
- Highest thermal gradients → largest $\Delta\sigma_{th}$
- Oxide scale acts as stress concentrator
- Coating/substrate interfaces in coated components (e.g. TBC on turbine blades)

**Grain boundaries:**
- Grain boundary sliding at high $T$ → cavities form
- Grain boundary diffusion → void growth
- Especially at **triple points** (junction of three grains)

---

**Phase boundaries and inclusions:**
- Mismatch in $\alpha$ (coefficient of thermal expansion) between phases
- Each temperature cycle → relative displacement at interface → debonding

$$\Delta\sigma_{\text{mismatch}} = (\alpha_1 - \alpha_2) \cdot \Delta T \cdot E_{\text{eff}}$$

---

## Thermal Fatigue — Crack Propagation

**Propagation is more complex than in isothermal fatigue:**

**Multiple crack interactions:**
- Thermal fatigue often produces **crack networks** (crazing) rather than a single dominant crack
- Network of surface cracks forms due to biaxial thermal stress state
- Cracks interact → reduce stress concentration of individual cracks → slower growth initially

**Crack morphology:**
- Crack path often **intergranular** (along grain boundaries) at high temperature
- Differs from transgranular fatigue cracks in HCF
- Indicates grain boundary damage dominates

**Striation spacing:**
- Larger than in HCF — each "cycle" is one thermal cycle (seconds to hours, not ms)
- Striations may be absent if oxidation obliterates fracture surface features

---

## Thermal Fatigue — Influencing Factors

**Temperature range $\Delta T$:**
- Primary driver — thermal stress scales directly with $\Delta T$
- Doubling $\Delta T$ roughly doubles $\sigma_{th}$ → drastically shorter life

**Heating and cooling rate:**
- Fast thermal transients → steep temperature gradients → high local stresses
- Slow cycling allows more time for creep relaxation → different damage balance

---

**Material properties (all temperature-dependent):**
- $\alpha(T)$ — coefficient of thermal expansion
- $E(T)$ — elastic modulus (decreases with $T$)
- $R_{p0.2}(T)$ — yield strength (decreases with $T$)
- $K_{Ic}(T)$ — fracture toughness

**Geometry:**
- Wall thickness, notches, cooling holes → local stress concentrations
- Thin walls: more uniform temperature → less gradient stress

---

## Thermal Fatigue — Typical Applications & Failures

**Turbine blades (gas turbines, jet engines):**
- Start-up/shutdown cycles + hot-section temperature gradients
- Cooling holes act as stress concentrators
- TBC delamination triggers surface cracking

---

**Brake discs:**
- Each braking event = one thermal cycle
- Surface reaches $> 600°C$ in seconds → steep gradient to core
- Characteristic **heat checking** crack network on disc surface

![bg right 50%](https://fatigue-life.com/wp-content/uploads/2019/11/rotor_disc-600x760.jpg)
[Source - Thermal fatigue cracks on break disc](https://fatigue-life.com/thermal-fatigue/)

---

**Exhaust manifolds (automotive):**
- Engine start/stop → $\Delta T \approx 700°C$
- Cast iron or stainless steel → thermal stress + oxidation

**Soldered joints in electronics (TMF):**
- Power cycling → $\Delta T \approx 50$–$100°C$
- Solder (SnAgCu) creeps at room temperature ($T > 0.5\,T_m$)
- Dominant failure mode in power electronics packaging

**Nuclear reactor components:**
- Thermal striping from turbulent mixing of hot/cold coolant streams

---

## Thermal Fatigue — Summary

**What makes thermal fatigue distinct:**

- Driving force is **temperature change** $\Delta T$, not applied mechanical load
- Stress generated by **constrained thermal expansion** — even in stationary parts
- At high $T$: **creep, oxidation, grain boundary sliding** act simultaneously
- Dislocation mechanisms differ: **climb and recovery** compete with accumulation
- Crack initiation often **intergranular** and at **surfaces/coating interfaces**
- Crack networks (**crazing**) typical — not a single propagating crack
- **In-phase vs. out-of-phase** TMF produces fundamentally different damage modes

---

**Design countermeasures:**
- Minimise $\Delta T$ and thermal gradients (cooling design)
- Use materials with low $\alpha$ or high $E \cdot \alpha$ tolerance
- Thermal barrier coatings (TBC) to reduce substrate temperature swing
- Avoid sharp geometric transitions in thermally loaded components

---

## Fatigue Crack Growth — Overview

**Perspective shift:**
- HCF & thermal fatigue: focus on **crack initiation**
- Fatigue crack growth (FCG): focus on **crack propagation** — assumes a crack already exists

**Why is this relevant?**
- Real components always contain **defects**: inclusions, pores, machining marks, weld defects
- Fracture mechanics asks: *given a crack of size $a_0$, how many cycles until failure?*
- Basis for **damage-tolerant design** (aerospace, nuclear, offshore)

**Fatigue cracks can grow from defects as small as $10\,\mu\text{m}$**

---

## Crack Tip Mechanics
 > Details follow in later lectures

**Stress intensity factor** $K$ characterises the stress field at the crack tip:

$$K = \sigma \cdot Y \cdot \sqrt{\pi a}$$

where $\sigma$ = applied stress, $a$ = crack length, $Y$ = geometry factor.

---

**Under cyclic loading:**

$$\Delta K = K_{max} - K_{min} = \Delta\sigma \cdot Y \cdot \sqrt{\pi a}$$

$$R = \frac{K_{min}}{K_{max}} = \frac{\sigma_{min}}{\sigma_{max}} \quad \text{(stress ratio)}$$

**$\Delta K$ is the primary driving force for fatigue crack growth.**

As the crack grows → $a$ increases → $\Delta K$ increases → crack accelerates → final fracture when $K_{max} = K_{Ic}$

---


## The Paris Law

**Paris, Gomez & Anderson (1961)** — empirical power law relating crack growth rate to $\Delta K$:

$$\frac{da}{dN} = C \cdot (\Delta K)^m$$

where:
- $\frac{da}{dN}$ = crack growth rate [m/cycle]
- $C$, $m$ = material constants (determined experimentally)
- $m \approx 2$–$4$ for most metals

---

**Fatigue life from Paris law** (constant amplitude, $Y$ = const):

$$N_f = \int_{a_0}^{a_c} \frac{da}{C \cdot (\Delta K)^m} = \frac{1}{C \cdot (\Delta\sigma \cdot Y \cdot \sqrt{\pi})^m} \int_{a_0}^{a_c} a^{-m/2}\, da$$

**Key consequence:** doubling $\Delta\sigma$ reduces fatigue life by a factor of $2^m$ — for $m=3$: **8× shorter life**

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/6/6f/Crack_propagation_curve_Paris%27_law.svg)

---

## The Three Regions of FCG

The full crack growth curve ($\log \frac{da}{dN}$ vs. $\log \Delta K$) shows three distinct regions:

**Region I — Near-threshold:**
- $\Delta K \rightarrow \Delta K_{th}$: crack growth rate drops steeply
- Below $\Delta K_{th}$: **crack does not propagate**
- Typical values: $\Delta K_{th} \approx 2$–$10\,\text{MPa}\sqrt{\text{m}}$
- Strongly influenced by microstructure, $R$-ratio, environment

---

**Region II — Paris regime:**
- Linear on log-log plot → Paris law applies
- Relatively insensitive to microstructure
- Most engineering life consumed here

**Region III — Unstable growth:**
- $K_{max} \rightarrow K_{Ic}$: growth rate rises steeply
- Ductile tearing, cleavage, or intergranular fracture
- Final fracture imminent

---

## Summary — Fatigue Crack Growth

**Key concepts:**

- FCG assumes a **pre-existing crack** — fracture mechanics governs propagation
- Driving force: **$\Delta K = \Delta\sigma \cdot Y \cdot \sqrt{\pi a}$** — grows as crack extends
- **Paris law** $\frac{da}{dN} = C(\Delta K)^m$ describes Region II (log-linear) growth
- Three regions: **threshold** (Region I) → **Paris** (Region II) → **unstable** (Region III)


---

<!-- _class: lead -->
## Thank you

**Questions?**

Prof. Dr.-Ing. Christian Willberg
christian.willberg@h2.de
Hochschule Magdeburg-Stendal