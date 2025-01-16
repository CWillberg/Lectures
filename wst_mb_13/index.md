---
marp: true

theme: default
header: ''
footer: ''
backgroundImage: url('../assets/styles/background.png')
title: Vorlesung Faserverbundwerkstoffe
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


## Vorlesung Werkstofftechnik - Faserverbundwerkstoffe
Prof. Dr.-Ing.  Christian Willberg<a href="https://orcid.org/0000-0003-2433-9183"><img src="../assets/styles/ORCIDiD_iconvector.png" alt="ORCID Symbol" style="height:15px;width:auto;vertical-align: top;background-color:transparent;"></a>
Hochschule Magdeburg-Stendal

![bg right](https://wiki.arnold-horsch.de/images/6/6e/EKD-1.jpg)

Kontakt: christian.willberg@h2.de


---

![bg fit](../assets/Figures/FKV_Beispiele.png)

<!--paginate: true-->

---

## Fokus von Industrien

- Luft- und Raumfahrt
  - Gutes Festigkeits/Steifigkeits – Gewichtsverhältnis
  - Schaden-, Korrosionsstoleranz 
  - Wartbarkeit / Reparierbarkeit
- Bauwesen
  - Widerstand gegen Umwelteinflüsse und Korrosion
  - Langlebigkeit

---

- Schifffahrt
  - Salzwasser
  - Schlagschäden
  - Lange Lebendauer
- Landtransportsysteme
  - Kosten
  - Einfache Fertigbarkeit
- Weitere Anwendungen
  - Dichtheit
  - …


---

## Was ist ein Faserkunstoffverbund (FKV)

- Mehrphasen- oder Mischwerkstoff im Allgemeinen bestehend aus zwei Hauptkomponenten (Faser und Matrix)
- Der Gesamtwerkstoff hat höherwertige Eigenschaften als jede der beiden beteiligten Komponenten alleine
- FKV bieten ein spezifisches Eigenschaftsprofil
- Material und seine Eigenschaften entstehen in der Fertigung der Bauteile / Strukturen

---

## Komponenten von Faserkunstoffverbunde 

Matrix – bindende Komponente
Formgebend
Schutz und Stabilisierung der Fasern
Spannungen an die Fasern übertragen
Faser – verstärkende Komponente
Lasttragend da hohe Steifigkeit und/oder Festigkeit bei geringem Gewicht
Begrenzte thermische Dehnung
Weitere Bestandteile (optional)
Faserbeschichtungen
Füllstoffe
Beimischung anderer Fasertypen

![bg right 75%](../assets/Figures/FKV_struktur.png)

---

## Ausgangswerkstoffe - Faser

- Kurzfasern
  - Wirre Anordnung (geringe Anistropie)
  - Oft recyclete Fasern
- Langfasern
  - Mehrere Millimeter Länge
  - Geringere Anforderung bei Verarbeitung und Lagerung
- Endlosfasern
  - Hohe Festigkeiten und Steifigkeiten
  - Höhere Anforderung bei Verarbeitung und Lagerung


![bg right 35%](https://balticcarbon.de/wp-content/uploads/1-4.jpg)
![bg vertical 35%](https://shop.flachs.de/wp-content/uploads/sites/2/2013/05/LangflachsGebleichZopfShop.jpg)
![bg vertical 35%](https://img.directindustry.de/images_di/photo-mg/193131-12102231.jpg)

---
## Ausgangswerkstoffe - Faser

- Naturfasern: Haare, Wolle, Seide, Baumwolle, Flachs, Sisal, Hanf, Jute, Ramie, Bananenfasern ...
- Organische Fasern: Polyethylen (PE), Polypropylen (PP), Polyamid (PA), Polyester (PES), Polyacrylnitril (PAN), Aramid, Kohlenstoff ...
- Anorganische Fasern: Glas, Basalt, Quarz, SiC, Al2O3, Bor, ...
- Metallfasern aus: Stahl, Aluminium, Kupfer, Nickel, Beryllium, Wolfram ... 

![](../assets/Figures/faservergleich.png)

---

## Glasfaser

**Vorteile**
hohe Längs-Zug- sowie die hohe Längs-Druckfestigkeit
Eine hohe Bruchdehnung
aufgrund der niedrigen Fasersteifigkeit gute Drapierbarkeit, auch um enge Radien
die vollkommene Unbrennbarkeit
die sehr geringe Feuchtigkeitsaufnahme


![bg right fit](https://plasticker.de/images/news/11441_f.03.jpg)

---

## Glasfaser

**Vorteile**

die gute chemische und mikrobiologische Widerstandsfähigkeit. 
Kosten
**Nachteile**
der für viele Strukturbauteile zu niedrige Elastizitätsmodul der Glasfaser
Glasfasern sind unverrottbar (Vor- und Nachteil)

![bg right fit](https://plasticker.de/images/news/11441_f.03.jpg)

---

## Kohlefaser (C-Faser)

**Vorteil**
C-Fasern sind sehr leicht, ihre Dichte ($\rho_𝑓 \approx 1.8 g/cm^3$) liegt deutlich unter derjenigen von Glasfasern ($\rho_𝑓 \approx 2.54 g/cm^3$). 
extrem hohe Festigkeiten und sehr hohe Elastizitätsmoduln
beide mechanischen Größen sind zudem in weiten Bereichen bei der Herstellung der Fasern einstellbar
Exzellente Ermüdungsfestigkeit

![bg right fit](https://airbus-h.assetsadobe2.com/is/image/content/dam/products-and-solutions/structure/A350_forward_fuselage.jpg?wid=1920&fit=fit,1&qlt=85,0)

---

**Nachteile**
Geringere Druckfestigkeit in Faserrichtung
Schlechtere Drapierbarkeit
Kosten
Elastizitätsmoduln in Faserlängs- und Querrichtung unterscheiden sich um eine Größenordnung (Vor- und Nachteil)

![bg right fit](https://airbus-h.assetsadobe2.com/is/image/content/dam/products-and-solutions/structure/A350_forward_fuselage.jpg?wid=1920&fit=fit,1&qlt=85,0)

---

![bg fit](https://cdn1.vogel.de/unsafe/fit-in/1000x0/images.vogel.de/vogelonline/bdb/320000/320032/original.jpg)

---