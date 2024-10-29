---
marp: true

theme: default
header: ''
footer: ''
backgroundImage: url('../assets/styles/background.png')
title: Vorlesung Grundlagen Maschinenbau - Werkstofftechnik
author: Christian Willberg
---

<script type="module">
  import mermaid from 'https://cdn.jsdelivr.net/npm/mermaid@10/dist/mermaid.esm.min.mjs';
  mermaid.initialize({ startOnLoad: true });
</script>

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

## Ermüdung und Verschleiß
Prof. Dr.-Ing. Christian Willberg<a href="https://orcid.org/0000-0003-2433-9183"><img src="../assets/styles/ORCIDiD_iconvector.png" alt="ORCID Symbol" style="height:15px;width:auto;vertical-align: top;background-color:transparent;"></a>
Hochschule Magdeburg-Stendal

![bg right](../assets/Figures/IWES_test.jpg)

Kontakt: christian.willberg@h2.de  
Teile des Skripts sind von Prof. Dr.-Ing. Jürgen Häberle übernommen  
<div style="position: absolute; bottom: 10px; left: 520px; color: blue; font-size: 20px;"> 
  <a href="https://doi.org/10.1007/s42102-021-00079-6" style="color: blue;">Bildreferenz</a>
</div>

---

<!--paginate: true-->

## Nützliche Links

