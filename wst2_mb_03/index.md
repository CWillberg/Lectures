---
marp: true

theme: default
header: ''
footer: ''
backgroundImage: url('../assets/styles/background.png')
title:  Werkstofftechnik II
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


##  Werkstofftechnik II
Prof. Dr.-Ing.  Christian Willberg<a href="https://orcid.org/0000-0003-2433-9183"><img src="../assets/styles/ORCIDiD_iconvector.png" alt="ORCID Symbol" style="height:15px;width:auto;vertical-align: top;background-color:transparent;"></a>
Hochschule Magdeburg-Stendal

![bg right](../assets/Figures/IWES_test.jpg)

Kontakt: christian.willberg@h2.de
Teile des Skripts sind von \
Prof. Dr.-Ing. Jürgen Häberle übernommen
<div style="position: absolute; bottom: 10px; left: 520px; color: blue; font-size: 20px;"> 
    <a href="https://doi.org/10.1007/s42102-021-00079-6" style="color: blue;">Bildreferenz</a>
</div>


---

<!--paginate: true-->

## Vorlesung


![bg right 50%](../assets/QR/wst_mb_01.png)

---

## Inhalte
- WST für Bachelor S. - S.

---

## Raumgitter und Gittersysteme

- entsteht durch die dreidimensional-periodische Verschiebung seiner Bausteine
- charakterisiert durch drei Raumachsen x, y und z liegenden Winkel α, β, γ die Abstände auf den Achsen das jeweilige Raumgitter
- a0, b0 und c0  (Gitterkonstanten) -> Einheitszelle


![bg fit right](../assets/Figures/einheitszelle.png)

--- 

## Packungsdichte

$PD = \frac{\text{Atomvolumen innerhalb der Elementarzelle}}{\text{Volumen der Elementarzelle}}$

- Bestimmung PD $\alpha$ Eisen, $\gamma$ Eisen,  Aluminium

---
## Gitterfehler
Vektor zur Charakterisierung der Gitterverzerrungen - Burgersvektor $\mathbf{b}$
liegt in den dichtgepacktesten Ebenen
von der Kristallstruktur abhängiger Verzerrungsvektor
- ungestörter Verlauf $|\mathbf{b}|=0$
- Fehlstelle $|\mathbf{b}|=0$
- Versetzung $|\mathbf{b}|=a_0$

--- 
![bg fit](https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/Burgers_vektor.svg/1920px-Burgers_vektor.svg.png)

---
![bg 80%](https://upload.wikimedia.org/wikipedia/commons/1/1f/Burgers_Vector_and_dislocations_%28screw_and_edge_type%29.svg)

---

![bg fit](https://upload.wikimedia.org/wikipedia/commons/4/45/TEM_micrograph_dislocations_precipitate_stainless_steel_1.jpg)