---
marp: true

theme: default
header: 'Non-local structural mechanics and Peridynamics'
footer: ''
backgroundImage: url('../assets/styles/background.png')
title:  Non-local structural mechanics and Peridynamics

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


##  Non-local structural mechanics and Peridynamics
Prof. Dr.-Ing.  Christian Willberg<a href="https://orcid.org/0000-0003-2433-9183"><img src="../assets/styles/ORCIDiD_iconvector.png" alt="ORCID Symbol" style="height:15px;width:auto;vertical-align: top;background-color:transparent;"></a>
Magdeburg-Stendal university of applied sciences

![bg right](../assets/Figures/PeriMesh.PNG)

Kontakt: christian.willberg@h2.de



---

<!--paginate: true-->

## Lecture

- analytical part by [Prof. Dr.-Ing. habil. Konstantin Naumenko](konstantin.naumenko@ovgu.de)
- Numerics and application by [Prof. Dr.-Ing. Christian Willberg](christian.willberg@h2.de)

![bg right 50%](../assets/QR/pd_01.png)

---



![bg fit](https://m.blog.hu/az/azenrakom/image/imported/2017-09-26/14637984/35484062_broken_tempered_glass_closeup_background_of_glass_was_smashed_stock_photo.jpg)
![bg fit](../assets/Figures/CT_crack.png)


---
![bg 80%](../assets/Figures/Isotropic_Scan.png)
![bg fit](../assets/Figures/Anisotropic_Scan.png)

---

![bg fit vertical](../assets/Figures/cracksurfaces_PMMA.png)

![bg fit](../assets/Figures/crack.jpg)

---

![bg 50%](../assets/Figures/Testpyramide.png)

---

Understanding of fractures is needed for
- reducing experiments
- fatigue prediction
- crack growth and residual strength estimation

---

## Assumptions in classical continuum mechanics

- Continuous medium		
- $\mathbf{u}$ 2x continuously differentiable	
- Conservation equations satisfied (momentum, angular momentum and energy)

![bg right 90%](../assets/Figures/impulserhaltung.png)
![bg 90%](../assets/Figures/drehimpulserhaltung.png)
![bg 90%](../assets/Figures/energieerhaltung.png)


---

**Conservation of Momentum**
$\text{div}\boldsymbol{\sigma}+\mathbf{b}=\rho\ddot{\mathbf{u}}$

---
## Implications 1D

truss with 2 areas

$\sigma_1 = \frac{F}{A_1}$, $\sigma_2 = \frac{F}{A_2}$

$\text{div}\sigma=\frac{d\sigma}{dx}$

no derivative exists at the position, where $A_1$ becomes $A_2$


---

![bg fit](../assets/Figures/Strukturebene_Metall-2.jpg)

---

## Reality is non-local

![bg right fit](../assets/Figures/Bindungskraefte_zwischen_Atome.svg)

---

![bg fit](../assets/Figures/model_comp.png)

---

# Peridynamics (PD)



$\int_{\mathcal{H}}(\underline{\textbf{T}}(\textbf{x},t)-
\underline{\textbf{T}}(\textbf{x}',t))dV_{\textbf{x}}+\textbf{b} =\rho\ddot{\textbf{u}}$


![bg fit right](../assets/Figures/PeriMesh.PNG)


- material point
- bond
- neighbor
- integral domain
- horizon
- deformed bond state
...


## PD is a continuum formulation!


---

| Model  | Conservation of Momentum | Conservation of Angular Momentum |
|---------|-------------------------|----------------------------------|
| bond-based | bond                      | bond                             |
| ordinary state-based | integral                    | bond                               |
| non-ordinary state-based | integral                      | integral                               |

---

![bg vertical 50%](../assets/Figures/bondbased.png)
![bg 50%](../assets/Figures/osb.png)
![bg 50%](../assets/Figures/nosb.png)

---


## Software


---

<iframe src="https://perilab-results.nimbus-extern.dlr.de/models/Dogbone?step=36&variable=von%20Mises%20Stress" width="1150" height="600"></iframe>


---


<iframe src="https://perilab-results.nimbus-extern.dlr.de/models/DCB?step=65&variable=Damage&displFactor=200" width="1150" height="600"></iframe>


---

<iframe src="https://perilab-results.nimbus-extern.dlr.de/models/RVE?step=1&variable=Damage&displFactor=20" width="1150" height="600"></iframe>


---

<iframe src="https://perilab-results.nimbus-extern.dlr.de/models/Additive?step=1&variable=Temperature" width="1150" height="600"></iframe>

---



## Software
![bg right fit](https://raw.githubusercontent.com/PeriHub/PeriLab.jl/main/assets/PeriLab_crack.gif)
[PeriLab Repository](https://github.com/PeriHub/PeriLab.jl)

- install julia programming language
- start julia
- write in the console

using Pkg
Pkg.add("PeriLab")

---

## Application - run julia


using PeriLab

PeriLab.get_examples() (optional)
PeriLab.main("examples/DCB/DCBmodel.yaml") (run run model)

---

# Seminar
[Theory](https://perihub.github.io/PeriLab.jl/dev/theory/theory/)
[Examples for the seminar](https://perihub.github.io/PeriLab.jl/dev/lecture/lecture/)
[Results](https://perilab-results.nimbus-extern.dlr.de/)