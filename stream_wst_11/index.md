---
marp: true

theme: default
header: ''
footer: ''
backgroundImage: url('../assets/styles/background.png')
title: Materials-and-Production-Engineering-Lecture  Non-destructive Testing
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
