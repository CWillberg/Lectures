---
marp: true

theme: default
header: ''
footer: ''
backgroundImage: url('../assets/styles/background.png')
title: Vorlesung Faserverbunde
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
</style>


## Vorlesung Faserverbunde
Prof. Dr.-Ing.  Christian Willberg<a href="https://orcid.org/0000-0003-2433-9183"><img src="../assets/styles/ORCIDiD_iconvector.png" alt="ORCID Symbol" style="height:15px;width:auto;vertical-align: top;background-color:transparent;"></a>
Hochschule Magdeburg-Stendal

![bg right](../assets/Figures/crack.jpg)

Kontakt: christian.willberg@h2.de

<div style="position: absolute; bottom: 10px; left: 520px; color: blue; font-size: 20px;"> 
    <a href="https://doi.org/10.1007/s42102-021-00079-6" style="color: blue;">Bildreferenz</a>
</div>


---

<!--paginate: true-->


# Grundlagen der Materialmodellierung

$\boldsymbol{\sigma}_T=\mathbf{C}_T\cdot\cdot\boldsymbol{\varepsilon}_T$

$\boldsymbol{\sigma} =
\begin{bmatrix}
\sigma_{11} & \sigma_{12} & \sigma_{13} \\
\sigma_{yx} & \sigma_{22} & \sigma_{23} \\
\sigma_{zx} & \sigma_{zy} & \sigma_{33}
\end{bmatrix}
$

$\boldsymbol{\varepsilon} =
\begin{bmatrix}
\varepsilon_{11} & \varepsilon_{12} & \varepsilon_{13} \\
\varepsilon_{yx} & \varepsilon_{22} & \varepsilon_{23} \\
\varepsilon_{zx} & \varepsilon_{zy} & \varepsilon_{33}
\end{bmatrix}$

---

## Voigt Notation

**Symmetriebedingungen**

$
C_{ijkl} = C_{ijlk} \quad \text{(Symmetrie bei Vertauschung der letzten Indizes)},$
$C_{ijkl} = C_{jikl} \quad \text{(Symmetrie bei Vertauschung der ersten Indizes)},$
$C_{ijkl} = C_{klij} \quad \text{(Paarweise Symmetrie)}$

---


$
\begin{bmatrix}
\sigma_{11} \\
\sigma_{22} \\
\sigma_{33} \\
\sigma_{12} \\
\sigma_{13} \\
\sigma_{23}
\end{bmatrix}=
\begin{bmatrix}
C_{1111} & C_{1122} & C_{1133} & C_{1112} & C_{1113} & C_{1123} \\
C_{2211} & C_{2222} & C_{2233} & C_{2212} & C_{2213} & C_{2223} \\
C_{3311} & C_{3322} & C_{3333} & C_{3312} & C_{3313} & C_{3323} \\
C_{1211} & C_{1222} & C_{1233} & C_{1212} & C_{1213} & C_{1223} \\
C_{1311} & C_{1322} & C_{1333} & C_{1312} & C_{1313} & C_{1323} \\
C_{2311} & C_{2322} & C_{2333} & C_{2312} & C_{2313} & C_{2323}
\end{bmatrix}
\cdot
\begin{bmatrix}
\varepsilon_{11} \\
\varepsilon_{22} \\
\varepsilon_{33} \\
\gamma_{12} \\
\gamma_{13} \\
\gamma_{23}
\end{bmatrix}$
mit

$\gamma_{ij}=\gamma_{ji}=0.5(\varepsilon_{ij}+\varepsilon_{ji})$

---

## Faserverbunde - orthotropes Material

- Annahme des ebenen Spannungzustands

$\begin{bmatrix}
\sigma_1 \\
\sigma_2 \\
\tau_{12}
\end{bmatrix}=
\begin{bmatrix}
\frac{E_1}{1-\nu_{12}\nu_{21}} & \frac{\nu_{21}E_1}{1-\nu_{12}\nu_{21}} & 0 \\
\frac{\nu_{12}E_2}{1-\nu_{12}\nu_{21}} & \frac{E_2}{1-\nu_{12}\nu_{21}} & 0 \\
0 & 0 & G_{12}
\end{bmatrix}
\begin{bmatrix}
\varepsilon_1 \\
\varepsilon_2 \\
\gamma_{12}
\end{bmatrix}$

---


---

# Rotation
- Transformation ist nicht mittels der Rotationsmatrix direkt möglich
- Voigt Matrix hat keine orthonormale Basis
- 2 Wege
  - Transformation über den Steifikeitstensor
  - Transpormation über Spannungen und Dehnungen


---

- Nach der Rotation des Dehnungstensors (2x2) wird dann die Voigtform für die Multiplikation genutzt

$\mathbf{\sigma}'= \mathbf{C}\mathbf{R} \mathbf{\varepsilon} \mathbf{R}^T$

$\mathbf{\sigma}=\mathbf{R}^T \mathbf{\sigma}' \mathbf{R}$

-> wird in FEM angewandt

---

## Klassische Laminattheorie

- Einzelschichten ist ideal linear elastisch
- Das Laminat ist dünn (Dicke $t$ ist klein gegenüber den restlichen Abmessungen)
- Die Laminatdicke $t$ ist konstant
- Die Theorie I. Ordnung ist gültig (kleine Verformungen)
- Die Bernoullische Annahmen sind gültig (ebene Querschnitte, schubstarr in Dickenrichtung)
- Der Spannungszustand ist aufgrund der Dünnwandigkeit eben $σ_3 = τ_{13} = τ_{23} = 0$
- Die Schichten sind ideal miteinander verklebt.
- Das Laminat liegt in der 1 , 2 -Ebene.

---

![bg right 60%](https://upload.wikimedia.org/wikipedia/de/8/82/Dehnung-Schiebungs-Kopplung.png)

$A_{ij} = \sum_{k=1}^{N} \hat Q_{ij,k} \cdot t_k$

---

$D_{ij} = \sum_{k=1}^{N} \hat Q_{ij,k} \cdot \left(   \underbrace{\frac {t^3_{k}} {12}}_\text{Biegesteifigkeit}  + t_k \underbrace{ \left( z_k-\frac {t_k} {2} \right)^2}_\text{Steiner Anteil} \right)$

![](https://upload.wikimedia.org/wikipedia/de/b/bc/Biege-Drill-Kopplung.png)

---

$B_{ij} = -\sum_{k=1}^{N} \hat Q_{ij,k} \cdot t_k \cdot \underbrace{  \left(  z_k - \frac{t_{k}}{2}   \right)}_\text{stat. Moment}$

![bg right 80%](https://upload.wikimedia.org/wikipedia/commons/b/bb/Dehnung-Kr%C3%BCmmungs-Kopplung.png)

---



$
\begin{bmatrix} 
\mathbf{N}\\
\mathbf{M}
\end{bmatrix}=
\begin{bmatrix}
\mathbf{A} & \mathbf{B} \\
\mathbf{B} & \mathbf{D}
\end{bmatrix}\begin{bmatrix} 
\boldsymbol{\varepsilon}\\
\boldsymbol{\kappa}
\end{bmatrix}$

## Grenzen
- durch Kirchhoffsche Schalentheorie gegeben (Dünnwandigkeit)