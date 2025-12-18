---
marp: true

theme: h2
header: 'Fatigue and Wear'
footer: ''

title: Fatigue and Wear
author: Christian Willberg
---

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
Magdeburg-Stendal University of Applied Sciences

![bg right 60%](../assets/QR/stream_wst_08.png)

Contact: christian.willberg@h2.de  
Parts of the script are adopted from Prof. Dr.-Ing. Jürgen Häberle  

---

<!--paginate: true-->




# Learning Objectives

After this lecture, you will be able to:

- Recognize and explain fatigue mechanisms
- Read and interpret Wöhler diagrams
- Distinguish different types of wear
- Name countermeasures to prevent fatigue and wear

---

# Part 1: Fatigue

---

# Fatigue

<details>
<summary>What is fatigue?</summary>

<img src="https://upload.wikimedia.org/wikipedia/commons/7/7e/Sleeping_students.jpg" alt="Alternative text" width="500">

</details>

---

## Definition: Fatigue

**Fatigue** is the progressive failure of a material under cyclic (repeated) loading.

**Important:**
- Load is **below** the tensile strength
- Failure occurs after many load cycles
- Begins with microscopically small cracks

**Everyday example:** Bending a paper clip back and forth repeatedly

---

## Types of Fatigue

- Typically occurs under cyclic loading
  - **Isothermal mechanical fatigue**
    - Oscillating load
    - Aircraft fuselages (pressure build-up and release)
  - **Thermal fatigue**
    - Furnaces, heating elements
  - **Thermomechanical fatigue**
    - High-pressure vessels
  - **Electrothermal fatigue**
    - Electrical conductors (filaments)

---



<br/>
<iframe width="1150" height="500" src="https://www.youtube.com/watch?v=_qVXkAWtH60" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>



---


