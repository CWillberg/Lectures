---
marp: true

theme: h2
header: 'Materials Testing'
footer: ''

title: Materials Testing
author: Christian Willberg
---

<style>
footer {
    font-size: 14px; /* Change footer font size */
    color: #888; /* Change footer color */
    text-align: right; /* Change footer alignment */
}
img[alt="ORCID"] {
    height: 15px !important;
    width: auto !important;
    vertical-align: top !important;
    display: inline !important;
    margin: 0 !important;
}
</style>

## Lecture - Materials Testing
Prof. Dr.-Ing. Christian Willberg [![ORCID](../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)

![bg right 70%](../assets/QR/strean_wst_09.png)

Contact: christian.willberg@h2.de

---

# Contents

- What are models?
- Destructive Testing Methods
- Non-Destructive Testing Methods

---

# Models

What are models and why do we need them?

---

![bg fit 60%](https://upload.wikimedia.org/wikipedia/commons/6/62/Ratte-Vache.jpeg)

---

![bg fit 45%](https://upload.wikimedia.org/wikipedia/commons/c/cb/Paramecium.jpg)

---

![bg fit 70%](https://espirituracer.com/archivos/2018/06/crash-test-volvo-855x463.jpg)

---

![bg fit 60%](../assets/Figures/KIC.png)

---

<br/>
<iframe width="1150" height="500" src="https://www.youtube.com/embed/ClV2ojQPrFM?si=eROuZGPdBpXTnmef" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

---

## 

![bg fit 60%](../assets/Figures/Testpyramide.png)

---

# Destructive Testing

Certain characteristic values or statements about a material or component can only be made when loading until failure.

---

<br/>
<iframe width="1150" height="500" src="https://www.youtube.com/embed/Bgsi3AK1ju4?si=fo49oLmLtqpfctKC&start=4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

---

## Excursion: Fracture Mechanics

- Fractures can be classified into these modes
- There are specific energy release rates

![](https://wiki.polymerservice-merseburg.de/images/thumb/d/df/Rissoeffnungsmoden.jpg/600px-Rissoeffnungsmoden.jpg)

[List of experiments to determine these energies](https://wiki.polymerservice-merseburg.de/index.php/Pr%C3%BCfk%C3%B6rper_f%C3%BCr_bruchmechanische_Pr%C3%BCfungen)

---

## Determination of Toughness

- Resistance of a material against fracture or crack propagation
- Ability to absorb mechanical energy during plastic deformation

$Z = \int_0^{\varepsilon_{B}}\sigma d \varepsilon$ 

- Energy release rate $G = \frac{Z}{A_{fracture}}$
- Influence of loading rate

![bg right 90%](../assets/Figures/varying_storedElastic_energy.svg)

<div style="position: absolute; bottom: 10px; left: 520px; color: blue; font-size: 20px;"> 
    <a href="https://doi.org/10.1007/s00466-021-02017-1" style="color: blue;">Image reference</a>
</div>

---

## Tensile Test
- Determination of:
  - elastic stiffnesses
  - strengths
  - yield point
  - in one direction
![bg right 60%](https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Tensile_testing_on_a_coir_composite.jpg/800px-Tensile_testing_on_a_coir_composite.jpg)

- constant stresses in the cross-section are assumed
$\sigma = \frac{F}{A} = E\varepsilon = E\frac{\Delta l}{l}$
$F = \frac{\Delta l E A }{l}$

---

## Specimen Geometry

![](https://www.zwickroell.com/fileadmin/_processed_/2/7/csm_ASTME8_Probenkoerper_mit_Massen_a69594facc.jpg)

[Video 1](https://eng.libretexts.org/Bookshelves/Materials_Science/TLP_Library_II/5%3A_Mechanical_Testing_of_Metals/5.5%3A_Tensile_Testing_-_Practical_Basics)

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/0/09/Cruciform.png)

---

## Tensile Parameters

Elongation at break
  - permanent elongation of the tensile specimen after fracture

Elongation A11

Yield strength
  - limit up to which a material is elastically deformable

Technical proof stress
  - $R_{0.2}$ for materials where the yield point is not pronounced

Young's modulus
  - proportionality factor between stress and strain

---

Uniform elongation
  - specimen elongates uniformly up to maximum force

Reduction of area $Z=\frac{\Delta A}{A_0}$
  - a measure of the ductility of a material
![bg right 60%](https://upload.wikimedia.org/wikipedia/commons/thumb/2/28/Deroulement_rupture_ductile.svg/1920px-Deroulement_rupture_ductile.svg.png)

Necking elongation
  - specimen only elongates in the necking region

---

## Compression Parameters

Yield point in compression
  - above this limit plastic deformation begins (ductile material)
  - in brittle materials cracks develop and then [fracture](https://youtu.be/Fjgpvi8igbE?si=ptlpAR_vQfDV_qYW&t=36)

Stability
  - buckling
  - [bulging](https://www.youtube.com/watch?v=ZYfLLozCNbw)
Deformation zones of a compressed specimen (Fig. 3.16)

---

## Compression Deformation

![bg left 80%](../assets/Figures/Verformungszonen_Druck.svg)

I - low deformation (friction inhibition)
II - moderate tensile deformation
III - high shear deformation

---

## Anisotropic Measurements
Anisotropy
- measurements at different angles

Influencing factors
  - slippage during clamping
  - temperature
  - geometry
  - specimen clamping

---

## Bending Test

- typically flat specimens with rectangular profile
- usually better for brittle materials
- assumptions of Bernoulli beam theory must be valid
- rather for brittle materials

$l>20*h$

$F$ - test force

$u$ - resulting displacement

$a$ - height of rectangular profile

$b$ - width of rectangular profile

$l_b$ - length of specimen

---

## Stress Distributions

<br/>
<iframe width="1150" height="500" src="https://www.tec-science.com/wp-content/uploads/2021/03/de-animation-biegeversuch-spannungsverlauf-mit-verfestigung.mp4" title="Stress distribution" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

[Video](https://www.tec-science.com/wp-content/uploads/2021/03/de-animation-biegeversuch-spannungsverlauf-mit-verfestigung.mp4)

---

## 2-Point Bending Test
![](../assets/Figures/kragbalken.svg)

$E=\frac{4l_b^2 F}{ubh^3}$

---

## 3-Point Bending Test

![](../assets/Figures/3Punktbiege.svg)

$E=\frac{l_b^3 F}{4ubh^3}$

---

- Bending stress
  - $\sigma_b = \frac{M_b}{I_{xx}y}$
  - neutral axis of stress

- ENF (End-Notched Flexure) test specifically utilizes the neutral axis

![](../assets/Figures/ENF.svg)

---

## 4-Point Bending Test

![](../assets/Figures/4Punktbiege.svg)

Goal is a shear-free region and resulting constant bending moment

$E=\frac{l_a^2(2l_a+3l_b) F}{ubh^3}$

$l_a$ distance between support point and closer loading point of test stamp

---

## 4-Point Bending Test

<br/>
<iframe width="1150" height="500" src="https://www.youtube.com/embed/dbawcyjAhSI?si=xmV3UskSfoAtHWHr&start=90" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

---

## Fatigue Test according to Wöhler
- Test setup
  - bending test
  - torsion test
  - tension/compression test

![](../assets/Figures/Whoehlerversuch.svg)

---

## Fatigue Test according to Wöhler
Influencing factors
- temperature
- corrosive media
- notches
- surface finish
  - smooth surfaces are more favorable
- heat treatment

---

## Structural Fatigue Test

<br/>
<iframe width="1150" height="500" src="https://www.youtube.com/embed/BOpBzKanX9k?si=icWRiGPNs-8H9qXo" title="Fatigue test" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

---

<details>
<summary>Challenges?</summary>
<div>

- representative loads
- heating due to too rapid loading
- the sequence of loads influences the service life

</div>
</details>

---

## Charpy Impact Test

- determination of impact energy and impact toughness $\frac{E}{A_{nominal}}$
  - no longer has technical significance
- energy is sufficient for determining material quality
- division into upper shelf (ductile fractures), lower shelf (brittle fractures) and transition region (mixed fractures)
- characteristic values not suitable for strength determination

[Explanatory video](https://www.youtube.com/watch?v=Ll69bzegoNY)

---

<br/>
<iframe width="1150" height="500" src="https://www.youtube.com/embed/https://youtu.be/mpUdV2WHiEE?si=mKX8pxU3yLiWXwyp&start=86" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

---

## Other Tests

- burst tests
- shear tests
- pull-out test
- corrosion tests
- burning tests

---

## Hardness Testing

- specimen or component is not completely destroyed
- conditionally non-destructive materials testing
- most common: Rockwell (HR), Brinell, Vickers and Shore
- hardness properties of the component surface influence fatigue and wear

---

## Rockwell

- the penetration depth $t$ is measured with various standardized test bodies
- test procedure is specified

$\text{Rockwell hardness}=a-\frac{t}{d}$
- scales A, C, D; $a=100$, $d=0.002mm$
- scales B, E-H, K; $a=130$, $d=0.002mm$
- scales N, T; $a=100$, $d=0.001mm$

![bg right 80%](https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Duret%C3%A9_rockwell.svg/1920px-Duret%C3%A9_rockwell.svg.png)

---

## Brinell

- a hard metal ball is pressed onto the surface with a specified force

- an average diameter is determined

![bg right 50%](https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/BrinellHardness.svg/1024px-BrinellHardness.svg.png)

$\text{Brinell hardness}=\frac{0.204F}{\pi D \sqrt{D-\sqrt{D^2-d^2}}}$
with $d=\frac{d_1+d_2}{2}$

---

## Vickers
- similar to Brinell, but instead of a ball an equilateral diamond pyramid is used
- smaller area required compared to Brinell
![bg right 50%](https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Vickers-path-2.svg/1024px-Vickers-path-2.svg.png)

$\text{Vickers hardness}=\frac{0.204F\cos 22°}{d^2}$

with $d=\frac{d_1+d_2}{2}$

---

# Non-Destructive Testing

Goals of non-destructive testing (NDT)

---
## Development Stages

NDT 1.0 – Tools (to sharpen the senses)
NDT 2.0 – Analog systems (for viewing inside components)
NDT 3.0 – Digital processing and automation
NDT 4.0 – Information transparency, technical & digital aids and autonomous and decentralized decisions

---

## Methods
- every measurable physical quantity can in principle be used

  - mechanical
  - optical
  - electromagnetic
  - electrical
  - thermal
  - magnetic

---

## Probability of Detection

- metric that indicates the probability of detecting a defect of a certain size

![bg right 80%](https://sentin.ai/wp-content/uploads/2020/08/POD-Curve-768x768.jpg)

- the permissible defect size is known
- stated with 95% confidence. I.e., 90% of defects are detected with 95% certainty.

---

## Damage Size

- depending on the method, the detectable damage size varies
- it doesn't always apply that _small damage size_ $=$ _better_
- minimum damage $l = \frac{\lambda}{2}$ -> sampling theorem
$c = \lambda f$
- $c$ is the speed of light or sound

$\lambda = \frac{c}{f} = \frac{6000 m/s}{10^6 1/s} = 6 mm$
![bg right fit](../assets/Figures/sandwichvarianten.png)
![bg vertical fit](https://upload.wikimedia.org/wikipedia/commons/4/44/Kohlenstofffasermatte.jpg)

---

## Compromise

- small wavelength = higher resolution = greater interaction = smaller range

- large wavelength = lower resolution = less interaction = greater range

- 5G vs. 4G, FM vs. long wave, etc.

---

## Visual Inspection

- can be done with various tools and is very common
- direct visual inspection
  - eye
  - borescopes (elastoscopes, endoscopes, mirror tubes, ...)
- indirect visual inspection
  - cameras
  - drones

---

## Penetrant Testing

![](https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Ressuage_principe_2.svg/330px-Ressuage_principe_2.svg.png)

1. cleaning, 2. apply dye and let penetrate, 3. clean surface, 4. apply developer

- in daylight or in the dark

---

## Radiographic Testing

- X-ray, microwave, gamma radiation
- synchrotron radiation (special cases, rather rare)

- also usable as computed tomography
![bg right fit](https://www.researchgate.net/profile/Christian-Willberg/publication/258207141/figure/fig1/AS:297342013067264@1447903268377/Plate-and-actuator_W640.jpg)
![bg vertical fit](https://www.researchgate.net/profile/Christian-Willberg/publication/258207141/figure/fig3/AS:297342013067266@1447903268956/The-continues-debonding-region-A-shown-by-C-T-images-in-several-frames-see-Fig-2_W640.jpg)

---

## Thermography
**active**
- component is warm and is measured
- differences in temperature distribution can be used to identify defects
- process adjustments are possible

**passive**
- component is excited and the response is measured
- inductive heating for carbon fiber composite components

---

## Modal Analysis

$\mathbf{M}\ddot{\mathbf{u}}+\mathbf{Ku}=\mathbf{0}$

- mode shapes
- natural frequencies

$(\mathbf{K}-\omega^2\mathbf{M})\hat{\mathbf{x}}=\mathbf{0}$

**Spring pendulum**
$m\ddot{u}+cu=0$

$c-\omega^2 m = 0$

$\omega = 2\pi f = \sqrt{\frac{c}{m}}$

---

## Modal Analysis

- excitation with a shaker or impulse hammer
- measurement points with acceleration sensor or laser
- one excitation point -> many measurement points
- many excitation points -> one measurement point

![bg right 50%](https://www.researchgate.net/profile/Andrzej-Rysak/publication/291827506/figure/fig4/AS:322054793515011@1453795254691/Modal-analysis-of-the-vibrating-beam-in-the-fixed-mass-case-The-corresponding-bending_W640.jpg)

![bg vertical 50%](https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Modal_testing-detail.tif/lossy-page1-489px-Modal_testing-detail.tif.jpg)

---

## Ultrasonic Testing

**Wave types**
Longitudinal waves (P waves)
Transverse waves (S waves)
Love waves
Rayleigh waves
Lamb waves, or guided ultrasonic waves
Symmetric, antisymmetric and shear waves
Torsional waves
Shear waves

---

![](https://upload.wikimedia.org/wikipedia/commons/0/07/Overview_Seismic_Waves.jpg)

---

## Symmetric Modes (Longitudinal waves)

<video controls="controls" width="600" src="../assets/Videos/asym.avi">

---

## Anti-Symmetric Modes (Transverse waves)

<video controls="controls" width="600" src="../assets/Videos/asym.avi">

---

## Sound Velocities
$c_{l}=\sqrt{\frac{E(1-\nu)}{\rho(1-\nu-\nu^2)}}$
$c_{t}= \sqrt{\frac{G}{\rho}}$

![bg right 70%](https://upload.wikimedia.org/wikipedia/commons/e/e7/Sym_asym_sigma0.27_und_0.34_edited2.svg)

Guided ultrasonic waves are dispersive
they have a group and phase velocity

---

## Dispersion

- group velocity - how fast the envelope moves
- phase velocity - how fast the phase moves (single frequency)

- for one frequency, group and phase velocities are identical

![](https://upload.wikimedia.org/wikipedia/commons/b/bd/Wave_group.gif)

- for frequency-dependent phase velocities, the envelope broadens -> dispersion

---

## Piezoelectric Effect

- actuator effect
- sensor effect
- $d_{31}$; electrical voltage in direction 3 and deformation in direction 1 or 2
- $d_{33}$; electrical voltage in direction 3 and deformation in direction 3

![bg right 70%](../assets/Figures/piezo.png)

![bg vertical 100%](../assets/Figures/polarization_2.png)

---

## Reflections at Interfaces
- acoustic impedance $W = c_L\rho$

_Reflected sound_
$\frac{p_{a,r}}{p_{a,e}}=\frac{W_2-W_1}{W_2+W_1}$

_Transmitted sound_
$\frac{p_{a,d}}{p_{a,e}}=\frac{2W_2}{W_2+W_1}$

![bg right fit](../assets/Figures/reflexion.png)

---

## Calculation Exercise

-> water - steel
-> air - steel
-> water - aluminum
-> air - aluminum
-> water - PMMA
-> air - PMMA

---

## Signal-to-Noise Ratio

$SNR = \frac{P_{signal}}{P_{noise}}$

- multiple measurements reduce the noise component

---

## Measurement Setup

- 1 - 2 transducers
- measurement amplifier
- measurement sensor

![bg right 95%](../assets/Figures/csm_STD_HP_Ultraschall_03_18_07ef793d11.jpg)
  
<div style="position: absolute; bottom: 10px; left: 520px; color: blue; font-size: 20px;"> 
    <a href="http://std-partners.de/fileadmin/_processed_/csm_STD_HP_Ultraschall_03_18_07ef793d11.jpg)" style="color: blue;">Image reference</a>
</div>

---

## Coupling the Test Head to the Surface

Water
- cheap
- easily automatable

Motor oil, grease
- already present in the component
- not optimized for testing

---

Glycerin, gel
- high viscosity and high acoustic impedance are advantageous
- rough surfaces and highly damping materials (weld seam testing)

Air
- saves coupling medium
- lots of noise

---

## Pulse-Echo Method

- "dead zone"
  - time for switching from transmitter to receiver

- dual sensor system
  - measurement on both sides
  - accessibility and effort

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/UT_principe.svg/660px-UT_principe.svg.png)

---

## Measurement Image

![](https://upload.wikimedia.org/wikipedia/commons/0/08/Swing_shaft_spline_cracking.png)

---

## Weld Seam Testing

- angle beam testing due to difficult coupling

![bg right fit](https://www.karldeutsch.de/wp-content/uploads/2018/12/UT-2-2-DE.png)

## Adhesive Layers

- tested similarly
- there can be so-called "kissing bonds"

---

## Wall Thickness Measurement

![](https://www.karldeutsch.de/wp-content/uploads/2018/12/UT-2-1-DE.png)

---

## Imaging

- measurement data can be displayed in various ways

---

## A-Scan (amplitude)

- time of flight vs. amplitude
- at constant velocity, a defect in the signal can be detected for one point

![bg right fit](https://wiki.polymerservice-merseburg.de/images/4/40/A_bild.JPG)

---

## B-Scan (brightness)

- single point is just another representation of the A-scan (echo intensity is represented by brightness)
- by capturing the sound direction, 2D or 3D images can be generated

![bg right 70%](https://www.spektrum.de/lexika/images/physik/fff925_w.jpg)

---

## C-Scan
- a projected image of the sizes of defects

![](https://upload.wikimedia.org/wikipedia/de/1/1f/C-bild-2.jpg)

---

## D-Scan

- planar scan

![bg right 80%](https://wiki.polymerservice-merseburg.de/images/a/a7/D_Bild_Technik-4.JPG)

![](https://wiki.polymerservice-merseburg.de/images/a/af/D_Bild_Technik-1.JPG)

---

## Thickness Measurement using Guided Ultrasonic Waves

![bg right 70%](https://upload.wikimedia.org/wikipedia/commons/e/e7/Sym_asym_sigma0.27_und_0.34_edited2.svg)

---

# Structural Health Monitoring

- monitoring of a structure during operation
- related to condition monitoring
  - e.g., gearbox monitoring -> detection of bearing damage

---

Goals:
Reduce maintenance costs
  - fewer repairs
  - simpler testing
  - timely maintenance
- load adjustment in case of damage
- extend service life
- increase safety

---

There are 4 levels.

---

Level 1

A system can determine that an event has occurred

Level 2

A system can determine that an event has occurred and where it took place

Level 3

A system can determine that an event has occurred, where it took place and what happened (type of event)

Level 4

A system can determine that an event has occurred, where it took place, what happened and how damaging this event is for the structure

---

## Methods

- modal analysis
- guided ultrasonic waves
- acoustic emission
- load path analyses
  - example: calculate parallel springs
- strain measurement
- model-based approaches

---

## Technical Applications

Bridges
- Second Penang Bridge - Penang, Malaysia
  ![](https://www.geosig.com/images/page_image_111.png)

---
Pipelines

![](https://journals.sagepub.com/cms/10.1177/1475921719837718/asset/images/large/10.1177_1475921719837718-fig17.jpeg)

--- 

## Technical Applications

Aircraft
- load path analysis
- monitoring of connections
- safety is not the main focus in aviation

![bg right fit](https://journals.sagepub.com/cms/10.1177/1475921720919678/asset/images/large/10.1177_1475921720919678-fig5.jpeg)

![bg right fit](https://journals.sagepub.com/cms/10.1177/1475921720919678/asset/images/large/10.1177_1475921720919678-fig4.jpeg)

![bg vertical fit](https://journals.sagepub.com/cms/10.1177/1475921720919678/asset/images/large/10.1177_1475921720919678-fig2.jpeg)

---

Wind Energy

![](https://onlinelibrary.wiley.com/cms/asset/7f3901c5-5735-4b5f-8ce1-655b4e3fcfe7/mfig001.jpg)

---

## Modal Analysis

$(\mathbf{K}-\omega^2\mathbf{M})\mathbf{\hat{x}}=0$

- natural frequency $\omega=2\pi f$
- mode shapes $\mathbf{\hat{x}}$
  - [MAC](https://community.sw.siemens.com/s/article/modal-assurance-criterion-mac) criterion
  - angle calculation between mode shapes

---

$MAC=\frac{|\mathbf{\hat{x}}_i\mathbf{\hat{x}}_{i, ref}|^2}{(\mathbf{\hat{x}}_i\mathbf{\hat{x}}_{i, ref})(\mathbf{\hat{x}}_i\mathbf{\hat{x}}_{i, ref})}$

[Software](https://github.com/dagghe/pyOMA2?tab=readme-ov-file)

![bg right fit](https://www.researchgate.net/profile/Joseph-Morlier/publication/233854676/figure/fig3/AS:339754907389955@1458015290184/Modal-Assurance-Criteria-MAC-of-modeshapes-of-undamaged-plate-Vs-damaged-plate-gives-no_W640.jpg)

---

## Guided Ultrasonic Waves

- excitation via piezo composites
- reception with piezo composites or Fiber Bragg Gratings

![bg right fit](https://pub.mdpi-res.com/aerospace/aerospace-10-00430/article_deploy/html/images/aerospace-10-00430-g008.png?1683204034)

---
![](../assets/Figures/sensornetzwerke.png)
[Damage interaction](../assets/Videos/flachbodenbohrung.avi)

---

## Challenges
- temperature
- humidity
- internal structure of the material
- mode conversion
- stresses in the structure
- aging

---
## Potentials
Aircraft example
- BVI (barely visible impact)
- size is defined by visibility
  - damage is larger on the tail than on the wing

- SHM systems allow smaller damages in the design

- estimated [1 - 5%](https://elib.dlr.de/123946/1/1475921718813279.pdf) structural mass could be reduced

---

## Microscopy

- analysis of the microstructure of materials
- local analysis of material or grain composition
- specimen preparation (grinding, surface treatment, etc.)
- light sources significantly influence the contrast
- filters

![bg right fit](https://www.ikts.fraunhofer.de/de/abteilungen/werkstoff_prozesscharakterisierung/korrelative_mikroskopie_und_materialdaten/fa_multiskalige-3D-analytik_datenkorrelation_und_praeparation_in_der_halbleiterentwicklung/jcr:content/contentPar/sectioncomponent_cop/sectionParsys/imagerow/imageComponent1/image.img.4col.jpg/1683533051397/39-4-3d-detailansicht-eines-cpu-chips.jpg)

---

## Light Microscopy

- grain size analysis of metals and alloys
- area counting method
- line intercept method (grain boundary intersections with a line drawn by the examiner in the image)

![bg right fit](https://static1.olympus-ims.com/data/Image/appnotes/GrainSizeAnalysis_AppNote_img4_rev.jpg?rev=9463)

---

## Scanning Electron Microscope
- uses electron beams for scanning
- resolution thereby significantly increased $1nm .. 2nm$
- approx. 500 times better magnification than light microscope (2000:1) vs. (1000000:1)

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/e/ef/Funktionsprinzip_REM.gif)

---

## Scanning Probe Microscopy

- scanning the structure with a needle
- interaction is not mechanical and differs depending on the microscope
  - tunneling current
  - Van der Waals forces (correlates with spring stiffness)
  - magnetic forces

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/0/0f/AFM_%28used%29_cantilever_in_Scanning_Electron_Microscope%2C_magnification_1000x.GIF)

---
# Thank You for Your Attention