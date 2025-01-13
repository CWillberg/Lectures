---
marp: true

theme: default
header: ''
footer: ''
backgroundImage: url('../assets/styles/background.png')
title: Materials-and-Production-Engineering-Lecture Alloy Formation
author: Christian Willberg
---


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


## Lecture on Materials Science -  Alloy (2/3)
Prof. Dr.-Ing. Christian Willberg<a href="https://orcid.org/0000-0003-2433-9183"><img src="../assets/styles/ORCIDiD_iconvector.png" alt="ORCID symbol" style="height:15px;width:auto;vertical-align: top;background-color:transparent;"></a>
Magdeburg-Stendal University of Applied Sciences

![bg right](https://wiki.arnold-horsch.de/images/6/6e/EKD-1.jpg)

Contact: christian.willberg@h2.de
Parts of the script are adopted from \
Prof. Dr.-Ing. Jürgen Häberle


---

<!--paginate: true-->

## Contents



![bg right 70%](../assets/QR/stream_wst_07.png)

---

# Phase Diagrams

- Also known as phase diagrams.
- Represent the state of alloys and mixtures of substances as a function of chemical composition, temperature, and possibly pressure.
- The "state" refers to the occurring phases (solid, liquid, gaseous).

---

## Caution!

Phase diagrams are equilibrium diagrams.  
They are only valid for very slow cooling from the molten state to room temperature, allowing equilibrium between the phases (at or between phase boundaries) to be established.

---

![bg fit 70%](../assets/Figures/Zustandsdiagramm.png)
![bg fit 70%](../assets/Figures/Zustandsdiagramm_3.png)

---

## Solubility

**Insoluble**
- Significant differences in atomic diameters.
- Crystal lattice structures differ.
- Components are chemically very different.

**Soluble**
- Minimal differences in atomic diameters.
- Crystal lattice structures are identical.
- Components are chemically very similar.

---

## Example from Personal Experience
- Oil film on water is insoluble, separating due to different densities.
- Salt or sugar crystals in water dissolve completely and are no longer visible.

---

![bg](https://www.tec-science.com/wp-content/uploads/2021/02/de-legierungstypen-einteilung-loeslich-unloeslich.jpg)

---

## Example of Insolubility

![bg right 100%](../assets/Figures/Zustandsdiagramm_Eisen_Blei.png)

---

## Example of Complete Solubility

![bg right 100%](../assets/Figures/Zustandsdiagramm_Kupfer_Nickel.png)

---

![bg fit](../assets/Figures/binaeresSystem.png)

---

## Gibbs Phase Rule

$F = n - P + 2$
(for gases and liquids)  
F: Degrees of freedom, n: Number of components, P: Number of phases.

For constant pressure (solids):  
$F = n - P + 1$

From this, we derive the following for cooling and heating curves in metallic systems:  
- $F = 0$: A holding point.
- $F = 1$: A kink point.

---

# Summary

- Phases and phase boundaries can be represented as a phase diagram.
- The number of phases in equilibrium is systematically related to the number of components involved in the alloy and the degrees of freedom via the Gibbs phase rule.
- A degree of freedom involves changing state variables without altering equilibrium (e.g., changing temperature or concentration).
- The number of selectable state variables is determined by the phase rule.

---

## Lever Rule

- At point 2, the melt has a lower nickel content than the $\alpha$-solid solution.
- The concentration in the solid solution must increase to balance the nickel atom number.
- Melt and solid solution do not share the same chemical composition.

$\frac{m_s}{m_{\alpha}} = \frac{c_{\alpha} - c_L}{c_L - c_S}$


![bg right 90%](../assets/Figures/Konstituionelle_abkuehlung.png)

---

## Calculation Example

Assume concentrations at point 2:  
$c_S = 20\%$, $c_{\alpha} = 40\%$, $c_L = 25\%$

---

## Solution

$\frac{m_s}{m_{\alpha}} = \frac{c_{\alpha} - c_L}{c_L - c_S} = \frac{40\% - 25\%}{25\% - 20\%} = \frac{15}{5} = 3$

- At point 2, there is three times more melt than solid solution.

---

## Practical Significance

- Copper-nickel alloys have higher strength than pure copper while maintaining good corrosion resistance.

---

# Complete Solubility in Liquid and Partial Solubility in Solid State

- Metal melts of elements A and B dissolve in any ratio (concentration).
- Solid solutions only form to a certain extent.

---

## When Does This Occur?

- Atomic diameters differ.
- Crystal lattices of the components vary.
- Components are chemically distinct.

Components are neither too similar nor too different.  
Possible phase diagrams:  
- Eutectic
- Peritectic

---

![bg 70%](../assets/Figures/Eutektikum.png)

---

## Note

- Solubility gap often called miscibility gap.
- $\alpha_1$ is a crystal rich in A.
- $\alpha_2$ is a crystal rich in B.

If the difference grows too large, the solubility gap extends into the melting range, resulting in a eutectic system.  
- Components are **soluble** in the liquid state.
- Components are **partially soluble** in the solid state.

---

## Eutectic Reaction

- At a specific concentration, melt $S$ solidifies at constant temperature (eutectic temperature) into fine-grained crystals (eutectic).
- Eutectic microstructures often have a layered or lamellar appearance.
- Alloys of other concentrations release the dominant component (A- or B-crystals) before reaching the eutectic point, approaching the eutectic composition.
- The **eutectic line** forms the solidus of the system.

---

## Eutectic Phase Separation

![](../assets/Figures/eutektischerPunkt.png)

---

_Solubility or saturation lines_:  
- Boundaries separating single-phase regions ($\alpha$, $\beta$) from regions of crystal mixtures ($\alpha + \beta$).  

**Special case:**  
Systems forming interstitial solid solutions.  
The concentration axis ends with the saturation concentration of component B in the lattice of A.  
Single-phase regions for component B may not exist.

---

## Systems with Peritectic Reactions (Peritectic Separation)

- Characterized by widely differing melting/solidification temperatures.
- Upon cooling, a solid solution $\alpha$ forms.  
- Reacts with the melt at constant temperature (peritectic line) to form a second solid solution $\beta$.  
- In a peritectic reaction, the melt and already separated $\alpha$-crystals form new $\beta$-crystals at constant temperature.

---

![bg fit](https://www.giessereilexikon.com/uploads/tx_d3ency/687-02.png)

---

![bg fit](https://upload.wikimedia.org/wikipedia/commons/b/b9/Peritektikum.svg)

---

# Questions