![bg 60%](https://leichtbau.dlr.de/wp-content/uploads/2021/11/Abbildung-2_Innovationsbericht_Wasserstofftank_CG06.png)

---

## Fatigue Mechanism

- The load is below the yield strength $R_{p0.2}$
  - > _Reminder: What does $R_{p0.2}$ mean?_
  - $R_{p0.2}$ = 0.2% proof stress (stress at 0.2% plastic strain)
- Stress concentrations occur at:
  - Material defects (pores, microcracks)
  - In the crystal (dislocations, defects)
- Initially, random regions of plastic deformation form locally under alternating load
- These points represent stress concentration areas that grow over time and can lead to fracture

[Explanatory video](https://www.youtube.com/watch?v=o-6V_JoRX1g)

---

## Three Phases of Fatigue

1. **Crack initiation** (approx. 90% of lifetime)
   - Formation of microcracks at defect sites

2. **Crack propagation** (approx. 10% of lifetime)
   - Slow growth of the crack
   - Visible as "beach marks" on the fracture surface

3. **Final fracture**
   - Spontaneous failure when remaining cross-section is too small

---

![bg fit](https://upload.wikimedia.org/wikipedia/commons/1/1c/Woehlerlinie.png)
![bg fit 80%](https://upload.wikimedia.org/wikipedia/commons/6/64/Spgs-Dehnungs-Kurve_Dehngrenze.svg)

---

## The Wöhler Diagram - Basics

**What does the Wöhler diagram show?**
- X-axis: Number of load cycles N (logarithmic)
- Y-axis: Stress amplitude σ (often logarithmic)

**Three important regions:**
- **Low cycle fatigue (LCF):** N < 10⁴
- **Finite life (FL):** 10⁴ < N < 10⁶
- **Fatigue limit (FL):** N > 10⁶

---

## Wöhler Diagram - Interpretation

**What does the curve mean?**
- Higher stress → shorter lifetime
- Below the fatigue limit: theoretically infinite lifetime
- **Caution:** Only valid for the tested material under defined conditions!

**Practical application:**
- Component dimensioning
- Lifetime prediction
- Material selection

---

## Stress Ratio and Mean Stress

**Stress ratio:**
$$R = \frac{\sigma_u}{\sigma_o}$$

**Mean stress:**
$$\sigma_m=\frac{\sigma_u+\sigma_o}{2}$$

**Stress amplitude:**
$$\sigma_a=\frac{\sigma_o-\sigma_u}{2}$$

$\sigma_o$ - Upper stress
$\sigma_u$ - Lower stress

![bg right 90%](../assets/Figures/sinuskurven_mit_offset.png)

---

## Different Loading Cases

| Loading case | R-ratio | Example |
|----------------|--------------|----------|
| Fully reversed | R = -1 | Bending shaft |
| Pulsating | 0 < R < 1 | Tension spring |
| Tension pulsating | R = 0 | Cable with self-weight |
| Compression pulsating | R = ∞ | Compression spring |

**Note:** The higher the mean stress, the lower the tolerable amplitude!

---

## Calculation Example: Stress Calculation

**Given:**
- Upper stress: $\sigma_o = 200$ MPa
- Lower stress: $\sigma_u = -100$ MPa

**Find:**
- Stress ratio R
- Mean stress $\sigma_m$
- Stress amplitude $\sigma_a$

---

## Solution

$$R = \frac{\sigma_u}{\sigma_o} = \frac{-100}{200} = -0.5$$

$$\sigma_m = \frac{\sigma_u + \sigma_o}{2} = \frac{-100 + 200}{2} = 50 \text{ MPa}$$

$$\sigma_a = \frac{\sigma_o - \sigma_u}{2} = \frac{200-(-100)}{2} = 150 \text{ MPa}$$

**Interpretation:** Fully reversed loading with tensile mean stress

---

![bg](https://www.ing-hanke.de/wp-content/uploads/2022/05/Fatigue_Bereiche.jpg)

---

## Constant Life Diagrams

**Purpose:** Representation of allowable stresses as a function of mean stress and amplitude

**Two main types:**
- Haigh diagram
- Smith diagram

Both recommended according to DIN 50100

---

## Haigh Diagram

**Axes:**
- X-axis: Mean stress $\sigma_m$
- Y-axis: Stress amplitude $\sigma_a$

**Interpretation:**
- Each curve represents a number of load cycles
- Area inside the curve: safe
- Area outside: failure

![bg right 90%](https://www.tec-science.com/wp-content/uploads/2021/03/de-dauerschwingversuch-haigh-diagramm-erstellung.jpg)

---

## Haigh Diagram - Application

![](https://www.tec-science.com/wp-content/uploads/2021/03/de-dauerschwingversuch-haigh-diagramm-spannungsverhaeltnis.jpg)

**Lines of constant R-ratio** run as straight lines through the origin

---

## Smith Diagram

- X-axis: Mean stress $\sigma_m$
- Y-axis: Upper and lower stress $\sigma_o$, $\sigma_u$

**Construction:**
- Draw angle bisector
- Top and bottom (parallel lines) → static compression and tensile strength
- Curves are determined from Wöhler experiments with different R

![bg right 80%](https://www.ing-hanke.de/wp-content/uploads/2020/03/Dauerfestigkeitsschaulbild_Smith-Diagramm.jpg)

---

## Smith vs. Haigh - Comparison

| Property | Smith Diagram | Haigh Diagram |
|-------------|----------------|----------------|
| Y-axis | $\sigma_o$, $\sigma_u$ | $\sigma_a$ |
| Clarity | Better for practitioners | Better for calculation |
| Representation R | Lines through intersection with angle bisector | Lines through origin |
| Usage | Construction | Science |

---

## Term Definitions

- **Lifetime:** Number of cycles until failure
- **Fatigue crack:** Crack formed by repeated loading
- **Fatigue fracture:** Final failure
- **Low Cycle Fatigue (LCF):** N < 10⁴
- **High Cycle Fatigue (HCF):** 10⁴ < N < 10⁶
- **Very High Cycle Fatigue (VHCF):** N > 10⁶

![bg right fit 60%](https://upload.wikimedia.org/wikipedia/commons/9/96/Pedalarm_Bruch.jpg)
![bg vertical 60%](https://farm6.staticflickr.com/5522/12140479094_6f746014ab_z.jpg)

---

## Factors Influencing Fatigue Strength

1. **Material**
   - Strength, toughness, microstructure

2. **Component geometry**
   - Notches, transitions, cross-section changes

3. **Surface**
   - Roughness, residual stresses, work hardening

4. **Environment**
   - Temperature, corrosion, frequency

---

## Notch Effect

**Form factor:** $\alpha_k = \frac{\sigma_{max}}{\sigma_{nom}}$

**Notch sensitivity factor:** $\beta_k = \frac{\sigma_{D,smooth}}{\sigma_{D,notch}}$

**Important:**
- Notches concentrate stresses
- $\beta_k$ is always < $\alpha_k$ (material can deform plastically locally)
- Avoid sharp transitions in design!

![bg right 90%](https://www.maschinenbau-wissen.de/bilder/skripte/mechanik/kerbspannung-01.PNG)

---

## Countermeasures Against Fatigue

**Design:**
- Reduce notch effect (increase radii)
- Avoid stress concentrations
- Adapt design so local stress does not exceed allowable limits

**Material technology:**
- Material adaptation (higher strength)
- Heat treatment

---

**Surface treatment:**
- Smooth surface (polishing)
- Introduce compressive residual stresses (e.g., shot peening)

**Operation:**
- Regular inspections


![bg fit right](https://www.ing-hanke.de/wp-content/uploads/2020/03/Abminderungsfaktoren_Dauerfestigkeit_Rauheit_Sproedigkeit_Stahl.jpg)

---

## Calculation Example: Lifetime Estimation

**Given:**
- Steel component with fatigue limit $\sigma_D = 300$ MPa at N = 10⁷
- Wöhler curve: $\sigma_a \cdot N^k = C$ with k = 0.1
- Operating stress: $\sigma_a = 400$ MPa

**Find:** Expected lifetime N

---

## Solution

**From fatigue limit point:**
$$C = \sigma_D \cdot N^k = 300 \cdot (10^7)^{0.1} = 300 \cdot 10^{0.7} = 1505$$

**For operating stress:**
$$N = \left(\frac{C}{\sigma_a}\right)^{1/k} = \left(\frac{1505}{400}\right)^{10} = 3.76^{10} \approx 4.1 \cdot 10^5 \text{ cycles}$$

**Interpretation:** The component is expected to fail after approximately 410,000 cycles

---

## Summary Part 1: Fatigue

- Fatigue = failure under cyclic loading below yield strength
- Wöhler diagram describes stress vs. number of load cycles
- Constant life diagrams (Smith/Haigh) consider mean stress
- Three phases: initiation, propagation, final fracture
- Countermeasures: design, material, surface, inspection

---

# Part 2: Wear

---

## Definition: Wear

**Wear** is a permanent change in form and material at the surface of solids as a result of friction

**Important:**
- Technologically unintended
- Represents functional failure
- Leads to dimensional changes and loss of function

---

## Factors Influencing Wear

Influenced by:
- **Friction pair** (e.g., metal-metal, metal-plastic)
- **Condition of boundary layers** and intermediate material (lubricant)
- **Type of motion** (sliding, rolling, impact)
- **Load level** (surface pressure, velocity)

---

## Four Main Types of Wear

**Adhesive wear**
**Abrasive wear**
**Surface fatigue**
**Tribooxidation**

Often several mechanisms occur simultaneously!

---

## Adhesive Wear (Scuffing)

**Mechanism:**
- Occurs with insufficient lubrication
- At high surface pressure, surfaces adhere to each other (cold welding)
- When sliding occurs, surface layer particles are torn out
- Holes and flake-like material particles form
- These often adhere to the sliding surface of the harder partner

**Typical damage:** Scuffing, material transfer, "welding"

---

## Surface Parameters / Surface Roughness

**Important parameters:**
- **$R_a$:** Arithmetic mean roughness
- **$R_z$:** Mean roughness depth
- **$R_t$:** Total height of profile

**Rule:** The smoother the surface, the lower the wear (with adequate lubrication!)

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/3/31/Rt%2BRv%2BRp.gif)


---

## Abrasive Wear (Grooving)

**Mechanism:**
- Hard particles in a lubricant or
- Roughness peaks of a friction partner
- penetrate into the surface layer
- → scratching and micro-machining occur
- Also: grooving wear or erosive wear

**Countermeasures:**
- Correct choice of material pairing
- Metal-plastic or metal-ceramic pairings
- Filter lubrication

---

## Practical Example: Wind Energy

- Sand in the wind "sands down" the rotor blades
- Surface becomes rough
- Aerodynamic efficiency decreases
- Energy losses of up to 20%!

**Solution:**
- Coatings
- Regular maintenance

![bg right 100%](https://encyclopedia.pub/media/item_content/202209/6333de2d03ef5energies-15-05672-g008.png)

---

## Surface Fatigue

**Mechanism:**
- Alternating or pulsating mechanical stresses at the surface
- Similar to fatigue (cyclic loading)
- Leads to fatigue or creep of the material
- Material "fatigues" and flakes off

**Typical for:**
- Rolling bearings
- Gears
- Wheel-rail contact

---

## Tribooxidation (Fretting Corrosion)

- Formation of intermediate layers (e.g., oxide layers)
- Through chemical reaction
- Mechanical destruction by movement of components
- Loose, abrasive oxidation product forms

---
## Tribooxidation (Fretting Corrosion)
**Special feature:**
- Almost always occurs together with adhesive wear
- Also called "fretting rust"

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/2/27/Corrosion_de_contact_sur_un_bout_d%27arbre_01.jpg)

---

## Overview of Wear Types by Loading

| Wear type | Appearance | Primary occurrence |
|---------------|-------------|-------------------|
| **Sliding wear** | Grooves or scoring from abrasion, material transfer, or local melting | Unlubricated bearings, clutches, brakes |
| **Rolling wear** | Flaking from fatigue cracks | Wheel/rail, rolling bearings |
| **Pitting** | Pit formation | Rolling elements, especially gears |

---

## Overview of Wear Types (Continued)

| Wear type | Appearance | Primary occurrence |
|---------------|-------------|-------------------|
| **Abrasive wear** | Plastic deformation, erosion | Excavators, bulk material transport, particle impact |
| **Cavitation** | Surface damage from vapor bubble impact | Water turbines, pumps |
| **Tribooxidation** | Loose oxidation product | Machine elements with form-fit or force-fit connections |

---

## Sliding Wear - Quantification

**Wear path ratio:**
$$W = k \cdot \frac{F_N}{A} \cdot 10^6$$

Where:
- $k$ = specific wear coefficient in $\left[\frac{mm^3}{Nm}\right]$ (load-independent, material-specific)
- $F_N$ = normal force
- $A$ = bearing surface

---

Influenced by:
- Mean roughness depth $R_z$
- Contact pressure
- Sliding velocity

![bg right fit 90%](https://media.springernature.com/original/springer-static/image/chp:10.1007%2F978-3-658-17851-2_4/MediaObjects/299062_3_De_4_Fig17_HTML.gif)

---

## Calculation Example: Wear Calculation

**Given:**
- Plain bearing with $k = 2 \cdot 10^{-6}$ mm³/(Nm)
- Normal force: $F_N = 1000$ N
- Bearing surface: $A = 10$ cm² = 1000 mm²
- Sliding distance: $s = 1000$ m

**Find:** Volume wear $V$

---

## Solution

**Wear intensity:**
$$W = k \cdot \frac{F_N}{A} \cdot 10^6 = 2 \cdot 10^{-6} \cdot \frac{1000}{1000} \cdot 10^6 = 2 \text{ mm}^3/\text{m}$$

**Volume wear:**
$$V = W \cdot s = 2 \cdot 1000 = 2000 \text{ mm}^3 = 2 \text{ cm}^3$$

**Interpretation:** After 1000 m sliding distance, 2 cm³ of material has been removed

---

## Rolling Wear

**Special feature:**
- [Rolling](https://link.springer.com/chapter/10.1007/978-3-658-17851-2_6) combines rolling and sliding (slip)
- Small contact area → high surface pressure (Hertzian pressure)
- Leads to surface fatigue

**Damage mechanisms:**
- Plastic deformation
- Microstructural changes
- Crack formation and propagation

![bg right fit 70%](https://media.springernature.com/full/springer-static/image/chp%3A10.1007%2F978-3-658-17851-2_6/MediaObjects/299062_3_De_6_Fig1_HTML.gif?as=webp)

---

## Lubrication in Rolling Wear

**Specific lubricant film thickness:**
$$\lambda = \frac{h_{min}}{R_q}$$

Where:
- $h_{min}$ = minimum lubricant film thickness
- $R_q$ = root mean square roughness

![bg right fit 60%](https://media.springernature.com/full/springer-static/image/chp%3A10.1007%2F978-3-658-17851-2_6/MediaObjects/299062_3_De_6_Fig10_HTML.gif?as=webp)


---

**Lubrication states:**
- $\lambda < 1$: Boundary lubrication (solid contact)
- $1 < \lambda < 3$: Mixed lubrication
- $\lambda > 3$: Hydrodynamic lubrication (ideal)

![bg right fit 60%](https://media.springernature.com/full/springer-static/image/chp%3A10.1007%2F978-3-658-17851-2_6/MediaObjects/299062_3_De_6_Fig10_HTML.gif?as=webp)

---

# Cavitation - Physical Background


<details>
<summary>Physical cause?</summary>
<div>

**Bernoulli principle:**
- Static pressure depends on the velocity of a fluid
- When falling below vapor pressure, vapor bubbles form
- These bubbles move into areas with higher pressure
- Bubbles condense abruptly
- → Pressure and temperature peaks occur (up to 1000 bar!)
</div>
</details>


---


# Cavitation - Physical Background


<br/>
<iframe width="1150" height="500" src="https://www.youtube.com/watch?v=J0H0Nw44oA4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

---

## Cavitation Damage

- Local loads on the surface (microjet at high velocity)
- Areas fatigue and break off ("pitting")

**Impairment:**
- Efficiency reduction
- Corrosion (on roughened surface)
- Areas where cracks can initiate
- Noise and vibrations

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/b/bf/Cavitation.jpg)

---

## Cavitation - Countermeasures

1. **Design:**
   - Avoid areas of low pressure
   - Flow optimization

2. **Material:**
   - Cavitation-resistant materials
   - Coatings

3. **Operating mode:**
   - Increase pressure
   - Lower temperature
   - Adjust speed

---

## Fretting Corrosion (Fretting Rust)

**Mechanism:**
- Small sliding movements between two highly loaded components
- Mostly with insufficient interference → loose fits
- Oxidation product acts abrasively
- Intensifies wear

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/2/27/Corrosion_de_contact_sur_un_bout_d%27arbre_01.jpg)

---

**Recognition features:**
- Rust-colored powder (for steel: Fe₃O₄)
- At fit surfaces (shafts, hubs)

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/2/27/Corrosion_de_contact_sur_un_bout_d%27arbre_01.jpg)

---

## Countermeasures for Fretting Corrosion

1. **Fit adjustment:**
   - Sufficient interference
   - Tight press fit

2. **Material selection:**
   - Stainless steels
   - Coatings

3. **Design:**
   - Avoid relative movements
   - Shrink fits instead of adhesive bonds

---

4. **Assembly:**
   - Clean, dry surfaces
   - Use assembly paste

---

## Material Pairings

**Basic principle:** "Hard against soft"

| Pairing | Wear behavior | Application |
|---------|---------------------|-----------|
| Steel-steel | Unfavorable (adhesion) | With lubrication |
| Steel-bronze | Good | Plain bearings |
| Steel-plastic | Very good | Dry running possible |
| Ceramic-steel | Good at high temperatures | High performance |

---

## Comparison: Fatigue vs. Wear

| Property | Fatigue | Wear |
|-------------|----------|------------|
| Cause | Cyclic loading | Friction/contact |
| Location | Volume and surface | Surface only |
| Damage | Crack formation | Material removal |
| Failure | Sudden (fracture) | Gradual (dimensional change) |
| Prediction | With Wöhler diagram | With wear rates |

---

## Summary Part 2: Wear

- Wear = surface damage through friction
- Four main types: adhesive, abrasive, surface fatigue, tribooxidation
- Quantification possible via wear coefficient
- Countermeasures: material selection, lubrication, design
- Cavitation as special case in flows

---

## Practical Application: Wear Protection

**Design measures:**
- Make wear parts replaceable
- Provide lubrication system
- Optimize surface roughness

**Operating measures:**
- Regular lubrication
- Monitoring (condition monitoring)
- Timely replacement

**Economics:** Prevention is cheaper than repair!

---

## Comprehension Questions

1. Why does a material fail in fatigue below the yield strength?
2. What is the difference between fatigue limit and finite life?
3. Which type of wear occurs in an unlubricated bearing?
4. How can cavitation in pumps be prevented?
5. Why is surface roughness important for wear?


---

## Summary Overall Lecture

**Fatigue:**
- Failure through cyclic loading
- Wöhler diagram as central tool
- Three phases: initiation, propagation, fracture

**Wear:**
- Undesired surface damage through friction


**Together:** Both lead to component failure and are avoidable or minimizable through appropriate measures


---

## Questions?

![bg right 70%](https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Question_mark_alternate.svg/1200px-Question_mark_alternate.svg.png)

**Contact:**
christian.willberg@h2.de



![bg right](https://upload.wikimedia.org/wikipedia/commons/b/bd/Smith2.svg)