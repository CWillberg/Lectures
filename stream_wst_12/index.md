---
marp: true

theme: h2
header: ''
footer: ''

title: Materials-and-Production-Engineering-Lecture  Non-destructive Testing
author: Christian Willberg
---


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


## Lecture on Materials Science - Non-destructive Testing
Prof. Dr.-Ing. Christian Willberg<a href="https://orcid.org/0000-0003-2433-9183"><img src="../assets/styles/ORCIDiD_iconvector.png" alt="ORCID symbol" style="height:15px;width:auto;vertical-align: top;background-color:transparent;"></a>
Magdeburg-Stendal University of Applied Sciences

![bg right](https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/UT_principe.svg/660px-UT_principe.svg.png)




---

<!--paginate: true-->


# Non-Destructive Testing

Objectives of Non-Destructive Testing (NDT)

![bg right 70%](../assets/QR/stream_wst_11.png)

---

## Development Stages

NDT 1.0 – Tools (to sharpen the senses)  
NDT 2.0 – Analog systems (for inspection within components)  
NDT 3.0 – Digital processing and automation  
NDT 4.0 – Transparency of information, technical & digital tools, autonomous and decentralized decision-making  

---

## Methods

- Any measurable physical property can, in principle, be used:  
  - mechanical  
  - optical  
  - electromagnetic  
  - electrical  
  - thermal  
  - magnetic  

---

## Probability of Detection (PoD)

- A metric that indicates the probability of detecting a defect of a specific size  

