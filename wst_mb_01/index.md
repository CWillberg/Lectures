---
marp: true

theme: h2
header: ''
footer: ''

title:  Grundlagen - Werkstofftechnik
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


##  Grundlagen - Werkstofftechnik
Prof. Dr.-Ing.  Christian Willberg [![ORCID](../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)
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

**Rahmen**


- Essen oder Trinken sind okay, aber leise
- Probleme:
    - bei der Kinderbetreuung
    - Nachteilsausgleich
    - Diskriminierung
    - sprachlich
    - ...
- Fragen

![bg right 50%](../assets/QR/wst_mb_01.png)

---
## Organisation
- [2 Praktika](https://moodle2.hs-magdeburg.de/moodle/course/view.php?id=4605)
    - Zugprüfung
    - Härteprüfung
    - Teilnahme ist Zulassungsvorraussetzung zur Prüfung
- Prüfung 40 Minuten
- Fragen per E Mail; Konsultationen bei Bedarf

---

## Inhalte nach Modulhandbuch

- Einteilung von Werkstoffen
- Materialeigenschaften
- Werkstoffstruktur, Gefüge, Legierungen, Gitterbaufehler
- ideale und reale Zustandsdiagramme, Gleichgewichts- und
Ungleichgewichtszustände
- Wärmebehandlung, Härteverfahren
- Labor: Zugversuch, Härteprüfung
---



## Werkstoffe



Was sind Werkstoffe?


[Werkstoffe im engeren Sinne nennt man Materialien im festen Aggregatzustand, aus denen Bauteile und Konstruktionen hergestellt werden können.](https://de.wikipedia.org/wiki/Werkstoff)



---
## Anwendunggebiete

- Metalle
  - Eisen, Stahl, Gusseisen
  - Nicht Eisen
- Kunststoffe
- Keramiken
- Verbundwerkstoffe


---

## Gußeisen - Stahl

![bg 60% right](https://upload.wikimedia.org/wikipedia/commons/b/bf/Gu%C3%9Fteil_2007.gif)

![bg 60% vertical](https://upload.wikimedia.org/wikipedia/commons/2/2e/LPD_22_MAR_2010.jpg)

---

## Nicht Eisen Metalle

- Kupfer ist ein sehr guter elektrischer und thermischer Leiter

![bg right 70%](https://images-of-elements.com/copper.jpg)

---

- Magnesium findet im Leichtbau Anwendung 
- Titan und Titanlegierungen 
    - hohe Festigkeit und Warmfestigkeit
    - Korrosionsbeständig
- Nickel
    - Korrosionsbeständigkeit
    - hohe Warmfestigkeit

![bg right 30%](https://images-of-elements.com/magnesium.jpg)
![bg right 30% vertical](https://images-of-elements.com/titanium-crystal.jpg)
![bg right 30%](https://images-of-elements.com/nickel.jpg)

---

## Keramiken

![bg right](https://upload.wikimedia.org/wikipedia/commons/c/ca/Langstab-Isolator_110_kV.jpg)


---

## Gläser

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/1/15/Magnifying_Glass_Photo.jpg)

---

## Faserverbundwerkstoffe

![bg right fit](https://leichtbau.dlr.de/wp-content/uploads/2022/03/boom_blank_be.png)

---

# Mechanische Eigenschaften
Was sind wichtige Eigenschaften aus Sicht einer Ingenieurin / eines Ingenieurs?


---

# Mechanische Eigenschaften
Was sind wichtige Eigenschaften aus Sicht einer Ingenieurin / eines Ingenieurs?
- Materialverhalten ohne Schädigung
- Ermüdungsverhalten
- Verschleißverhalten
- Temperaturfestigkeit
- Festigkeit
- wann tritt eine Schädigung auf
- ...

---

## Konzept Spannung - Dehnung
- Detaliert in der technischen Mechanik
$\varepsilon$ - Dehnung
$\sigma$ - Mechanische Spannung

---

## Dehnungen 1D
$$\varepsilon = \frac{\Delta l}{l}$$

Beispiel:
$l_0 = 1m$
$l_1 = 1.01m$
$$\varepsilon = \frac{l_1-l_0}{l_0}=0.01\rightarrow 1\%$$

---
## Spannungen 1D

$$\sigma = \frac{F}{A}$$

Beispiel:
$F = 100N$
$A = 20mm^2$
$$\sigma = \frac{F}{A} = \frac{100 N}{20 mm^2} = 5 \frac{N}{mm^2}$$

---

# Mehr Dimensionalität

---

## Symmetrien
- isotropie
- transversale isotropie
- orthotropie
- ...
- anisotropie
![bg right 80%](../assets/Figures/xyz.png)

<!---
- Diskussion; Eigenschaften können richtungsabhängig sein
- Praxisbeispiele
-->

---

## Mechanische Eigenschaften

- die **reversible** Verformung, bei der sofort bzw. eine bestimmte Zeit nach dem Einwirken der äußeren Belastung der verformte Werkstoff seine ursprüngliche Form zurückerhält: elastische und viskoelastische Verformung;

- die **irreversible (bleibende)** Verformung, bei der die Formänderung auch nach dem Einwirken der äußeren Belastung erhalten bleibt: plastische und viskose Verformung;

- der Bruch, d.h. eine durch Entstehen und Ausbreiten von Rissen bewirkte Trennung des Werkstoffes.

---
## Beispiel Stahl

![bg fit right:50%](../assets/Figures/Stress_strain_ductile.svg)

[Kurvenbestimmung](https://youtu.be/WWAb7Q5DAYw?si=fcnLckvNurSh0LC5)

[Datenblatt Stahl](https://www.stauberstahl.com/fileadmin/Downloads/werkstoffe/Werkstoff-1.2842-Datenblatt.pdf)

<div style="position: absolute; bottom: 10px; right: 0px; color: blue; font-size: 20px;"> 
    <a href="https://commons.wikimedia.org/w/index.php?curid=89891144" style="color: blue;">By Nicoguaro - Own work, CC BY 4.0</a>
</div>

---
# Materialverhalten - reversibel
## Elastizität
- reversibel, energieerhaltend
- Hooksches Gesetz 1D
Normalspannung $\sigma = E\varepsilon$
Schubspannung $\tau = G\gamma$

---

## Grundlagen

- Normaldehnung [-]
$\varepsilon_{mechanisch} = \frac{l - l_0}{l_0}$

- Normalspannung $\left[\frac{N}{m^2}\right]$, $[Pa]$
$\sigma = \frac{F}{A}=E\varepsilon$
E - Elastizitätsmodul, Young's modulus $\left[\frac{N}{m^2}\right]$

- Relevant bspw. bei Verformungsanalysen

![bg right:25%](../assets/Figures/Normalspannung.gif)


---


## Grundlagen - Querkontraktion

- Querkontraktionszahl [-]
- $\nu = -\frac{\varepsilon_y}{\varepsilon_x}$
für homogene Werkstoffe $0\leq\nu\leq 0.5$
für heterogene Werkstoffe sind anderen Konstellationen denkbar

![bg fit right:25%](https://upload.wikimedia.org/wikipedia/commons/6/65/Querkontraktion_am_einachsig_gezogenen_Stab.png)

- Relevant bspw. bei Pressverbindungen

---

## Grundlagen - Schub

- Schubdehnungen [-]
$\varepsilon = \frac12(\frac{u_x}{l_0}+\frac{u_y}{b_0})=\frac{\gamma}{2}$

- Schubspannung $\left[\frac{N}{m^2}\right]$, $[Pa]$
$\tau = \frac{F_s}{A}= G\gamma$

- Normal- und Schubspannungen sind nicht kompatibel; daher die Vergleichsspannungen 
- G - [Schub-](https://de.wikipedia.org/wiki/Kompressionsmodul#Umrechnung_zwischen_den_elastischen_Konstanten_isotroper_Festk%C3%B6rper)-, Gleitmodul, Shear modulus $\left[\frac{N}{m^2}\right]$
$G = \frac{E}{2(1+\nu)}$


![bg right:25%](../assets/Figures/Schubspannung.gif)


- Relevant bspw. bei Torsion (Antriebsstränge, Drehfedern)

---

## Grundlagen - Kompression

$\sigma_h = p = -K \cdot \frac{\Delta V}{V_0}$

$\varepsilon_v = \frac{\Delta V}{V_0} = \varepsilon_1 + \varepsilon_2 + \varepsilon_3$

[Kompressionsmodul](https://de.wikipedia.org/wiki/Kompressionsmodul#Umrechnung_zwischen_den_elastischen_Konstanten_isotroper_Festk%C3%B6rper) $K = \frac{E}{3(1-2\nu)}$

- Relevant bspw. bei Hydrauliken

![bg right:25%](../assets/Figures/Kompression.gif)


---


| Werkstoff                         | E [GPa]   | G [GPa] | ν [-]     |
|:----------------------------------|:----------|:--------|:----------|
| Stahl unlegiert                   | 200       | 77      | 0.30      |
| Titan                             | 110       | 40      | 0.36      |
| Kupfer                            | 120       | 45      | 0.35      |
| Aluminium                         | 70        | 26      | 0.34      |
| Magnesium                         | 45        | 17      | 0.27      |
| Wolfram                           | 360       | 130     | 0.35      |
| Gusseisen mit lamellarem Graphit  | 120       | 60      | 0.25      |
| Thermoplaste/Duromere             | 2-5       | 1-2     | ca. 0.35  |
| Elastomere                        | 0.1       | 0.03    | 0.45-0.49 |
| Sperrholz                         | 4-16      | -       | -         |


---


## Steifigkeiten
<details>
<summary>Wie Materialeigenschaften den Steifigkeiten zusammen?</summary>

- Material $\cdot$ Querschnitte = Steifigkeit
- Dehn-, Normalsteifigkeit = $EA$
- Biegesteifigkeit = $EI$
- Torsionssteifigkeit = $GI_P$

</details>

![bg fit right:50%](../assets/Figures/IWES_test.jpg)
<div style="position: absolute; bottom: 10px; left: 520px; color: blue; font-size: 20px;"> 
    <a href="https://doi.org/10.3390/en14092451" style="color: blue;">Bildreferenz</a>
</div>


---


## Viskoses Verhalten

- irreversibel
- zeitabhängig, dehnratenabhängig

Federmodel $\sigma = E\epsilon$ 
 - Elastischer Anteil
 - Dargestellt durch Federlemente
<div style="position: absolute; bottom: -10px; left: 500px; color: blue; font-size: 20px;"> 
    <img src="../assets/Figures/spring.svg" alt="Presentation link" style="height:550px;width:auto;vertical-align: top;background-color:transparent;">
</div>

<div style="position: absolute; bottom: -150px; left: 500px; color: blue; font-size: 20px;"> 
    <img src="../assets/Figures/damper.svg" alt="Presentation link" style="height:550px;width:auto;vertical-align: top;background-color:transparent;">
</div>


Dämpfer  $\sigma = \eta\dot{\epsilon}=\eta\frac{\partial \epsilon}{\partial t}$ 
- Viskoser Anteil
- Dargestellt durch Dämpferelemente


---
- schnelle Belastung -> Verhalten ist elastisch
- langsame Belastung -> Material fließt
- [schnelle Belastung](https://en.wikipedia.org/wiki/File:Sillyputty.ogv)



![bg right:30% fit](https://upload.wikimedia.org/wikipedia/commons/f/f3/Silly_putty_dripping.jpg)

---

## Härte

Widerstand eines Werkstoffs gegen das Eindringen eines härteren Prüfkörpers

**Abhängigkeit von:**
- Bindungsart und Bindungsstärke
- Kristallstruktur
- Gefüge und Korngröße
- Legierungselemente
- Wärmebehandlung

**Bedeutung:**
- Verschleißbeständigkeit
- Bearbeitbarkeit

---

# Materialverhalten - irreversibel

---

## Festigkeit

[Die Festigkeit eines Werkstoffes beschreibt die Beanspruchbarkeit durch mechanische Belastungen, bevor es zu einem Versagen kommt, und wird angegeben als mechanische Spannung $\left[N/m^2\right]$. Das Versagen kann eine **unzulässige Verformung** sein, insbesondere eine **plastische (bleibende) Verformung** oder auch ein **Bruch**.](https://de.wikipedia.org/wiki/Festigkeit)


>Wichtig: Festigkeit $\neq$ Steifigkeit

---



## Plastizität

- [Schmieden](https://youtu.be/AxLszR6fkLM?si=k6A9aOVfQceOK9v0&t=80)
- [Walzen](https://www.youtube.com/watch?v=WOTO64HgnXc)


---


## Duktilität

### Brucheinschnürung

$$Z = \frac{A_0 - A_f}{A_0} \cdot 100\%$$


- A₀ = Ausgangsquerschnittsfläche [mm²]
- A_f = Querschnittsfläche bei Bruch [mm²]
- Z = Brucheinschnürung [%]

Die Brucheinschnürung beschreibt die **relative Querschnittsverringerung** eines Materials bei Zugbelastung bis zum Bruch.

---

## Duktilitätsbewertung

### Interpretation der Brucheinschnürung

| Z-Wert | Duktilität | Materialverhalten |
|--------|------------|-------------------|
| Z < 5% | Spröde | Keramiken, Gusseisen |
| 5% ≤ Z < 20% | Mäßig duktil | Hochfeste Stähle |
| 20% ≤ Z < 50% | Duktil | Baustähle |
| Z ≥ 50% | Sehr duktil | Reinkupfer, Aluminium |

---

## Bedeutung

**Hohe Brucheinschnürung (Z > 40%)** bedeutet:
- Material kann große plastische Verformungen ertragen
- Gute Umformbarkeit (Schmieden, Tiefziehen)
- Bruchwarnung durch sichtbare Einschnürung
- Hohe Energieabsorption vor dem Versagen

**Niedrige Brucheinschnürung (Z < 10%)** bedeutet:
- Sprödes Versagen ohne Vorwarnung
- Geringe Umformbarkeit
- Wenig Energieabsorption

---

## Zähigkeit (Brucharbeit)

![bg fit right:50%](../assets/Figures/Stress_strain_ductile.svg)


**Wahre Dehnung und Spannung**

$$\varepsilon_{true} = \ln\left(\frac{L}{L_0}\right) = \ln(1 + \varepsilon_{nom})$$

$$\sigma_{true} = \sigma_{nom} \cdot (1 + \varepsilon_{nom}) = \frac{F}{A}$$

- F = Kraft
- A = aktuelle Querschnittsfläche

---

### Zähigkeit als Energieabsorption

$$U = \int_0^{\varepsilon_f} \sigma_{true} \, d\varepsilon_{true}$$

- U = spezifische Zähigkeit [J/m³]
- ε_f = Bruchdehnung

![bg fit right:50%](../assets/Figures/Stress_strain_ductile.svg)

<div style="position: absolute; bottom: 10px; right: 0px; color: blue; font-size: 20px;"> 
    <a href="https://commons.wikimedia.org/w/index.php?curid=89891144" style="color: blue;">By Nicoguaro - Own work, CC BY 4.0</a>
</div>


---


Ein zäher Werkstoff kombiniert:
- **Hohe Festigkeit** (σ) → widersteht hohen Spannungen
- **Hohe Duktilität** (ε) → verformt sich stark vor dem Bruch

**Zähigkeit = Überlebensfähigkeit eines Materials unter extremen Bedingungen**

---

## Zähigkeitswerte typischer Materialien

| Material | Zähigkeit [MJ/m³] | Charakteristik |
|----------|-------------------|----------------|
| Glas | 0.01 | Extrem spröde |
| Gusseisen | 1-3 | Spröde |
| Hochfester Stahl | 50-100 | Fest, mäßig duktil |
| Baustahl | 100-200 | Optimal zäh |
| Aluminium | 70-200 | Leicht und zäh |
| Kupfer | 200-400 | Sehr duktil |
| Gummi | 10-100 | Elastisch-duktil |

---

## Referencen
<a id="Referenzen"></a>

Rainer Schwab: Werkstoffkunde und Werkstoffprüfung für Dummies, 2019; ISBN-10 352771538X


