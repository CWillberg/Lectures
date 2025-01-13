---
marp: true

theme: default
header: ''
footer: ''
backgroundImage: url('../assets/styles/background.png')
title: Materials-and-Production-Engineering-Lecture Material Testing
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


## Lecture on Materials Science -  Material Testing
Prof. Dr.-Ing. Christian Willberg<a href="https://orcid.org/0000-0003-2433-9183"><img src="../assets/styles/ORCIDiD_iconvector.png" alt="ORCID symbol" style="height:15px;width:auto;vertical-align: top;background-color:transparent;"></a>
Magdeburg-Stendal University of Applied Sciences

![bg right](https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Vickers-path-2.svg/1024px-Vickers-path-2.svg.png)

Contact: christian.willberg@h2.de
Parts of the script are adopted from \
Prof. Dr.-Ing. Jürgen Häberle


---

<!--paginate: true-->

## Contents



![bg right 70%](../assets/QR/stream_wst_10.png)

---

## Characterization
Mathematical models are used in engineering to predict the behavior of components and structures. Determining the parameters required for the model is known as characterization.

---

## Models

What are models, and why do we need them?

---

![bg fit 60%](https://upload.wikimedia.org/wikipedia/commons/6/62/Ratte-Vache.jpeg)

---

![bg fit 45%](https://upload.wikimedia.org/wikipedia/commons/c/cb/Paramecium.jpg)

---

![bg fit 70%](https://espirituracer.com/archivos/2018/06/crash-test-volvo-855x463.jpg)

---

![bg fit 60%](../assets/Figures/KIC.png)

---

<iframe src="https://perilab-results.nimbus-extern.dlr.de/models/ForgedCT?step=65&variable=von%20Mises%20Stress&displFactor=20" width="920" height="600"></iframe>

---

![bg fit 60%](../assets/Figures/FEM.png)

---

## 

![bg fit 60%](../assets/Figures/Testpyramide.png)

---

## Examples

- Determination of $E$ and $\nu$ in an isotropic material
- Sketching different methods
- Discussing challenges

## Note
- There are relationships between the shear modulus $G$ and $E$ and $\nu$

---

# Data Acquisition
Typical sensors:
- Strain sensors:
  - Strain gauges (SG)
  - Fiber Bragg
  - Camera systems
- Displacement sensors:
  - Laser triangulation
  - Tape measure
  - Time-of-flight measurement
- Force transducers

---

## Strain Gauges (SG)
- Working principle

![bg right fit 50%](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Strain_gauge_-.jpg/1024px-Strain_gauge_-.jpg)

- Electrical resistance
$R=\rho\frac{l}{A} = \frac{U}{I}$
$\frac{\Delta R}{R}=k\varepsilon$

---

## Compensation

- Temperature compensation:
  - Measure on an unloaded component
  - Utilize a bridge circuit of strain gauges
- Normal strain compensation:
  - Utilize a bridge circuit of strain gauges

![bg right 80%](https://sp-ao.shortpixel.ai/client/to_webp,q_lossy,ret_img,w_442/https://clm-engineering.com/wp-content/uploads/2020/06/Unbenannt2.jpg)

$\frac{U_m}{U_B}=\frac{k}{4}(\varepsilon_1-\varepsilon_2+\varepsilon_3-\varepsilon_4)$

---

## Analog-to-Digital Conversion

- Analog signals
- Digital signals
- A-D converter

$dt<\frac{1}{2f_{max}}$

- If not adhered to, information loss occurs

[Example](https://www.youtube.com/watch?v=ByTsISFXUoY)

---

# Data Analysis - Basics

---

## Variations
- Measurement uncertainties
- Material uncertainties
- Manufacturing uncertainties

Special case:
- Model uncertainties -> Cannot be reduced by more measurements

---

## Dealing with Variations

_Mean_
$sample_{mean}=\sum_{i=1}^{n}\frac{samples_i}{n}$

_Median_
50% of the values are above and 50% below this value; more robust against outliers

_Standard Deviation_
Measures the spread of the data
$s=\sqrt{\frac{1}{n-1}\sum_{i=1}^{n}(samples_i-sample_{mean})^2}$

_Correlation Coefficient_
Describes the linear relationship between data (-1 to +1)

---

## Fitting
Least squares method

$\text{min}||\mathbf{y}_m(\mathbf{x}) - \mathbf{y}||^2$

to determine an arbitrary fitting function.

Choosing the function:
Polynomials - High-degree polynomials may cause oscillations
Splines, B-Splines - More complex

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/1/17/MDKQ1.svg)

---

## Fourier Transformation

- Any signal/function can be decomposed into a sum of sine curves
- Time functions -> Frequency representations

![](https://de.mathworks.com/discovery/fft/_jcr_content/mainParsys/image.adapt.full.medium.jpg/1680761244598.jpg)

---

## Filters
- Low-pass:
  - Allows signals below a defined frequency
- High-pass:
  - Allows signals above a defined frequency
- Band-pass:
  - Allows signals between two defined frequencies
- Band-stop:
  - Allows signals outside two defined frequencies

---

![bg 70%](../assets/Figures/filter.png)

---

## Exercise

- Create a dataset
- Plot the dataset
- Fitting
- Statistical evaluation of data
- Signal oscillations
- FFTs
- Gradient determination

---

# Destructive Testing

Certain properties or statements about a material or component can only be made if loaded until failure.

---

## Fracture Mechanics Basics

- Fractures can be categorized into these modes
- Specific energy release rates exist

![](https://wiki.polymerservice-merseburg.de/images/thumb/d/df/Rissoeffnungsmoden.jpg/600px-Rissoeffnungsmoden.jpg)

[Experiments for determining these energies](https://wiki.polymerservice-merseburg.de/index.php/Pr%C3%BCfk%C3%B6rper_f%C3%BCr_bruchmechanische_Pr%C3%BCfungen)

---

## Toughness Determination

- Material's resistance to fracture or crack propagation
- Ability to absorb mechanical energy through plastic deformation

$Z = \int_0^{\varepsilon_{B}}\sigma d \varepsilon$ 

- Energy release rate $G = \frac{Z}{A_{fracture}}$
- Effect of loading speed

![bg right 90%](../assets/Figures/varying_storedElastic_energy.svg)

<div style="position: absolute; bottom: 10px; left: 520px; color: blue; font-size: 20px;"> 
    <a href="https://doi.org/10.1007/s00466-021-02017-1" style="color: blue;">Image Reference</a>
</div>

---

## Tensile Test
- Determination of:
  - Elastic stiffness
  - Strength
  - Yield strength
  - In one direction
![bg right 60%](https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Tensile_testing_on_a_coir_composite.jpg/800px-Tensile_testing_on_a_coir_composite.jpg)

- Constant stress across the cross-section is assumed
$\sigma = \frac{F}{A} = E\varepsilon = E\frac{\Delta l}{l}$
$F = \frac{\Delta l E A }{l}$

---

## Sample Geometry

![](https://www.zwickroell.com/fileadmin/_processed_/2/7/csm_ASTME8_Probenkoerper_mit_Massen_a69594facc.jpg)

[Video 1](https://eng.libretexts.org/Bookshelves/Materials_Science/TLP_Library_II/5%3A_Mechanical_Testing_of_Metals/5.5%3A_Tensile_Testing_-_Practical_Basics)

![bg right fit ](https://upload.wikimedia.org/wikipedia/commons/0/09/Cruciform.png)

---

## Parameter Compression

Crushing Limit  
- Beyond this limit, plastic deformation occurs (ductile material)  
- Brittle materials develop cracks and then [fracture](https://youtu.be/Fjgpvi8igbE?si=ptlpAR_vQfDV_qYW&t=36)

Stability  
- Buckling  
- [Bulging](https://www.youtube.com/watch?v=ZYfLLozCNbw)  
Deformation zones of a compressed sample (Fig. 3.16)

---

## Compression Deformation

![bg left 80%](../assets/Figures/Verformungszonen_Druck.svg)

I - Minor deformation (friction hindrance)  
II - Moderate tensile deformation  
III - High shear deformation  

---

## Anisotropic Measurements  
Anisotropy  
- Measurements under different angles  

Influencing factors  
- Slip at clamping  
- Temperature  
- Geometry  
- Sample clamping  

---

## Bending Test

- Typically flat samples with rectangular profiles  
- Preferable for brittle materials  
- Assumptions of Bernoulli beam theory must hold  
- Suitable for brittle materials  

$l > 20 \cdot h$

$F$ - test force  

$u$ - resulting displacement  

$a$ - height of the rectangular profile  

$b$ - width of the rectangular profile  

$l_b$ - length of the sample  

---

## 2-Point Bending Test
![](../assets/Figures/kragbalken.svg)

$E = \frac{4l_b^2 F}{ubh^3}$

---

## 3-Point Bending Test

![](../assets/Figures/3Punktbiege.svg)

$E = \frac{l_b^3 F}{4ubh^3}$

---

## 4-Point Bending Test

![](../assets/Figures/4Punktbiege.svg)

Objective: A shear-free region resulting in a constant bending moment.  

$E = \frac{l_a^2(2l_a+3l_b)F}{ubh^3}$;  

$l_a$ - distance between support point and closer pressure point of the test stamp  

---

## Stress Profiles  

[Video](https://www.tec-science.com/wp-content/uploads/2021/03/de-animation-biegeversuch-spannungsverlauf-mit-verfestigung.mp4)

- Bending stress  
  - $\sigma_b = \frac{M_b}{I_{xx}y}$  
  - Neutral stress line  

- ENF (End-Notched Flexure) test uses the neutral stress line strategically  

![](../assets/Figures/ENF.svg)

---

## Fatigue Test According to Wöhler  
- Test setup  
  - Bending test  
  - Torsion test  
  - Tension/compression test  

![](../assets/Figures/Whoehlerversuch.svg)

---

## Fatigue Test According to Wöhler  

Influencing factors:  
- Temperature  
- Corrosive environments  
- Notches  
- Surface condition  
  - Smooth surfaces are favorable  
- Heat treatment  

---

## Structural Fatigue Test  

[Video](https://youtu.be/BOpBzKanX9k?si=icWRiGPNs-8H9qXo)

Challenges?  

---

- Representative loads  
- Heating due to rapid loading  
- Load sequence influences lifespan  

---

## Charpy Impact Test  

- Determines the impact energy and impact toughness $\frac{E}{A_{nominal}}$  
  - No longer has technical significance  
- Energy is sufficient for determining material quality  
- Divides into high-level (ductile), low-level (brittle fractures), and the transition region (mixed fractures)  
- Not suitable for determining strength properties  

[Test](https://youtu.be/mpUdV2WHiEE?si=5jwBppXbsEsnqHsc&t=86)  

[Explanation video](https://www.youtube.com/watch?v=Ll69bzegoNY)  

---

## Additional Tests  

- Burst tests  
- Shear tests  
- Pull-out tests  
- Corrosion tests  
- Burn tests  

---

## Hardness Testing  

- Sample or component is not fully destroyed  
- Partially destructive material testing  
- Most common: Rockwell (HR), Brinell, Vickers, and Shore  
- Hardness properties of the component surface affect fatigue and wear  

---

## Rockwell  

- Measures penetration depth $t$ with various standardized test bodies  
- Measurement procedure is defined  

$\text{Rockwell Hardness} = a - \frac{t}{d}$  

- Scales A, C, D; $a = 100$, $d = 0.002mm$  
- Scales B, E-H, K; $a = 130$, $d = 0.002mm$  
- Scales N, T; $a = 100$, $d = 0.001mm$  

![bg right 80%](https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Duret%C3%A9_rockwell.svg/1920px-Duret%C3%A9_rockwell.svg.png)

---

## Brinell  

- A hardened steel ball is pressed with a defined force onto the surface.  
- Average diameter is determined.  

![bg right 50%](https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/BrinellHardness.svg/1024px-BrinellHardness.svg.png)

$\text{Brinell Hardness} = \frac{0.204F}{\pi D \sqrt{D-\sqrt{D^2-d^2}}}$  
with $d = \frac{d_1+d_2}{2}$  

---

## Vickers  

- Similar to Brinell, but uses an equilateral diamond pyramid instead of a ball  
- Requires smaller areas compared to Brinell  

![bg right 50%](https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Vickers-path-2.svg/1024px-Vickers-path-2.svg.png)

$\text{Vickers Hardness} = \frac{0.204F\cos 22°}{d^2}$  

with $d = \frac{d_1+d_2}{2}$  
