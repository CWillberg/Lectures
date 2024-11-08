---
marp: true

theme: default
header: ''
footer: ''
backgroundImage: url('../assets/styles/background.png')
title: Ermüdung und Verschleiß
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

![bg right](https://upload.wikimedia.org/wikipedia/commons/b/bd/Smith2.svg)

Kontakt: christian.willberg@h2.de  
Teile des Skripts sind von Prof. Dr.-Ing. Jürgen Häberle übernommen  
<div style="position: absolute; bottom: 10px; left: 520px; color: blue; font-size: 20px;"> 
  <a href="https://doi.org/10.1007/s42102-021-00079-6" style="color: blue;">Bildreferenz</a>
</div>

---

<!--paginate: true-->




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
## Spannungsverhältnis
$R = \frac{\sigma_u}{\sigma_o}$
## Mittelspannung
$\sigma_m=\frac{\sigma_u+\sigma_o}{2}$

$\sigma_o$ - Oberspannung
$\sigma_u$ - Unterspannung

![bg right 90%](../assets/Figures/sinuskurven_mit_offset.png)

---

## Dauerfestigkeitsschaubilder
- Haigh-Diagramm und Smith-Diagramm empfohlen nach DIN 50100

---

## Haigh-Diagramm

![](https://www.tec-science.com/wp-content/uploads/2021/03/de-dauerschwingversuch-haigh-diagramm-erstellung.jpg)



---

![](https://www.tec-science.com/wp-content/uploads/2021/03/de-dauerschwingversuch-haigh-diagramm-spannungsverhaeltnis.jpg)

---

## Smith-Diagramm

- Winkelhalbierende eintragen
- Oben und unten (paralle Linien) -> statische Druck- und Zugfestigkeit
- Kurven werden aus Wöhlerexperiment mit verschiedenen R bestimmt

![bg right 90%](https://upload.wikimedia.org/wikipedia/commons/b/bd/Smith2.svg)

---

## Begriffe

- Lebensdauer
- Ermüdungsriss
- Ermüdungsbruch
- Kurzzeitfestigkeit (K) $<10^5$ (Low Cycle Fatigue (LCF))
- Zeitfestigkeit (Z) $10^4<10^6$ (High Cycle Fatigue (HCF))
- Dauerfestigkeit (D) $>10^6$ (Very High Cycle Fatigue (VHCF))


![bg right fit 60%](https://upload.wikimedia.org/wikipedia/commons/9/96/Pedalarm_Bruch.jpg)
![bg vertical  60%](https://farm6.staticflickr.com/5522/12140479094_6f746014ab_z.jpg)



---

## Gegenmaßnahmen

- Kerbwirkung verringern
- Materialanpassung
- Konstruktion anpassen, damit lokale Spannung zulässige Grenzen nicht überschreitet
- Regelmäßige Inspektionen 

---


# Verschleiß

---


- infolge Reibung eintretende bleibende Form- und Stoffveränderung an der Oberfläche von Festkörpern
- ist technologisch nicht beabsichtigt und eine Form des funktionellen Versagens darstellt bzw. darstellen kann
- Beeinflusst durch
  - Reibkörperpaarung
  - Beschaffenheit der Grenzschichten und des Zwischenstoffes
  - Art des Bewegungsablaufes
  - Höhe der Belastung 

---

- **Adhäsiver Verschleiß**
- **Abrasiver Verschleiß**
- **Oberflächenzerrüttung**
- **Tribooxidation**

---

## Adhäsiver Verschleiß
 - Adhäsiver Verschleiß tritt bei mangelnder Schmierung auf
 - bei hoher Flächenpressung haften Flächen aneinander
 - tritt Gleiten ein, werden Randschichtteilchen
 - es entstehen Löcher und schuppenartige Materialteilchen, die oft an der Gleitfläche des härteren Partners haften bleiben. 

---

![bg 50%](https://upload.wikimedia.org/wikipedia/commons/3/31/Rt%2BRv%2BRp.gif)

---

## Abrasiver Verschleiß

- harte Teilchen eines Schmierstoffs oder Rauheitsspitzen eines Reibungspartners dringen in Randschicht ein
  -> es kommt es zu Ritzung und Mikrozerspanen
  - Furchverschleiß oder Erosionsverschleiß 

- richtige Wahl der Werkstoffpaarung; Metall-Kunststoff- oder Metall-Keramik-Paarungen

---

Beispiel Windenergie:
- Sand im Wind "schmirgelt" die Oberfläche ab
- Wirkungsgrad sinkt
![bg right 100%](https://encyclopedia.pub/media/item_content/202209/6333de2d03ef5energies-15-05672-g008.png)

---

## Oberflächenzerrüttung

- wechselnde oder schwellende mechanische Spannungen an der Oberfläche
- Ermüdung oder Kriechen des Materials an der Oberfläche

---

## Tribooxidation
- Tribooxidation (Passungsrost) an einer Welle aus Stahl
-  Bildung von Zwischenschichten, z. B. Oxidschichten, infolge chemischer Reaktion und ihre mechanische Zerstörung durch Bewegung der Bauteile 
- tritt fast immer zusammen mit adhäsivem Verschleiß auf


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


## Wälzverschleiß
- [Wälzen](https://link.springer.com/chapter/10.1007/978-3-658-17851-2_6) ist eine Beanspruchungsart, bei der Gleitanteile (Schlupf) den reinen Rollvorgang überlagern
- kleine Kontaktfläche; hohe Flächenpressung
- Oberflächenzerrüttung (plastische Verformung, Gefügeänderungen, usw.)
- durch Schmierung deutlich reduzierbar $\rightarrow$ spezifische Schmierfilmdicke $\lambda$

![bg right fit 70%](https://media.springernature.com/full/springer-static/image/chp%3A10.1007%2F978-3-658-17851-2_6/MediaObjects/299062_3_De_6_Fig1_HTML.gif?as=webp)

![bg fit vertical 60%](https://media.springernature.com/full/springer-static/image/chp%3A10.1007%2F978-3-658-17851-2_6/MediaObjects/299062_3_De_6_Fig10_HTML.gif?as=webp)

---

## Kavitation

[Video](https://www.youtube.com/watch?v=J0H0Nw44oA4)

<details>
<summary>Physikalische Ursache?</summary>
<div>

- statischer Druck ist abhängig von der Geschwindigkeit eines Fluids
- bei Unterschreitung des Verdampfungsdrucks bilden sich Dampfblasen
- diese Blasen laufen in Bereiche mit höherem Druck und kondensieren schlagartig
- Druck- und Temperaturspitzen treten auf
</div>
</details>

---

- lokale Belastungen an der Oberfläche
- diese Bereiche ermüden und platzen ab
- Beeinträchtigt die Oberfläche
  - Wirkungsgradreduktion
  - Korrosion
  - Bereiche wo Risse initiieren können

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/b/bf/Cavitation.jpg)

---

## Reibkorrosion

- Gleitbewegungen zwischen zwei hochbelasteten Bauteilen
- meist bei zu geringem Übermaß $\rightarrow$ Passungen

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/2/27/Corrosion_de_contact_sur_un_bout_d%27arbre_01.jpg)



