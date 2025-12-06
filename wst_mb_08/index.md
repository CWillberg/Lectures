---
marp: true

theme: default
header: 'Ermüdung und Verschleiß'
footer: ''
backgroundImage: url('../assets/styles/background.png')
title: Ermüdung und Verschleiß
author: Christian Willberg
---

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

![bg right 60%](../assets/QR/wst_mb_08.png)

Kontakt: christian.willberg@h2.de  
Teile des Skripts sind von Prof. Dr.-Ing. Jürgen Häberle übernommen  

---

<!--paginate: true-->




# Lernziele

Nach dieser Vorlesung können Sie:

- Ermüdungsmechanismen erkennen und erklären
- Wöhlerdiagramme lesen und interpretieren
- Unterschiedliche Verschleißarten unterscheiden
- Gegenmaßnahmen zur Vermeidung von Ermüdung und Verschleiß benennen

---

# Teil 1: Ermüdung

---

# Ermüdung

<details>
<summary>Was ist Ermüdung?</summary>

<img src="https://upload.wikimedia.org/wikipedia/commons/7/7e/Sleeping_students.jpg" alt="Alternative text" width="500">

</details>

---

## Definition: Ermüdung

**Ermüdung** ist das fortschreitende Versagen eines Materials unter zyklischer (wiederholter) Belastung.

**Wichtig:**
- Belastung liegt **unterhalb** der Zugfestigkeit
- Versagen tritt nach vielen Lastzyklen auf
- Beginnt mit mikroskopisch kleinen Rissen

**Alltagsbeispiel:** Büroklammer mehrfach hin- und herbiegen

---

## Arten der Ermüdung

