---
marp: true

theme: default
header: ''
footer: ''
backgroundImage: url('../assets/styles/background.png')
title: Vorlesung Wärmebehandlung
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


## Vorlesung Werkstofftechnik - Wärmebehandlung
Prof. Dr.-Ing.  Christian Willberg<a href="https://orcid.org/0000-0003-2433-9183"><img src="../assets/styles/ORCIDiD_iconvector.png" alt="ORCID Symbol" style="height:15px;width:auto;vertical-align: top;background-color:transparent;"></a>
Hochschule Magdeburg-Stendal

![bg right](../assets/Figures/Flamm-1.png)

<div style="position: absolute; bottom: 10px; left: 520px; color: blue; font-size: 20px;"> 
    <a href="https://wiki.arnold-horsch.de/images/3/36/Flamm-1.png" style="color: blue;">Bildreferenz</a>
</div>


Kontakt: christian.willberg@h2.de
Teile des Skripts sind von \
Prof. Dr.-Ing. Jürgen Häberle übernommen



---

<!--paginate: true-->

## Wärmebehandlung

- Glühverfahren
- Härteverfahren

Charakterisierung:
- Art des Erwärmens
- Haltetemperatur
- Haltedauer
- Art des Abkühlens (Ofen-, Luft-, Öl-, Wasserabkühlung)

![bg right 50% fit](../assets/styles/w.png)


---


# Warum?

---

- Verbesserung der Bearbeitbarkeit (Weichglühen)
- Arbeitsgang der Erzeugung (Härten von Werkzeugen)
- Verbesserung der mechanischen Eigenschaften (Vergüten von Stahl, Aushärten von Al-Legierungen)
- Verminderung des Verschleißes (Randschichthärten von Zahnrädern)
- Beseitigung von Kaltverfestigung (Rekristallisationsglühen)
- Abbau von Guss- oder Schweißspannungen (Spannungsarmglühen)


---

![bg 70% fit](../assets/Figures/Eisen_Kohlenstoff_Diagramm_Deutsch.svg)

---

![bg 43% fit](../assets/Figures/EKD_farbe.png)

---
## Glühen
- langsames Kühlen. Versuch nahe dem Gleichgewichtszustand zu kommen

Ziele ausabeiten für
- Spannungsarmglühen
- Rekristallisationsglühen
- Weichglühen
- Normalglühen
- Grobkornglühen
- Diffusionsglühen

---

## Spannungsarmglühen
- Langsames Erwärmen auf 550 - 650 °C (unterhalb $\text{A}_{c1}$)
- Haltedauer 2 - 4 h, langsame Abkühlung (Ofenabkühlung)

![bg fit right](../assets/Figures/EKD_farbe.png)

Ziel:
Abbau innerer Spannungen (Eigenspannungen) ohne wesentliche Änderung der sonstigen Eigenschaften


---

## Spannungsarmglühen
- Langsames Erwärmen auf 550 - 650 °C (unterhalb $\text{A}_{c1}$)
- Haltedauer 2 - 4 h, langsame Abkühlung (Ofenabkühlung)

![bg right 90% fit](../assets/Figures/spannungsarmgluehen.svg)

Ziel:
Abbau innerer Spannungen (Eigenspannungen) ohne wesentliche Änderung der sonstigen Eigenschaften

---

## Rekristallisationsglühen

![bg fit right](../assets/Figures/EKD_farbe.png)


- Rückgängigmachen von Eigenschaftsänderungen (Verfestigung) durch Kaltumformung; 
- Gefügeumbildung bzw. -neubildung im festen Zustand;
- Spannungsabbau
- Erhöhung der Bruchdehnung

---




## Rekristallisationsglühen
- Rekristallisationstemperatur bei Stahl: 500 - 600°C
- halten, langsame Abkühlung
- bei zu langer Haltezeit: Grobkornbildung
![bg right 90% fit](../assets/Figures/rekristallisationsgluehen.svg)


---




## Weichglühen

![bg fit right](../assets/Figures/EKD_farbe.png)

- Herstellung eines - für die Weiterverarbeitung günstigen - weichen Zustands
- Zementitteilchen werde kugelig eingeformt (GKZ-Glühen).

---

## Weichglühen
- Temperaturen um  $\text{A}_{C1}$ (unterhalb, oberhalb oder pendelnd um  $\text{A}_{C1}$)
- langsame Abkühlung.

![bg fit right 90%](../assets/Figures/weichgluehen.svg)
.

---


## Normalglühen

- Temperatur 30 - 50°C über Umwandlungstempertur im Austenitgebiet. 
- Erwärmung zwischen $\text{A}_{C1}$ und Glühtemperatur rasch, kurze Haltedauer
- rasche Abkühlung durch Zweiphasen-Intervall, dann langsam abkühlen

![bg fit right](../assets/Figures/EKD_farbe.png)

---