![bg right 80%](https://sentin.ai/wp-content/uploads/2020/08/POD-Curve-768x768.jpg)

- The permissible defect size is known.  
- With 95% confidence, 90% of the defects are detected.  

---

## Damage Size

- The detectable defect size varies depending on the method.  
- Smaller damage size does not always mean better:  
  - Minimum damage size: $l = \frac{\lambda}{2}$ → Sampling theorem  
  - $c = \lambda f$  
  - $c$ is the speed of light or sound  

$$
\lambda = \frac{c}{f} = \frac{6000 \, \text{m/s}}{10^6 \, \text{s}^{-1}} = 6 \, \text{mm}
$$  

![bg right fit](../assets/Figures/sandwichvarianten.png)  
![bg vertical fit](https://upload.wikimedia.org/wikipedia/commons/4/44/Kohlenstofffasermatte.jpg)  

---

## Trade-Off

- Small wavelength = higher resolution = greater interaction = smaller range  
- Large wavelength = lower resolution = less interaction = greater range  

Examples: 5G vs. 4G, FM radio vs. longwave radio, etc.  

---

## Visual Inspection

- Can be conducted with various tools and is widely used:  

**Direct visual inspection**  
- Eye  
- Boroscopes (e.g., elastoscopes, endoscopes, mirror tubes)  

**Indirect visual inspection**  
- Cameras  
- Drones  

---

## Penetrant Testing  

![](https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Ressuage_principe_2.svg/330px-Ressuage_principe_2.svg.png)  

1. Cleaning  
2. Applying penetrant and allowing it to penetrate  
3. Surface cleaning  
4. Applying developer  

- Can be performed in daylight or darkness  

---

## Radiographic Testing

- X-rays, microwaves, gamma rays  
- Synchrotron radiation (special cases, less common)  
- Also usable for computed tomography (CT)  

![bg right fit](https://www.researchgate.net/profile/Christian-Willberg/publication/258207141/figure/fig1/AS:297342013067264@1447903268377/Plate-and-actuator_W640.jpg)  
![bg vertical fit](https://www.researchgate.net/profile/Christian-Willberg/publication/258207141/figure/fig3/AS:297342013067266@1447903268956/The-continues-debonding-region-A-shown-by-C-T-images-in-several-frames-see-Fig-2_W640.jpg)  

---

## Thermography

**Active**  
- The component is warm and measured.  
- Temperature distribution differences can identify defects.  
- Process adjustments are possible.  

**Passive**  
- The component is stimulated, and its response is measured.  
- Example: Inductive heating in carbon-fiber-reinforced components.  

---

## Modal Analysis

$\mathbf{M}\ddot{\mathbf{u}}+\mathbf{Ku}=\mathbf{0}$

- Eigenmodes
- Eigenfrequencies

$(\mathbf{K}-\omega^2\mathbf{M})\hat{\mathbf{x}}=\mathbf{0}$

**Spring-Mass System**  
$m\ddot{u}+cu=0$

$c-\omega^2 m = 0$

$\omega = 2\pi f = \sqrt{\frac{c}{m}}$

---

## Modal Analysis

- Excitation using a shaker or impulse hammer  
- Measurement points with accelerometers or lasers  
- One excitation point → multiple measurement points  
- Multiple excitation points → one measurement point  

![bg right 50%](https://www.researchgate.net/profile/Andrzej-Rysak/publication/291827506/figure/fig4/AS:322054793515011@1453795254691/Modal-analysis-of-the-vibrating-beam-in-the-fixed-mass-case-The-corresponding-bending_W640.jpg)

![bg vertical 50%](https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Modal_testing-detail.tif/lossy-page1-489px-Modal_testing-detail.tif.jpg)

---

## Ultrasonic Testing

**Wave Types**  
- Longitudinal waves (P-waves)  
- Transverse waves (S-waves)  
- Love waves  
- Rayleigh waves  
- Lamb waves, or guided ultrasonic waves  
  - Symmetric, asymmetric, and shear modes  
- Torsional waves  
- Shear waves  

---

![](https://upload.wikimedia.org/wikipedia/commons/0/07/Overview_Seismic_Waves.jpg)

---

## Symmetric Modes (Longitudinal Waves)

<video controls="controls" width="600" src=".../assets/Videos/sym.avi"></video>

---

## Asymmetric Modes (Transverse Waves)

<video controls="controls" width="600" src=".../assets/Videos/asym.avi"></video>

---

## Sound Velocities

$c_{l}=\sqrt{\frac{E(1-\nu)}{\rho(1-\nu-\nu^2)}}$

$c_{t}=\sqrt{\frac{G}{\rho}}$

![bg right 70%](https://upload.wikimedia.org/wikipedia/commons/e/e7/Sym_asym_sigma0.27_und_0.34_edited2.svg)

Guided ultrasonic waves are dispersive, having both group and phase velocities.  

---

## Dispersion

- **Group velocity**: The speed of the wave envelope's propagation  
- **Phase velocity**: The speed of the phase (individual frequency) propagation  

For a single frequency, group and phase velocities are identical.  

![](https://upload.wikimedia.org/wikipedia/commons/b/bd/Wave_group.gif)

- For frequency-dependent phase velocities, the wave envelope broadens → Dispersion  

---

## Piezoelectric Effect

- Actuator effect  
- Sensor effect  

- $d_{31}$: Electrical voltage in the 3-direction and deformation in the 1 or 2 direction  
- $d_{33}$: Electrical voltage in the 3-direction and deformation in the 3 direction  

![bg right 70%](../assets/Figures/piezo.png)

![bg vertical 100%](../assets/Figures/polarization_2.png)

---

## Reflections at Interfaces

- Acoustic impedance $W = c_L\rho$

**Reflected Sound**  
$\frac{p_{a,r}}{p_{a,e}}=\frac{W_2-W_1}{W_2+W_1}$  

**Transmitted Sound**  
$\frac{p_{a,d}}{p_{a,e}}=\frac{2W_2}{W_2+W_1}$  

![bg right fit](../assets/Figures/reflexion.png)

---


## Signal-to-Noise Ratio

$SNR = \frac{P_{\text{Signal}}}{P_{\text{Noise}}}$

- Multiple measurements reduce the noise component.

---

## Experimental Setup

- 1–2 transducers
- Amplifier
- Sensor

![bg right 95%](../assets/Figures/csm_STD_HP_Ultraschall_03_18_07ef793d11.jpg)

<div style="position: absolute; bottom: 10px; left: 520px; color: blue; font-size: 20px;"> 
    <a href="http://std-partners.de/fileadmin/_processed_/csm_STD_HP_Ultraschall_03_18_07ef793d11.jpg)" style="color: blue;">Image Reference</a>
</div>

---

## Coupling of the Probe to the Surface

**Water**  
- Low cost  
- Easily automated  

**Motor oil, grease**  
- Already present in the component  
- Not optimized for testing  

**Glycerin, gel**  
- High viscosity and acoustic impedance advantageous  
- Suitable for rough surfaces and highly damping materials (e.g., weld seam inspection)  

**Air**  
- No coupling medium required  
- High noise level  

---

## Pulse-Echo Method

- **Dead zone**  
  - Transition time from transmitter to receiver.  

- **Dual-sensor system**  
  - Measurements on both sides of the material.  
  - Challenges in accessibility and effort.  

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/UT_principe.svg/660px-UT_principe.svg.png)

---

## Measurement Image

![](https://upload.wikimedia.org/wikipedia/commons/0/08/Swing_shaft_spline_cracking.png)

---

## Weld Seam Inspection

- Angled ultrasound due to challenging coupling conditions.  

![bg right fit](https://www.karldeutsch.de/wp-content/uploads/2018/12/UT-2-2-DE.png)

---

## Adhesive Layers

- Tested similarly to other materials.  
- Potential presence of "kissing bonds."

---

## Wall Thickness Measurement

![](https://www.karldeutsch.de/wp-content/uploads/2018/12/UT-2-1-DE.png)

---

## Imaging Techniques

- Measurement data can be visualized in various ways.  

---

## A-Scan (Amplitude)

- Time vs. Amplitude  
- For a constant velocity, flaws in the signal can be detected at a specific point.  

![bg right fit](https://wiki.polymerservice-merseburg.de/images/4/40/A_bild.JPG)

---

## B-Scan (Brightness)

- A single point is another representation of the A-scan (echo intensity shown by brightness).  
- Using sound direction, 2D or 3D images can be created.  

![bg right 70%](https://www.spektrum.de/lexika/images/physik/fff925_w.jpg)

---

## C-Scan

- A projection of the sizes of detected flaws.  

![](https://upload.wikimedia.org/wikipedia/de/1/1f/C-bild-2.jpg)

---

## D-Scan

- Area scan for larger regions.  

![bg right 80%](https://wiki.polymerservice-merseburg.de/images/a/a7/D_Bild_Technik-4.JPG)

![](https://wiki.polymerservice-merseburg.de/images/a/af/D_Bild_Technik-1.JPG)

---

## Thickness Measurement Using Guided Ultrasonic Waves

![bg right 70%](https://upload.wikimedia.org/wikipedia/commons/e/e7/Sym_asym_sigma0.27_und_0.34_edited2.svg)

---

## Eddy Current Testing
- surface inspection of cracks
  - aerospace industry
  - petrochemical industry

![bg fit right](https://upload.wikimedia.org/wikipedia/commons/c/c6/Eddy_currents_due_to_magnet.svg)

![bg fit vertical](https://upload.wikimedia.org/wikipedia/commons/5/52/LET.png)

---

## Structural Health Monitoring

- Monitoring a structure during operation.  
- Related to condition monitoring (e.g., gearbox monitoring to detect bearing damage).  

---
### Objectives:
- Reduce maintenance costs:
  - Fewer repairs.  
  - Easier inspections.  
  - Timely maintenance.  
- Load adaptation in case of damage.  
- Extend service life.  
- Increase safety.  

---

### Four Levels of SHM:

1. Detect an event.  
2. Detect and localize the event.  
3. Detect, localize, and identify the event.  
4. Assess damage severity and its impact on the structure.

---

## Methods

- Modal analysis  
- Guided ultrasonic waves  
- Acoustic emissions  
- Load path analyses (e.g., parallel springs)  
- Strain measurements  
- Model-based approaches  

---

## Technical Applications

### Bridges
- Example: Second Penang Bridge, Penang, Malaysia  

![](https://www.geosig.com/images/page_image_111.png)

---

### Pipelines

![](https://journals.sagepub.com/cms/10.1177/1475921719837718/asset/images/large/10.1177_1475921719837718-fig17.jpeg)

---

### Aircraft
- Load path analysis  
- Monitoring of connections  
- Focus on efficiency rather than safety  

![bg right fit](https://journals.sagepub.com/cms/10.1177/1475921720919678/asset/images/large/10.1177_1475921720919678-fig5.jpeg)

---

### Wind Energy

![](https://onlinelibrary.wiley.com/cms/asset/7f3901c5-5735-4b5f-8ce1-655b4e3fcfe7/mfig001.jpg)

---

## Challenges

- Temperature effects  
- Humidity  
- Material internal structure  
- Mode conversion  
- Stresses in the structure  
- Aging  

---

## Potentials

**Example: Aircraft**  
- Barely visible impact (BVI): damage size defined by visibility.  
- SHM systems allow for smaller damage considerations during design.  
- Estimated **1–5% reduction** in structural mass ([Source](https://elib.dlr.de/123946/1/1475921718813279.pdf)).  

---

## Microscopy

- Analysis of material microstructure.  
- Local analysis of composition or grain structure.  
- Sample preparation (e.g., grinding, surface treatment).  
- Light sources significantly influence contrast.  

![bg right fit](https://www.ikts.fraunhofer.de/de/abteilungen/werkstoff_prozesscharakterisierung/korrelative_mikroskopie_und_materialdaten/fa_multiskalige-3D-analytik_datenkorrelation_und_praeparation_in_der_halbleiterentwicklung/jcr:content/contentPar/sectioncomponent_cop/sectionParsys/imagerow/imageComponent1/image.img.4col.jpg/1683533051397/39-4-3d-detailansicht-eines-cpu-chips.jpg)

---

## Light Microscopy

- Grain size analysis for metals and alloys.  
- Area counting and line intercept methods.  

![bg right fit](https://static1.olympus-ims.com/data/Image/appnotes/GrainSizeAnalysis_AppNote_img4_rev.jpg?rev=9463)

---

## Scanning Electron Microscopy

- Uses electron beams for scanning.  
- Significantly higher resolution ($1nm - 2nm$).  
- ~500x better magnification compared to light microscopy.  

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/e/ef/Funktionsprinzip_REM.gif)

---

## Scanning Probe Microscopy

- Structures scanned using a needle.  
- Interaction varies based on the microscope type:
  - Tunneling current.  
  - Van der Waals forces.  
  - Magnetic forces.  

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/0/0f/AFM_%28used%29_cantilever_in_Scanning_Electron_Microscope%2C_magnification_1000x.GIF)