- Tritt typischerweise bei zyklischer Belastung auf
  - **Isotherme mechanische Ermüdung**
    - [Oszillierende Last](https://www.youtube.com/watch?v=_qVXkAWtH60)
    - Flugzeugrümpfe (Druckaufbau und -abfall)
  - **Thermische Ermüdung**
    - Öfen, Heizelemente
  - **Thermomechanische Ermüdung**
    - Hochdruckbehälter
  - **Elektrothermische Ermüdung**
    - Stromleiter (Glühfäden)

---



![bg 60%](https://leichtbau.dlr.de/wp-content/uploads/2021/11/Abbildung-2_Innovationsbericht_Wasserstofftank_CG06.png)

---

## Ermüdungsmechanismus

- Die Belastung liegt unterhalb der Streckgrenze $R_{p0,2}$
  - > _Erinnerung: Was bedeutet $R_{p0,2}$?_
  - $R_{p0,2}$ = 0,2% Dehngrenze (Spannung bei 0,2% plastischer Dehnung)
- Spannungs-Konzentrationen entstehen an:
  - Materialfehlern (Poren, Mikrorisse)
  - Im Kristall (Versetzungen, Fehlstellen)
- Zunächst bilden sich unter wechselnder Last lokal zufällige Bereiche plastischer Verformung
- Diese Punkte repräsentieren Spannungs-Konzentrationsbereiche, die sich mit der Zeit vergrößern und zu Bruch führen können

[Erklärvideo](https://www.youtube.com/watch?v=o-6V_JoRX1g)

---

## Drei Phasen der Ermüdung

1. **Rissinitiierung** (ca. 90% der Lebensdauer)
   - Bildung von Mikrorissen an Fehlstellen

2. **Rissausbreitung** (ca. 10% der Lebensdauer)
   - Langsames Wachstum des Risses
   - Sichtbar als "Rastlinien" auf der Bruchfläche

3. **Restgewaltbruch**
   - Spontanes Versagen wenn Restquerschnitt zu klein

---

![bg fit](https://upload.wikimedia.org/wikipedia/commons/1/1c/Woehlerlinie.png)
![bg fit 80%](https://upload.wikimedia.org/wikipedia/commons/6/64/Spgs-Dehnungs-Kurve_Dehngrenze.svg)

---

## Das Wöhlerdiagramm - Grundlagen

**Was zeigt das Wöhlerdiagramm?**
- X-Achse: Anzahl der Lastzyklen N (logarithmisch)
- Y-Achse: Spannungsamplitude σ (oft logarithmisch)

**Drei wichtige Bereiche:**
- **Kurzzeitfestigkeit (K):** N < 10⁴
- **Zeitfestigkeit (Z):** 10⁴ < N < 10⁶
- **Dauerfestigkeit (D):** N > 10⁶

---

## Wöhlerdiagramm - Interpretation

**Was bedeutet die Kurve?**
- Höhere Spannung → kürzere Lebensdauer
- Unterhalb der Dauerfestigkeitsgrenze: theoretisch unendliche Lebensdauer
- **Achtung:** Gilt nur für den getesteten Werkstoff unter definierten Bedingungen!

**Praktische Anwendung:**
- Dimensionierung von Bauteilen
- Lebensdauervorhersage
- Werkstoffauswahl

---

## Spannungsverhältnis und Mittelspannung

**Spannungsverhältnis:**
$$R = \frac{\sigma_u}{\sigma_o}$$

**Mittelspannung:**
$$\sigma_m=\frac{\sigma_u+\sigma_o}{2}$$

**Spannungsamplitude:**
$$\sigma_a=\frac{\sigma_o-\sigma_u}{2}$$

$\sigma_o$ - Oberspannung
$\sigma_u$ - Unterspannung

![bg right 90%](../assets/Figures/sinuskurven_mit_offset.png)

---

## Verschiedene Belastungsfälle

| Belastungsfall | R-Verhältnis | Beispiel |
|----------------|--------------|----------|
| Wechselbelastung | R = -1 | Biegewelle |
| Schwellbelastung | 0 < R < 1 | Zugfeder |
| Zugschwell | R = 0 | Seil mit Eigengewicht |
| Druckschwell | R = ∞ | Druckfeder |

**Merke:** Je höher die Mittelspannung, desto niedriger die ertragbare Amplitude!

---

## Rechenbeispiel: Spannungsberechnung

**Gegeben:**
- Oberspannung: $\sigma_o = 200$ MPa
- Unterspannung: $\sigma_u = -100$ MPa

**Gesucht:**
- Spannungsverhältnis R
- Mittelspannung $\sigma_m$
- Spannungsamplitude $\sigma_a$

---

## Lösung

$$R = \frac{\sigma_u}{\sigma_o} = \frac{-100}{200} = -0{,}5$$

$$\sigma_m = \frac{\sigma_u + \sigma_o}{2} = \frac{-100 + 200}{2} = 50 \text{ MPa}$$

$$\sigma_a = \frac{\sigma_o - \sigma_u}{2} = \frac{200-(-100)}{2} = 150 \text{ MPa}$$

**Interpretation:** Wechselbelastung mit Zugmittelspannung

---

![bg](https://www.ing-hanke.de/wp-content/uploads/2022/05/Fatigue_Bereiche.jpg)

---

## Dauerfestigkeitsschaubilder

**Zweck:** Darstellung der zulässigen Spannungen in Abhängigkeit von Mittelspannung und Amplitude

**Zwei Haupttypen:**
- Haigh-Diagramm
- Smith-Diagramm

Beide nach DIN 50100 empfohlen

---

## Haigh-Diagramm

**Achsen:**
- X-Achse: Mittelspannung $\sigma_m$
- Y-Achse: Spannungsamplitude $\sigma_a$

**Interpretation:**
- Jede Kurve repräsentiert eine Lastzyklenzahl
- Bereich innerhalb der Kurve: sicher
- Bereich außerhalb: Versagen

![bg right 90%](https://www.tec-science.com/wp-content/uploads/2021/03/de-dauerschwingversuch-haigh-diagramm-erstellung.jpg)

---

## Haigh-Diagramm - Anwendung

![](https://www.tec-science.com/wp-content/uploads/2021/03/de-dauerschwingversuch-haigh-diagramm-spannungsverhaeltnis.jpg)

**Linien konstanten R-Verhältnisses** verlaufen als Geraden durch den Ursprung

---

## Smith-Diagramm

**Aufbau:**
- X-Achse: Mittelspannung $\sigma_m$
- Y-Achse: Ober- und Unterspannung $\sigma_o$, $\sigma_u$

**Konstruktion:**
- Winkelhalbierende eintragen
- Oben und unten (parallele Linien) → statische Druck- und Zugfestigkeit
- Kurven werden aus Wöhlerexperiment mit verschiedenen R bestimmt

![bg right 80%](https://www.ing-hanke.de/wp-content/uploads/2020/03/Dauerfestigkeitsschaulbild_Smith-Diagramm.jpg)

---

## Smith vs. Haigh - Vergleich

| Eigenschaft | Smith-Diagramm | Haigh-Diagramm |
|-------------|----------------|----------------|
| Y-Achse | $\sigma_o$, $\sigma_u$ | $\sigma_a$ |
| Anschaulichkeit | Besser für Praktiker | Besser für Rechnung |
| Darstellung R | Geraden durch Schnittpunkt mit Winkelhalbierender | Geraden durch Ursprung |
| Verwendung | Konstruktion | Wissenschaft |

---

## Begriffsdefinition

- **Lebensdauer:** Anzahl der Zyklen bis zum Versagen
- **Ermüdungsriss:** Durch wiederholte Belastung entstandener Riss
- **Ermüdungsbruch:** Endgültiges Versagen
- **Low Cycle Fatigue (LCF):** N < 10⁴
- **High Cycle Fatigue (HCF):** 10⁴ < N < 10⁶
- **Very High Cycle Fatigue (VHCF):** N > 10⁶

![bg right fit 60%](https://upload.wikimedia.org/wikipedia/commons/9/96/Pedalarm_Bruch.jpg)
![bg vertical 60%](https://farm6.staticflickr.com/5522/12140479094_6f746014ab_z.jpg)

---

## Einflussfaktoren auf die Ermüdungsfestigkeit

1. **Werkstoff**
   - Festigkeit, Zähigkeit, Mikrostruktur

2. **Bauteilgeometrie**
   - Kerben, Übergänge, Querschnittsänderungen

3. **Oberfläche**
   - Rauheit, Eigenspannungen, Verfestigung

4. **Umgebung**
   - Temperatur, Korrosion, Frequenz

---

## Kerbwirkung

**Formzahl:** $\alpha_k = \frac{\sigma_{max}}{\sigma_{nenn}}$

**Kerbwirkungszahl:** $\beta_k = \frac{\sigma_{D,glatt}}{\sigma_{D,Kerbe}}$

**Wichtig:**
- Kerben konzentrieren Spannungen
- $\beta_k$ ist immer < $\alpha_k$ (Werkstoff kann sich lokal plastisch verformen)
- Vermeidung scharfer Übergänge in der Konstruktion!

![bg right 90%](https://www.maschinenbau-wissen.de/bilder/skripte/mechanik/kerbspannung-01.PNG)

---

## Gegenmaßnahmen gegen Ermüdung

**Konstruktiv:**
- Kerbwirkung verringern (Radien vergrößern)
- Spannungskonzentrationen vermeiden
- Konstruktion anpassen, damit lokale Spannung zulässige Grenzen nicht überschreitet

**Werkstofftechnisch:**
- Materialanpassung (höhere Festigkeit)
- Wärmebehandlung

---

**Oberflächenbehandlung:**
- Glatte Oberfläche (polieren)
- Druckeigenspannungen einbringen (z.B. Kugelstrahlen)

**Betrieb:**
- Regelmäßige Inspektionen


![bg fit right](https://www.ing-hanke.de/wp-content/uploads/2020/03/Abminderungsfaktoren_Dauerfestigkeit_Rauheit_Sproedheit_Stahl.jpg)

---

## Rechenbeispiel: Lebensdauerabschätzung

**Gegeben:**
- Bauteil aus Stahl mit Dauerfestigkeit $\sigma_D = 300$ MPa bei N = 10⁷
- Wöhlerlinie: $\sigma_a \cdot N^k = C$ mit k = 0,1
- Betriebsspannung: $\sigma_a = 400$ MPa

**Gesucht:** Erwartete Lebensdauer N

---

## Lösung

**Aus Dauerfestigkeitspunkt:**
$$C = \sigma_D \cdot N^k = 300 \cdot (10^7)^{0{,}1} = 300 \cdot 10^{0{,}7} = 1505$$

**Für Betriebsspannung:**
$$N = \left(\frac{C}{\sigma_a}\right)^{1/k} = \left(\frac{1505}{400}\right)^{10} = 3{,}76^{10} \approx 4{,}1 \cdot 10^5 \text{ Zyklen}$$

**Interpretation:** Das Bauteil versagt voraussichtlich nach ca. 410.000 Zyklen

---

## Zusammenfassung Teil 1: Ermüdung

- Ermüdung = Versagen unter zyklischer Belastung unterhalb der Streckgrenze
- Wöhlerdiagramm beschreibt Spannung vs. Lastzyklenzahl
- Dauerfestigkeitsschaubilder (Smith/Haigh) berücksichtigen Mittelspannung
- Drei Phasen: Initiierung, Ausbreitung, Restgewaltbruch
- Gegenmaßnahmen: Konstruktion, Werkstoff, Oberfläche, Inspektion

---

# Teil 2: Verschleiß

---

## Definition: Verschleiß

**Verschleiß** ist eine infolge Reibung eintretende bleibende Form- und Stoffveränderung an der Oberfläche von Festkörpern

**Wichtig:**
- Technologisch nicht beabsichtigt
- Stellt funktionelles Versagen dar
- Führt zu Maßänderungen und Funktionsverlust

---

## Einflussfaktoren auf Verschleiß

Beeinflusst durch:
- **Reibkörperpaarung** (z.B. Metall-Metall, Metall-Kunststoff)
- **Beschaffenheit der Grenzschichten** und des Zwischenstoffes (Schmierstoff)
- **Art des Bewegungsablaufes** (Gleiten, Rollen, Stoßen)
- **Höhe der Belastung** (Flächenpressung, Geschwindigkeit)

---

## Vier Hauptverschleißarten

**Adhäsiver Verschleiß**
**Abrasiver Verschleiß**
**Oberflächenzerrüttung**
**Tribooxidation**

Oft treten mehrere Mechanismen gleichzeitig auf!

---

## Adhäsiver Verschleiß (Fressverschleiß)

**Mechanismus:**
- Tritt bei mangelnder Schmierung auf
- Bei hoher Flächenpressung haften Flächen aneinander (Kaltverschweißung)
- Tritt Gleiten ein, werden Randschichtteilchen herausgerissen
- Es entstehen Löcher und schuppenartige Materialteilchen
- Diese haften oft an der Gleitfläche des härteren Partners

**Typische Schäden:** Fressen, Materialübertragung, "Verschweißungen"

---

## Oberflächenkennwerte / Oberflächenrauheit

**Wichtige Parameter:**
- **$R_a$:** Arithmetischer Mittenrauwert
- **$R_z$:** Gemittelte Rautiefe
- **$R_t$:** Gesamthöhe des Profils

**Regel:** Je glatter die Oberfläche, desto geringer der Verschleiß (bei ausreichender Schmierung!)

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/3/31/Rt%2BRv%2BRp.gif)


---

## Abrasiver Verschleiß (Furchverschleiß)

**Mechanismus:**
- Harte Teilchen eines Schmierstoffs oder
- Rauheitsspitzen eines Reibungspartners
- dringen in Randschicht ein
- → es kommt zu Ritzung und Mikrozerspanen
- Auch: Furchverschleiß oder Erosionsverschleiß

**Gegenmaßnahmen:**
- Richtige Wahl der Werkstoffpaarung
- Metall-Kunststoff- oder Metall-Keramik-Paarungen
- Schmierung filtern

---

## Praxisbeispiel: Windenergie

- Sand im Wind "schmirgelt" die Rotorblätter ab
- Oberfläche wird rau
- Aerodynamischer Wirkungsgrad sinkt
- Energieverluste von bis zu 20%!

**Lösung:**
- Beschichtungen
- Regelmäßige Wartung

![bg right 100%](https://encyclopedia.pub/media/item_content/202209/6333de2d03ef5energies-15-05672-g008.png)

---

## Oberflächenzerrüttung

**Mechanismus:**
- Wechselnde oder schwellende mechanische Spannungen an der Oberfläche
- Ähnlich zur Ermüdung (zyklische Belastung)
- Führt zu Ermüdung oder Kriechen des Materials
- Material "ermüdet" und blättert ab

**Typisch bei:**
- Wälzlagern
- Zahnrädern
- Rad-Schiene-Kontakt

---

## Tribooxidation (Reibkorrosion)

- Bildung von Zwischenschichten (z.B. Oxidschichten)
- Durch chemische Reaktion
- Mechanische Zerstörung durch Bewegung der Bauteile
- Loses, abrasives Oxidationsprodukt entsteht

---
## Tribooxidation (Reibkorrosion)
**Besonderheit:**
- Tritt fast immer zusammen mit adhäsivem Verschleiß auf
- Auch "Passungsrost" genannt

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/2/27/Corrosion_de_contact_sur_un_bout_d%27arbre_01.jpg)

---

## Übersicht Verschleißarten nach Beanspruchung

| Verschleißart | Erscheinung | Primäres Vorkommen |
|---------------|-------------|-------------------|
| **Gleitverschleiß** | Rillen oder Riefen durch Abrieb, Materialübertragung oder lokales Schmelzen | Ungeschmierte Lager, Kupplungen, Bremsen |
| **Rollverschleiß** | Abblättern durch Ermüdungsrisse | Rad/Schiene, Wälzlager |
| **Pittings** | Grübchenbildung | Wälzkörper, speziell Zahnräder |

---

## Übersicht Verschleißarten (Fortsetzung)

| Verschleißart | Erscheinung | Primäres Vorkommen |
|---------------|-------------|-------------------|
| **Abrasivverschleiß** | Plastische Verformung, Erosion | Bagger, Schüttguttransport, Partikelaufprall |
| **Kavitation** | Oberflächenschädigung durch Aufprall von Dampfblasen | Wasserturbinen, Pumpen |
| **Tribooxidation** | Loses Oxidationsprodukt | Maschinenelemente mit form- oder kraftschlüssigen Verbindungen |

---

## Gleitverschleiß - Quantifizierung

**Verschleißpfadverhältnis:**
$$W = k \cdot \frac{F_N}{A} \cdot 10^6$$

Wobei:
- $k$ = spezifischer Verschleißkoeffizient in $\left[\frac{mm^3}{Nm}\right]$ (lastunabhängig, materialspezifisch)
- $F_N$ = Normalkraft
- $A$ = tragende Fläche

Beeinflusst durch:
- Mittlere Rauheitstiefe $R_z$
- Anpressdruck
- Gleitgeschwindigkeit

![bg right fit 90%](https://media.springernature.com/original/springer-static/image/chp:10.1007%2F978-3-658-17851-2_4/MediaObjects/299062_3_De_4_Fig17_HTML.gif)

---

## Rechenbeispiel: Verschleißberechnung

**Gegeben:**
- Gleitlager mit $k = 2 \cdot 10^{-6}$ mm³/(Nm)
- Normalkraft: $F_N = 1000$ N
- Tragende Fläche: $A = 10$ cm² = 1000 mm²
- Gleitweg: $s = 1000$ m

**Gesucht:** Volumenverschleiß $V$

---

## Lösung

**Verschleißintensität:**
$$W = k \cdot \frac{F_N}{A} \cdot 10^6 = 2 \cdot 10^{-6} \cdot \frac{1000}{1000} \cdot 10^6 = 2 \text{ mm}^3/\text{m}$$

**Volumenverschleiß:**
$$V = W \cdot s = 2 \cdot 1000 = 2000 \text{ mm}^3 = 2 \text{ cm}^3$$

**Interpretation:** Nach 1000 m Gleitweg sind 2 cm³ Material abgetragen

---

## Wälzverschleiß

**Besonderheit:**
- [Wälzen](https://link.springer.com/chapter/10.1007/978-3-658-17851-2_6) kombiniert Rollen und Gleiten (Schlupf)
- Kleine Kontaktfläche → hohe Flächenpressung (Hertzsche Pressung)
- Führt zu Oberflächenzerrüttung

**Schädigungsmechanismen:**
- Plastische Verformung
- Gefügeänderungen
- Rissbildung und -ausbreitung

![bg right fit 70%](https://media.springernature.com/full/springer-static/image/chp%3A10.1007%2F978-3-658-17851-2_6/MediaObjects/299062_3_De_6_Fig1_HTML.gif?as=webp)

---

## Schmierung bei Wälzverschleiß

**Spezifische Schmierfilmdicke:**
$$\lambda = \frac{h_{min}}{R_q}$$

Wobei:
- $h_{min}$ = minimale Schmierfilmdicke
- $R_q$ = quadratischer Mittenrauwert

![bg right fit 60%](https://media.springernature.com/full/springer-static/image/chp%3A10.1007%2F978-3-658-17851-2_6/MediaObjects/299062_3_De_6_Fig10_HTML.gif?as=webp)


---

**Schmierungszustände:**
- $\lambda < 1$: Grenzschmierung (Festkörperkontakt)
- $1 < \lambda < 3$: Mischreibung
- $\lambda > 3$: Hydrodynamische Schmierung (ideal)

![bg right fit 60%](https://media.springernature.com/full/springer-static/image/chp%3A10.1007%2F978-3-658-17851-2_6/MediaObjects/299062_3_De_6_Fig10_HTML.gif?as=webp)

---

## Kavitation - Physikalischer Hintergrund

[Video](https://www.youtube.com/watch?v=J0H0Nw44oA4)

<details>
<summary>Physikalische Ursache?</summary>
<div>

**Bernoulli-Prinzip:**
- Statischer Druck ist abhängig von der Geschwindigkeit eines Fluids
- Bei Unterschreitung des Verdampfungsdrucks bilden sich Dampfblasen
- Diese Blasen laufen in Bereiche mit höherem Druck
- Blasen kondensieren schlagartig
- → Druck- und Temperaturspitzen treten auf (bis zu 1000 bar!)
</div>
</details>

---

## Kavitationsschäden

- Lokale Belastungen an der Oberfläche (Mikrojet mit hoher Geschwindigkeit)
- Bereiche ermüden und platzen ab ("Lochfraß")

**Beeinträchtigung:**
- Wirkungsgradreduktion
- Korrosion (an aufgerauter Oberfläche)
- Bereiche wo Risse initiieren können
- Lärm und Vibrationen

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/b/bf/Cavitation.jpg)

---

## Kavitation - Gegenmaßnahmen

1. **Konstruktiv:**
   - Vermeidung von Bereichen niedriger Drücke
   - Strömungsoptimierung

2. **Material:**
   - Kavitationsbeständige Werkstoffe
   - Beschichtungen

3. **Betriebsweise:**
   - Druck erhöhen
   - Temperatur senken
   - Drehzahl anpassen

---

## Reibkorrosion (Passungsrost)

**Mechanismus:**
- Kleine Gleitbewegungen zwischen zwei hochbelasteten Bauteilen
- Meist bei zu geringem Übermaß → lockere Passungen
- Oxidationsprodukt wirkt abrasiv
- Verstärkt den Verschleiß

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/2/27/Corrosion_de_contact_sur_un_bout_d%27arbre_01.jpg)

---

**Erkennungsmerkmale:**
- Rostfarbenes Pulver (bei Stahl: Fe₃O₄)
- An Passflächen (Wellen, Naben)

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/2/27/Corrosion_de_contact_sur_un_bout_d%27arbre_01.jpg)

---

## Gegenmaßnahmen bei Reibkorrosion

1. **Passungsanpassung:**
   - Ausreichendes Übermaß
   - Feste Pressverbindung

2. **Materialwahl:**
   - Edelstähle
   - Beschichtungen

3. **Konstruktiv:**
   - Vermeidung von Relativbewegungen
   - Schrumpfverbindungen statt Klebverbindungen

---

4. **Montage:**
   - Saubere, trockene Oberflächen
   - Montagepaste verwenden

---

## Werkstoffpaarungen

**Grundprinzip:** "Hart gegen weich"

| Paarung | Verschleißverhalten | Anwendung |
|---------|---------------------|-----------|
| Stahl-Stahl | Ungünstig (Adhäsion) | Mit Schmierung |
| Stahl-Bronze | Gut | Gleitlager |
| Stahl-Kunststoff | Sehr gut | Trockenlauf möglich |
| Keramik-Stahl | Gut bei hohen Temperaturen | Hochleistung |

---

## Vergleich: Ermüdung vs. Verschleiß

| Eigenschaft | Ermüdung | Verschleiß |
|-------------|----------|------------|
| Ursache | Zyklische Belastung | Reibung/Kontakt |
| Ort | Volumen und Oberfläche | Nur Oberfläche |
| Schädigung | Rissbildung | Materialabtrag |
| Versagen | Plötzlich (Bruch) | Graduell (Maßänderung) |
| Vorhersage | Mit Wöhlerdiagramm | Mit Verschleißraten |

---

## Zusammenfassung Teil 2: Verschleiß

- Verschleiß = Oberflächenschädigung durch Reibung
- Vier Hauptarten: Adhäsiv, Abrasiv, Oberflächenzerrüttung, Tribooxidation
- Quantifizierung über Verschleißkoeffizient möglich
- Gegenmaßnahmen: Werkstoffwahl, Schmierung, Konstruktion
- Kavitation als Sonderfall bei Strömungen

---

## Praktische Anwendung: Verschleißschutz

**Konstruktive Maßnahmen:**
- Verschleißteile austauschbar gestalten
- Schmierungssystem vorsehen
- Oberflächenrauheit optimieren

**Betriebsmaßnahmen:**
- Regelmäßige Schmierung
- Überwachung (Condition Monitoring)
- Rechtzeitiger Austausch

**Wirtschaftlichkeit:** Vorbeugung ist günstiger als Reparatur!

---

## Verständnisfragen

1. Warum versagt ein Material bei Ermüdung unterhalb der Streckgrenze?
2. Was ist der Unterschied zwischen Dauerfestigkeit und Zeitfestigkeit?
3. Welche Verschleißart tritt bei einem ungeschmierten Lager auf?
4. Wie kann man Kavitation in Pumpen verhindern?
5. Warum ist die Oberflächenrauheit beim Verschleiß wichtig?


---

## Zusammenfassung Gesamtvorlesung

**Ermüdung:**
- Versagen durch zyklische Belastung
- Wöhlerdiagramm als zentrales Werkzeug
- Drei Phasen: Initiierung, Ausbreitung, Bruch

**Verschleiß:**
- unerwünschte Oberflächenschädigung durch Reibung


**Gemeinsam:** Beide führen zu Bauteilversagen und sind durch geeignete Maßnahmen vermeidbar oder minimierbar


---

## Fragen?

![bg right 70%](https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Question_mark_alternate.svg/1200px-Question_mark_alternate.svg.png)

**Kontakt:**
christian.willberg@h2.de

**Sprechstunde:** Nach Vereinbarung


![bg right](https://upload.wikimedia.org/wikipedia/commons/b/bd/Smith2.svg)