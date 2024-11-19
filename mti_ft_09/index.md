---
marp: true

theme: default
header: ''
footer: ''
backgroundImage: url('../assets/styles/background.png')
title: MTI - Fertigungstechnik
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


## Vorlesung MTI - Fertigungtechnik
Prof. Dr.-Ing.  Christian Willberg<a href="https://orcid.org/0000-0003-2433-9183"><img src="../assets/styles/ORCIDiD_iconvector.png" alt="ORCID Symbol" style="height:15px;width:auto;vertical-align: top;background-color:transparent;"></a>
Hochschule Magdeburg-Stendal

![bg right](https://upload.wikimedia.org/wikipedia/commons/1/1d/SchmelzofenArbeiter.jpg)

Kontakt: christian.willberg@h2.de

---

# Inhalte

![bg right 70%](../assets/QR/mti_ft_08.png)

---


## Urformen - Additive Fertigung

- schichtweiser Aufbau eines dreidimensionalen Bautils
- Verfahrensarten
  - Tropfen
  - Filament
  - Draht
  - Pulverauftrag
  - ...

[Grundlagen](https://www.youtube.com/watch?v=d_YUk4vcFCE)

---

<!--paginate: true-->

# Umformen 
- zwei Hauptklassen
- Warmformgebung und Kaltformgebung
**Umformgrad**
- entspricht der Dehung in Prozent
- für kleine Deformationen $\phi=\frac{\Delta l}{l_0}*100\%$
- für große Deformationen $\phi=ln\frac{l_1}{l_0}*100\%$ -> logarithmisches Dehnungsmaß
---

## Warmformgebung
- deutlich höher als die Rekristallisationstemperatur
- während oder zwischen Arbeitsschritten findet eine Rekristallisation statt
- kubisch flächen zentrierte Kristalle werden bevorzugt (wenn vorhanden)
- Gefüge und Einschlüsse beeinflussen maßgeblich das Umformverhalten

---
## Warmformgebungsverfahren
- [Schmieden](https://youtu.be/AxLszR6fkLM?si=k6A9aOVfQceOK9v0&t=80)
- Pressen
- [Walzen](https://www.youtube.com/watch?v=WOTO64HgnXc)
- ...
---

## Kaltformgebung
- Verfestigung nimmt zu, ggf. Rekristallisationslühen oder Zwischenglühen
- Gefüge hat starken Einfluss
- Bauteile enthalten in der Regel Eigenspannungen
- hohe Genauigkeit und Oberflächegüte
- keinne Verzunderungen und Oxidationen

---

## Kaltformgebungsverfahren
- Prägen
- Pressen
- Fließpressen
- Tiefziehen

---

## Tiefziehen

![](https://upload.wikimedia.org/wikipedia/commons/f/fc/Emboutissage1.png)
[Metall](https://www.youtube.com/watch?v=WtJNFdv54EM)
[Kunststoff](https://www.youtube.com/watch?v=_FDMz7YAtWA)

---

# Trennen
Unterteilt in 
- Zerteilen
- Spanen
- Abtragen
- Zerlegen
- Reinigen
- Evakuieren 

---
## Zerteilen
- ist spanfrei
- Scherscheiden oder Keilschneiden

---

## Spanen
- Feilen
- Sägen
- Drehen
- Fräsen
- Schleifen
- Bohren