## Normalglühen

![bg fit right 90%](../assets/Figures/normalgluehen.svg)


- Herstellung eines gleichmäßigen und feinkörnigen Gefüges mit Perlitanteilen
- Annäherung an den Gleichgewichtszustand durch zweifaches Umkörnen (bei Erwärmung und Abkühlung)
- häufig eingesetztes Verfahren

---

## Grobkornglühen


- Erzielung eines groben Korns
- Verbesserung der Spanbarkeit

![bg fit right](../assets/Figures/EKD_farbe.png)



---


## Grobkornglühen


- Temperatur deutlich über $\text{A}_{C3}$ (950 - 1100°C)
- Haltezeit 1 bis 2 h
- langsame Ofenabkühlung
- dann raschere Luftabkühlung

![bg fit right 90%](../assets/Figures/grobkorngluehen.svg)



---

## Diffusionsglühen

- Beseitigung örtlicher Konzentrationsunterschiede (Seigerungen) durch Diffusion

![bg fit right](../assets/Figures/EKD_farbe.png)

---

## Diffusionsglühen

- Temperatur hoch im Austenitbereich
- lange Haltezeit (bis 50 h)
- langsame Abkühlung

![bg fit right 90%](../assets/Figures/diffussionsgluehen.svg)



---

![bg 60%](../assets/Figures/Diffusion_Kohlenstoff_in_Eisen.png)

---



## ZTU-Schaubilder
- Zeit Temperatur Umwandlungs Schaubilder
- werden für verschiedene Materialien und Legierungen bereitgestellt
- auf dieser Basis werden die Wärmebehandlungsprozesse geplant
- Unterscheidung in Abkühlung bei
  - konstanter Temperatur (isotherme Umwandlung)
  - kontinuierliche Abkühlung
---
## isotherme Umwandlung

- Probe wird abgeschreckt
- bei konstanter Temperatur gehalten, bis Umwandlung abgeschlossen

![bg right fit](../assets/Figures/ztisotherm.png)

---
## Kontinuierliche Abkühlung
- ausgehend von der Austenitiseriungsbedingung verschieden schnell abgekühlt
- die Umwandlung in Ferrit, Perlit, Bainit (Zwischenstufe) oder Martensit bei verschiedenen Temperaturen findet in unterschiedlichem Ausmaß statt
- am Ende der Abkühlkurve wird meist die erreichbare Härte eingetragen

![bg right fit](../assets/Figures/ztukontinuierlich.png)

---

# Härteverfahren

---

## Härten

- erfolgt das Abkühlen von einer Temperatur oberhalb der Umwandlungslinie GOSK mit einer Geschwindigkeit, die größer ist als die kritische („Abschrecken“)
- Ziel ist ein Ungleichgewichtszustand durch Umwandlung des Austenits in Martensit (gegebenenfalls auch Bainit)

![bg right 100%](../assets/Figures/Eisen_Kohlenstoff_Diagramm_Deutsch.svg)

---

## Verfahren
- Härten nach Volumenerwärmung
- Anlassen
- Vergüten
- Randschichthärten
- Thermochemische Verfahren
  - Aufkohlen / Einsatzhärten
  - Nitrieren
- Thermomechanische Verfahren
- Aushärten
---

## Härten nach Volumenerwärmung

- Kohlenstoffgehalt von mindestens 0.3% (sonst Vorbehandlung nötig)
- bei kleinen Abmessungen kann eine vollständige Martensitbildung über den gesamten Querschnitt erfolgen (Durchhärtung). Bei großen Abmessungen wird die kritische Abkühlgeschwindigkeit nur bis zu einer bestimmten Tiefe erreicht (Einhärtung). 
- Höchsthärte ist allein vom Kohlenstoffgehalt abhängig

---

## Randschichthärten

- wird angewendet bei niedrig- und unlegierten Stählen mit 0.3 - 0.7% Kohlenstoff (obere Grenze zur Vermeidung von Härterissen)
- insbesondere bei Kurbelwellen, Zapfen, Walzen, Zahnrädern u.a.. Ziel dieses Verfahrens ist eine harte und verschleißbeständige Oberfläche bei zähem Kern. 
- Randschicht des Werkstückes auf Härtetemperatur erhitzt und durch Abschrecken gehärtet. 

---

## Verfahren

Das [Randschichthärten](http://wiki.arnold-horsch.de/index.php/Oberfl%C3%A4chenh%C3%A4rteverfahren) ist mit folgenden Verfahren möglich:

- Flammhärten
- Induktionshärten
- Strahlhärten (Elektronenstrahl- und Laserhärten)
- Tauchhärten 

![bg right fit 55%](http://wiki.arnold-horsch.de/images/3/36/Flamm-1.png)

![bg vertical fit 55%](http://wiki.arnold-horsch.de/images/c/c8/Induktion-1.png)

---

# Fragen?