[Skript](https://cwillberg.github.io/Werkstofftechnik/)  
[Formelsammlung](https://cwillberg.github.io/Werkstofftechnik/Formelsammlung)  
TBD  
[CoopSpace]()  
![bg right 50%](../assets/QR/wst_mb_04.png)

---

# Ermüdung

<details>
<summary>Was ist Ermüdung?</summary>

<img src="https://upload.wikimedia.org/wikipedia/commons/7/7e/Sleeping_students.jpg" alt="Alternative text" width="500">

</details>

---

- Tritt typischerweise bei zyklischer Belastung auf
  - Isotherme mechanische Ermüdung
    - [Oszillierende Last](https://www.youtube.com/watch?v=_qVXkAWtH60)
    - Flugzeugrümpfe (Druckaufbau und -abfall)
  - Thermische Ermüdung
    - Öfen, Heizelemente
  - Thermomechanische Ermüdung
    - Hochdruckbehälter
  - Elektrothermische Ermüdung
    - Stromleiter (Glühfäden)

---

![bg 60%](https://leichtbau.dlr.de/wp-content/uploads/2021/11/Abbildung-2_Innovationsbericht_Wasserstofftank_CG06.png)

---

## Ermüdung
- Die Belastung liegt unterhalb der Streckgrenze $R_{p0,2}$
  - > _Erinnerung: Was bedeutet $R_{p0,2}$?_
- Spannungs-Konzentrationen entstehen an Materialfehlern (Poren, Mikrorisse) oder im Kristall (Versetzungen, Fehlstellen)
- Zunächst bilden sich unter wechselnder Last lokal zufällige Bereiche plastischer Verformung
- Diese Punkte repräsentieren Spannungs-Konzentrationsbereiche, die sich mit der Zeit vergrößern und zu Bruch führen können

[Erklärvideo](https://www.youtube.com/watch?v=o-6V_JoRX1g)

---

![bg fit](https://upload.wikimedia.org/wikipedia/commons/1/1c/Woehlerlinie.png)
![bg fit 80%](https://upload.wikimedia.org/wikipedia/commons/6/64/Spgs-Dehnungs-Kurve_Dehngrenze.svg)

---

## Begriffe

- Lebensdauer
- Ermüdungsriss
- Ermüdungsbruch
- Kurzzeitfestigkeit (K)
- Zeitfestigkeit (Z)
- Dauerfestigkeit (D)

![bg right fit 70%](https://upload.wikimedia.org/wikipedia/commons/9/96/Pedalarm_Bruch.jpg)

---

## Gegenmaßnahmen

- Kerbwirkung verringern
- Materialanpassung
- Konstruktion anpassen, damit lokale Spannung zulässige Grenzen nicht überschreitet
- Regelmäßige Inspektionen

---

## Verschleiß

- Permanente Verformung und Materialverlust an der Oberfläche von Festkörpern durch Reibung
- Technologisch unerwünscht und kann zu Funktionsausfällen führen
- Beeinflusst durch:
  - Reibpaarung
  - Oberflächenschicht und Zwischensubstanz
  - Bewegungsart
  - Lastintensität

---

| Verschleißart            | Erscheinung                                                        | Primäres Vorkommen                                         |
|--------------------------|--------------------------------------------------------------------|------------------------------------------------------------|
| Gleitverschleiß          | Rillen oder Riefen durch Abrieb, Materialübertragung oder lokales Schmelzen | Un-geschmierte Lager, Kupplungen, Bremsen                  |
| Rollverschleiß           | Abblättern durch Ermüdungsrisse                                     | Rad/Schiene, Wälzlager                                     |
| Pittings                 | Grübchenbildung: Pitting                                           | Wälzkörper, speziell Zahnräder                             |
| Abrasivverschleiß         | Plastische Verformung, Erosion                                    | Bagger, Schüttguttransport, Partikelaufprall               |
| Kavitation               | Oberflächenschädigung durch Aufprall von Dampfblasen              | Wasserturbinen, Pumpen                                     |
| Tribooxidation (Reibkorrosion) | Loses Oxidationsprodukt                                      | Maschinenelemente mit form- oder kraftschlüssigen Verbindungen |

---

## Gleitverschleiß

- Beeinflusst [durch](https://download.basf.com/p1/8a8081c57fd4b609017fd66047f138c3/de/Reibung_und_Verschlei%25C3%259F%250Abei_Polymerwerkstoffen)
  - Die mittlere Rauheitstiefe $R_z$
  - Anpressdruck
  - Verschleißpfadverhältnis $W=k\frac{F_N}{A}10^6$
  - $k$ in $\left[\frac{mm^3}{Nm}\right]$ spezifischer Verschleißkoeffizient (lastunabhängig)

![bg right fit 90%](https://media.springernature.com/original/springer-static/image/chp:10.1007%2F978-3-658-17851-2_4/MediaObjects/299062_3_De_4_Fig17_HTML.gif)

---

## Rollverschleiß
- [Rollen](https://link.springer.com/chapter/10.1007/978-3-658-17851-2_6) umfasst Schlupfkomponenten, die dem Rollvorgang überlagert sind
- Kleine Kontaktfläche; hohe Flächenpressung
- Oberflächenabbau (plastische Verformung, Mikrostrukturveränderungen usw.)
- Kann durch Schmierung signifikant reduziert werden $\rightarrow$ spezifische Schmierfilm-Dicke $\lambda$

![bg right fit 70%](https://media.springernature.com/full/springer-static/image/chp%3A10.1007/978-3-658-17851-2_6/MediaObjects/299062_3_De_6_Fig1_HTML.gif?as=webp)

![bg fit vertical 60%](https://media.springernature.com/full/springer-static/image/chp%3A10.1007/978-3-658-17851-2_6/MediaObjects/299062_3_De_6_Fig10_HTML.gif?as=webp)

---

## Kavitation

[Video](https://www.youtube.com/watch?v=J0H0Nw44oA4)

<details>
<summary>Physikalische Ursache?</summary>
<div>

- Der statische Druck hängt von der Flüssigkeitsgeschwindigkeit ab
- Dampfblasen entstehen, wenn der Dampfdruck unter einen Schwellenwert fällt
- Diese Blasen wandern in Bereiche mit höherem Druck und kollabieren rasch
- Dabei entstehen Druck- und Temperaturschwankungen
</div>
</details>

---

- Lokale Belastung an der Oberfläche
- Diese Bereiche werden geschwächt und blättern ab
- Auswirkungen auf die Oberfläche:
  - Wirkungsgradverlust
  - Korrosion
  - Bereiche, in denen sich Risse bilden können

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/b/bf/Cavitation.jpg)

---

## Reibkorrosion

- Gleitbewegungen zwischen zwei hochbelasteten Komponenten
- Tritt typischerweise bei unzureichendem Presssitz auf $\rightarrow$ Passungen

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/2/27/Corrosion_de
