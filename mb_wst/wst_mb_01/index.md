---
marp: true

theme: default
header: ''
footer: ''
backgroundImage: url('../../assets/styles/background.png')
title: Vorlesung Grundlagen Maschinenbau - Werkstofftechnik
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


## Vorlesung Grundlagen Maschinenbau - Werkstofftechnik
Prof. Dr.-Ing.  Christian Willberg<a href="https://orcid.org/0000-0003-2433-9183"><img src="../../assets/styles/ORCIDiD_iconvector.png" alt="ORCID Symbol" style="height:15px;width:auto;vertical-align: top;background-color:transparent;"></a>
Hochschule Magdeburg-Stendal

![bg right](../../assets/Figures/IWES_test.jpg)

Kontakt: christian.willberg@h2.de
Teile des Skripts sind von \
Prof. Dr.-Ing. Jürgen Häberle übernommen
<div style="position: absolute; bottom: 10px; left: 520px; color: blue; font-size: 20px;"> 
    <a href="https://doi.org/10.1007/s42102-021-00079-6" style="color: blue;">Bildreferenz</a>
</div>


---

<!--paginate: true-->

## Nützliche Links

<!-- zusammenarbeit; wir erarbeiten unsere eigene Dokumenation -->
[Skript](https://cwillberg.github.io/Werkstofftechnik/)
[Formelsammlung]( https://cwillberg.github.io/Werkstofftechnik/Formelsammlung)
TBD
[CoopSpace]()
![bg right 50%](../../assets/styles/vorlesung.png)

---

## Vorlesung

**Rahmen**


- Essen oder Trinken sind okay, aber leise
- Probleme bei der Kinderbetreuung
- Alles verbleibt in Raum!
- Fragen

![bg right 50%](../../assets/styles/vorlesung.png)

---

## Inhalte

- Werkstoffe
- Aufbau von Materialien
  - Atome und Bindungen
  - Feinstruktur
  - Mikrostruktur
- Gefüge von Werkstoffen
- Eigenschaften von Materialien
  - physikalische
  - nicht physikalische
- Zustandsdiagramme

---



## Werkstoffe


<details>
<summary>Was sind Werkstoffe?</summary>
<div>

[Werkstoffe im engeren Sinne nennt man Materialien im festen Aggregatzustand, aus denen Bauteile und Konstruktionen hergestellt werden können.](https://de.wikipedia.org/wiki/Werkstoff)
</div>
</details>


---
## Anwendunggebiete mit Bildern

- Metalle
  - Eisen Stahl
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

![bg right fit](http://www.hoogspanningsnet.com/wp-content/uploads/Eindsluitingen%20(Michel).jpg)


---

## Gläser

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/1/15/Magnifying_Glass_Photo.jpg)

---

## Faserverbundwerkstoffe

![bg right fit](https://leichtbau.dlr.de/wp-content/uploads/2022/03/boom_blank_be.png)

---

# Struktur von Werkstoffen

![bg right fit](https://wiki.arnold-horsch.de/images/6/6e/Strukturebene_Metall-2.jpg)



---

-	Atomistische Struktur (Art der atomaren Bausteine)
-	Feinstruktur (Bindungen zwischen den atomaren Bausteinen und deren geometrische An-ordnung)
-	Mikrostruktur (Gefüge – Bereiche geometrischer Anordnung, die im Werkstoffinnern durch Grenzflächen voneinander getrennt sind)
-	Makrostruktur (Grobstruktur – Gesamterscheinung eines Werkstoffes bei der Herstellung und dem Einsatz eines Bauteils)



---

# Bindungen

## Hauptvalenzbindungen  
**Primärbindungen - hohe Bindungsenergie, starke Bindung**
-	Ionen- bzw. heteropolare Bindung 
-	Atom- bzw. homöopolare (oder kovalente) Bindung: polar (O-H) und unpolar (C-C, C-H)
-	Metallische Bindung

---

## Metallische Bindung

- Außenelektronen (Valenzelektronen) sind nur schwach gebunden 
- es bildet sich ein Gitter (periodisch angeordneten) positiver geladener Metallionen (Atomrümpfen)
- Außenelektronen  können sich innerhalb des Gitters nahezu frei bewegen, sogennantes **Elektronengas** 
- bewirkt: gute elektrische Leitfähigkeit + hohe Wärmeleitfähigkeit

![](https://upload.wikimedia.org/wikipedia/commons/4/41/Nuvola_di_elettroni.svg)


---

![bg fit](https://upload.wikimedia.org/wikipedia/commons/0/00/Periodensystem_Einfach.svg)

---
## Relevante Gößen

**Ordnungszahl**
Zahl der Protonen im Kern
**Atommasse**
bestimmt die Masse des Elements
 Masse des Werkstoffs ist eine Kombination aus Atommasse und Dichte
**Elektronegativiät**
bestimmt ob Atome abgegeben oder aufgenommen werden in einer Bindung
metallische Bindungen eher links
kovalente Bindungen eher rechts

---

## Neben- oder Restvalenzbindungen 
**Sekundärbindungen - geringe Bindungsenergie, schwache Bindung**
-	van der Waals-Bindung: zwischenmolekulare Kräfte
-	Wasserstoffbrückenbindung: zwei Moleküle oder zwei geeignet weit voneinander getrennte Abschnitte eines Makromoleküls treten über Wasserstoffatome in Wechselwirkung 
- die Bindungsenergien sind ein bis zwei Zehnerpotenzen kleiner als die der Atombindungen.

---


| **Bezeichnung** | **Ionenbindung oder heteropolare Bindung** | **Atombindung homöopolare (kovalente) Bindung** | **Metallische Bindung** |
|-----------------|---------------------------------|-------------------------------------------------|--------------------------|
| **Beteiligte Bausteine** | Ionen (Metall + Nichtmetall) | Gleiche Atomart (Nichtmetall + Nichtmetall) | Gleiche Atomart (Metall + Metall) |
| **Beschreibung des elektrischen Lade-zustandes** | Positiv geladenes Ion + negativ geladenes Ion (Kation + Anion) | Atome besitzen ein oder mehrere gemeinsame Elektronenpaare, um die Edelgaskonfiguration zu erreichen | Atome geben ihre Außenelektronen an den Gesamtverband ab. Elektronen bewegen sich dort frei im Atomgitter |
---



| **Bezeichnung** | **Ionenbindung oder heteropolare Bindung** | **Atombindung homöopolare (kovalente) Bindung** | **Metallische Bindung** |
|-----------------|---------------------------------|-------------------------------------------------|--------------------------|
| **Von den Bindungs-kräften abhängige Werkstoff-eigenschaften** | Im gelösten Zustand elektrisch leitfähig, kristalline Gefügestruktur | Geringe elektrische und thermische Leitfähigkeit; hoher Schmelzpunkt | Sehr gute elektrische und thermische Leitfähigkeit und Duktilität; eingeschränkte chemische Beständigkeit |
| **Beispiele** | Alkalimetallverbindungen, Halogenverbindungen (z.B. NaCl, MgO) | Diamant, Methan (CH₄) (unpolar), Methanol (CH₃OH) (polar) | Kupfer (Cu), Aluminium (Al), Eisen (Fe) |

---

## Atomistische Struktur

Besteht aus
- Kern (Protonen + Neutronen) der die Masse definiert
- Hülle (Elektronen) mit verschieden Schalen, welche chemischen und viele physikalische Eigeschaften definiert

![bg fit right](https://upload.wikimedia.org/wikipedia/commons/0/04/AtomRadialeDichte_He%2C_Ne%2CAr.jpg)


---

![bg 80%](../../assets/Figures/Bindungskraefte_zwischen_Atome.svg)


---

### Feinstruktur
- Kristallstrukturen
- Molekülstrukturen
- Glasig-amorphe Strukturen
- Realstruktur

---
## Raumgitter

- entsteht durch die dreidimensional-periodische Verschiebung seiner Bausteine
- charakterisiert durch drei Raumachsen x, y und z liegenden Winkel α, β, γ die Abstände auf den Achsen das jeweilige Raumgitter
- a0, b0 und c0  (Gitterkonstanten) -> Einheitszelle


![bg fit right](../../assets/Figures/einheitszelle.png)

---

| Kristallsystem   | Gitterkonstanten      | Winkel        | Beispiele                                                 |
|------------------|-----------------------|------------------------------------|-----------------------------------------------------------|
| triklin          | a₀ ≠ b₀ ≠ c₀          | α ≠ β ≠ γ ≠ 90°                    | Silikat-Minerale                                           |
| monoklin         | a₀ ≠ b₀ ≠ c₀          | α = γ = 90°; β ≠ 90°               | Mo₂S₃; β-Pu                                                |
| (ortho)rhombisch | a₀ ≠ b₀ ≠ c₀          | α = β = γ = 90°                    | U, S, P, Ga, γ-Sn                                          |
| rhomboedrisch    | a₀ = b₀ = c₀          | α = β = γ ≠ 90°                    | As, Hg, Sb                                                 |
| hexagonal        | a₀ = b₀ ≠ c₀          | α = β = 90°; γ = 120°              | α-Ti, Mg, Zn                                               |
| tetragonal       | a₀ = b₀ ≠ c₀          | α = β = γ = 90°                    | B, CuTi₃, Sn (T > 13,5°)                                   |



---

## Häufigste Gitterformen bei Metallen

| Kristallsystem   | Gitterkonstanten      | Winkel        | Beispiele                                                 |
|------------------|-----------------------|------------------------------------|-----------------------------------------------------------|
| kubisch          | a₀ = b₀ = c₀          | α = β = γ = 90°                    | Cu, Al, Ni, Au, Ag; γ-Eisen (kfz); α-Eisen, V, Cr, W (krz); Mn, Po (kp) |


---

Kubisch flächenzentriert (kfz)
![bg right 30%](../../assets/Figures/kfz.png)

Kubisch raumzentriert (krz)

![bg vertical 30%](../../assets/Figures/krz.png)

Hexagonal dichteste Packung (hpd)

![bg 30%](../../assets/Figures/hdp.png)

---

## Einflüsse

-	Korrosion: Angriff aggressiver Medien erfolgt an bevorzugten Ebenen
-	Verformung: Plastische Verformung erfolgt entlang bevorzugter kristallografischer Ebenen und Richtungen → Gleitsysteme
-	Ultraschall: Verwendung von Schwingquarzen mit speziellen kristallografischen Begrenzungsflächen
-	Leitfähigkeit:	Verwendung von Germanium- oder Silizium-Wafern in (1 1 1)- oder (1 0 0) - Orientierung für Halbleiterelemente
-	Magnetisierung: leichteste Magnetisierung von Eisen-Silizium-Transformatorenblechen ent-lang der Würfelkante [1 0 0]

---



## Polymorphie bei Metallen

- Polymorphie: ist die Ausbildung von verschiedenen Gitterstrukturen in Abhängigkeit von der Temperatur
- die verschiedenen Gitterformen sind die allotropen Modifikationen 

(auch: Polymorphie des Kohlenstoffs: Gra-phit, Diamant,…).

---

## Bestimmung der Umwandlungspunkte

_Dilatometrie_
- Messung der Längenänderung aufgrund der Gitterumwandlung

_Thermische Analyse_
- Aufzeichnung des Temperaturverlaufs
- Gitterwandlungen (Phasenänderungen) brauchen Wärmeenergie oder geben sie ab
- Halte- bzw. Knickpunkte in den Erwärmungs- oder Abkühlungskurven.

- Haltepunkte: bei reinen Metallen


---

![bg fit](../../assets/Figures/Haltepunkte_knickpunkte.png)


---



## Molekülstrukturen

- typisch für nichtmetallisch-organische Werkstoffe
  - natürliche Materialien: Holz, Kautschuk, Leder, Fasern usw.
  - synthetische Kunststoffe: PMMA, Epoxid, usw.



![bg right 60%](https://upload.wikimedia.org/wikipedia/commons/f/fe/Spruce_plywood.JPG)

![bg vertical 80%](https://upload.wikimedia.org/wikipedia/commons/0/03/14-05-28-LEGO-by-RalfR-061.jpg)

---

- entsteht durch Aufbaureaktionen von monomeren Grundbausteine zu Kettenmolekülen
- innerhalb der Ketten treten Atombindungen auf
- zwischen den Ketten existieren Nebenvalenzbindungen und Molekülverhakungen


![bg right fit](../../assets/Figures/Syndiotactic_polypropene.png)

---

## Aufbaureaktion (Polymerisation)

- Es müssen freie Bindungen in den Monomeren erzeugt werden
- die Monomere "brauchen" neue Partner, um wieder energetisches Minimum zu erreichen

---

## Kettenpolymerisationen

  - Aufspalten von C=C-Doppelbindungen im Monomer (katalytischer Prozess durch Druck, Temperatur, Katalysator)
  - Verbindung der aufgespaltenen Monomere zu Makromolekülen

![bg right 50%](https://upload.wikimedia.org/wikipedia/commons/7/7e/Kettenwachstum.svg)

---

## Stufenwachstumsreaktionen 

**Polykondensation**
- Abspaltung niedermolekulare (z.B. H2O) Reaktionsprodukte durch eine chemische Reaktion schafft frei Bindungen
- schrittweise Reaktion oder Unterbrechung führen zur Bildung von linearen, verzweigten oder vernetzten Polymeren (Thermoplaste, Elastomere oder Duromere)  
![](https://upload.wikimedia.org/wikipedia/commons/a/a0/Polykondensation_Bakelit_1.svg)

---

**Polyaddition**
- freie Bindungen entstehen durch Umlagerungen von Doppelbindungen zweier unterschiedlicher Monomermoleküle
- diese bilden dann Molekülketten

![](https://upload.wikimedia.org/wikipedia/commons/4/4d/Polyaddition_Polyurethane_V.2.1.png)

---

## Glasig-amorphe Strukturen

- Gläser sind ein nichtmetallisch-anorganisches, vorzugsweise silikatisches Schmelzprodukte
- nichtkristallinen, also amorphen Zustand
- bei Glas, wird die Schmelze zunächst unterkühlt und dann unterhalb der Transformations- temperatur Tg „eingefroren“. 

![bg right fit](../../assets/Figures/amorph.png)


---

# Realstruktur von Kristallen
## Gitterbaudefekte

-	Nulldimensionale Fehlstellen (Punktdefekte): Leerstellen, Zwischengitteratom, Zwischengitter-Fremdatome, Substitutions-Fremdatom
-	Eindimensionale Fehlstellen (Liniendefekte): Versetzungen
-	Zweidimensionale Fehlstellen (Flächendefekte): Stapelfehler, Korngrenzen, Subkorn-grenzen, Phasengrenzen

---

## Nulldimensionale Fehlstellen

![bg right 50%](../../assets/Figures/ideales_gitter.png)



<details>
<summary>Was gibt es für mögliche Varianten?</summary>
<div>

- Zwischengitteratome
- Leerstellen
- Frenkeltyp (Autreten der gleichen Zahl Zwischen-gitteratome und Fehlstellen)
- Substitutions-Fremdatom
- Zwischengitter-Fremdatom 
</div>
</details>

---

## Fremdatome

<details>
<summary>Wie lassen sich Fremdatome nutzen?</summary>
<div>

-	[Dotierung](https://de.wikipedia.org/wiki/Dotierung) im Halbleiter
    - gezielte Manipulation der elektrischen Leitfähigkeit durch Einbringung zusätzlicher Atome
- Zwischengitter und Substitutionsfremdatom
    - Erhöhung der Festigkeit durch natürlichen "Rissstopp" oder lokal einfacheren Versatz und lokale Reduktion der Spannungen
</div>
</details>


---


## Versetzungen

[Versetzungen](https://de.wikipedia.org/wiki/Versetzung_(Materialwissenschaft)) enstehen
- beim Kristallwachstum
- aufgrund von Eigenspannungen
- durch plastische Verformungen

![bg right 80%](../../assets/Figures/versetzung.png)
![bg 105%](https://upload.wikimedia.org/wikipedia/commons/7/77/Versetzung_im_2D-Kristall.svg)


---

## Zweidimensionale Fehlstellen - Korngrenzen
- Korngrenzen
- Phasengrenzen
- Subkorngrenzen

![bg right fit](https://www.struers.com/-/media/Struers-media-library/Knowledge/Materials/Grain-structures/FIg-0A-974x732-px.jpg?lm=20191009T054854Z&h=732&w=974&hash=4504C0AA9A9B6DEB6BDF91CC93EDF46ED9AADF75)

[Skript](https://cwillberg.github.io/Werkstofftechnik/dev/Skript/svw/gitterbaudefekte/)


---


## Plastizität

Gut oder Schlecht

![bg right 70%](../../assets/Figures/fragezeichen.png)

---

## Beispiele

**Hohe Plastizität**:

- Knete
- feuchter Ton
- Metalle und Metalllegierungen mit geeignetem Atomgitter:
  - glühender Stahl beim Schmieden
  - Kaltumformung von Blechen 

**Geringe Plastizität**:
  - Gummi
  - Keramik
  - Faserkunstoffverbunde (Epoxid-Glasfaser oder Epoxid-Kohlefaser)
   
---

## Plastizität - Einkristall

Die plastische Verformung eines Kristalls vollzieht sich  im Wesentlichen durch Abgleiten von Atomschichten entlang bestimmter kristallographischer Ebenen und Richtungen unter Einwirken von Schubspannungen.

- Gleitsystem besteht aus Gleitebene und Gleitrichtung
- kritische Schubspannung ($\tau_{Kr}\approx G/10$ - Abschätzung oder theoretische Schubfestigkeit)
- Realtität um Faktor ~100 niedriger durch Versetzungen
---

## Bild

![](../../assets/Figures/Beispiel_plast.bmp)
  
---

## Plastische Verformung des polykristallinen Werkstoffs

- Mikro- und Makroplastizität
  - Plastische Verformung beginnt bei "ungünstigen" Orientierungen
- Korngrenzen
  - Barriere für Versetzungsbewegung
  - bei hohen Temperaturen können Korngrenzen gleiten (Kriechen)
  - gezielte Fertigung kann durch Korngrenzen Zähigkeit erhöhen
- Heterogenität
  - Mehrphasigkeit
  - inhomogene Verteilung der Spannungen und Verformungen
- Anisotropie

---

## Polykristall Plastizität
[Beispiel aus einer Simulation](https://www.youtube.com/watch?v=mWanREXKLO4)

---

## Streckgrenze

![bg right 90%](https://upload.wikimedia.org/wikipedia/commons/6/64/Spgs-Dehnungs-Kurve_Dehngrenze.svg)

- $R_m$ - Zugfestigkeit
- $R_e$ - Streckgrenze
- Dehngrenze oder Elastizitätsgrenze $R_{p0,2}$
  - Belastung und dann Entlastung 0.2% Dehung verbleibt
- Dehngrenze wird als Ersatzstreckgrenze verwendet

---

## Streckgrenze

![bg right 90%](https://upload.wikimedia.org/wikipedia/commons/6/6e/Spgs-Dehnungs-Kurve_Streckgrenze.svg)

- obere Streckgrenze $R_{eH}$
- untere Streckgrenze $R_{eL}$
>gezackter Bereich: Lüdersbereich

[Beispielvideo](https://youtu.be/E80yUNniESU?si=pqGRAWamxFQedWqw&t=95)

---

## Plastizität - Umformen
- [Tiefziehen Prinzip](https://www.youtube.com/watch?v=Zbfld_851z0)
- [Tiefziehen Real](https://www.youtube.com/watch?v=rHfepOqPVHI)

---





## Werkstoffeigenschaften

<details>
<summary>Was sind Werkstoffeigenschaften?</summary>

<!DOCTYPE html>
<html lang="en">
  <body>
    <pre align="center" class="mermaid">
    %%{init: {'theme': 'forest'}}%%
    mindmap
      root((Eigenschaften))
        Physikalisch
          Mechanisch
          Elektrisch
          Thermisch
          ...
        Chemisch
            Löslichkeit
            Elektronegativität
            ...
        Biologisch / Physiologisch
            Umweltwirkung
            Verwitterbarkeit
            Toxidität
            ...
        Sozial / Gesellschaftlich
            Wert
            Akzeptanz
            Arbeitsbedingungen
            Herkunft
            ...
    </pre>
    <script type="module">
      import mermaid from 'https://cdn.jsdelivr.net/npm/mermaid@10/dist/mermaid.esm.min.mjs';
    </script>
  </body>
</html>
</details>

<!DOCTYPE html>

---

## Materialpatenschaft




<details>
<summary>Welche Werkstoffe fallen euch ein?</summary>
<div>

- Materialien beschreiben und Eigenschaften dokumentieren
  - kontinuierlich über das Semester mit den verschiedenen Themen
  - Vorstellung Ende des Semesters
- Online mit QR Code für die Materialbibliothek bereitstellen
- Warum?
  - Auswahl des passenden Werkstoffs

</div>
</details>

---

## Symmetrien
- isotropie
- transversale isotropie
- orthotropie
- ...
- anisotropie
![bg right 80%](../../assets/Figures/xyz.png)

<!---
- Diskussion; Eigenschaften können richtungsabhängig sein
- Praxisbeispiele
-->

---

## Mechanische Eigenschaften
<a id="Mechanik"></a>

- die **reversible** Verformung, bei der sofort bzw. eine bestimmte Zeit nach dem Einwirken der äußeren Belastung der verformte Werkstoff seine ursprüngliche Form zurückerhält: elastische und viskoelastische Verformung;

- die **irreversible (bleibende)** Verformung, bei der die Formänderung auch nach dem Einwirken der äußeren Belastung erhalten bleibt: plastische und viskose Verformung;

- der Bruch, d.h. eine durch Entstehen und Ausbreiten von Rissen bewirkte Trennung des Werkstoffes.


---

## Simulationsbeispiel

<iframe src="https://perilab-results.nimbus-extern.dlr.de/models/DCB?step=65&variable=Damage&displFactor=400" width="1150" height="600"></iframe>


---

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
E - Elastizitätsmodul, Young's modulus $\left[\frac{N}{m^2}\right]$\
\
\
\
\
.
<div style="position: absolute; bottom: 40px; left: 80px; color: blue; font-size: 20px;"> 
    <img src="Figures/EModul.svg" style="height:230px;width:auto;vertical-align: top;">
</div>

![bg right:25%](../../assets/Figures/Normalspannung.gif)

---

## Grundlagen

- Schubdehnungen [-]
$\varepsilon = \frac12(\frac{u_x}{l_0}+\frac{u_y}{b_0})=\frac{\gamma}{2}$

- Schubspannung $\left[\frac{N}{m^2}\right]$, $[Pa]$
$\tau = \frac{F_s}{A}= G\gamma$

- Normal- und Schubspannungen sind nicht kompatibel; daher die Vergleichsspannungen -> Technische Mechnanik

- G - Schub-, Gleitmodul, Shear modulus $\left[\frac{N}{m^2}\right]$

![bg right:25%](../../assets/Figures/Schubspannung.gif)


---

## Grundlagen

- Querkontraktionszahl [-]
- $\nu = -\frac{\varepsilon_y}{\varepsilon_x}$
für homogene Werkstoffe $0\leq\nu\leq 0.5$
für heterogene Werkstoffe sind anderen Konstellationen denkbar

- [Kompressionsmodul](https://de.wikipedia.org/wiki/Kompressionsmodul#Umrechnung_zwischen_den_elastischen_Konstanten_isotroper_Festk%C3%B6rper) $K = \frac{E}{3(1-2\nu)}$
- [Schubmodul](https://de.wikipedia.org/wiki/Kompressionsmodul#Umrechnung_zwischen_den_elastischen_Konstanten_isotroper_Festk%C3%B6rper) $K = \frac{E}{2(1+\nu)}$

![bg right:25%](../../assets/Figures/Kompression.gif)

---

## Werkstoffbeispiele

| Werkstoff                         | E [GPa]   | G [GPa] | $\nu [-]$     |
|:----------------------------------|:----------|:--------|:----------|
| Stahl unlegiert                   | 200       | 77      | 0.30      |
| Titan                             | 110       | 40      | 0.36      |
| Kupfer                            | 120       | 45      | 0.35      |
| Aluminium                         | 70        | 26      | 0.34      |
| Magnesium                         | 45        | 17      | 0.27      |
| Wolfram                           | 360       | 130     | 0.35      |
| Gusseisen mit lamellarem Graphit  | 120       | 60      | 0.25      |
| Messing                           | 100       | 35      | 0.35      |
| Thermoplaste/Duromere             | 2 … 5     | 1 … 2   | ~0.35   |
| Elastomere                        | 0.1       | 0.03    | 0.45 - 0.49|
| Sperrholz                         | 4 … 16    | -       | -         |
| Beton                             | 40 … 45   | -       | -         |


---


## Steifigkeiten
<details>
<summary>Wie Materialeigenschaften den Steifigkeiten zusammen?</summary>

- Material $\cdot$ Querschnitte = Steifigkeit
- Dehn-, Normalsteifigkeit = $EA$
- Biegesteifigkeit = $EI$
- Torsionssteifigkeit = $GI_P$

</details>

![bg fit right:50%](../../assets/Figures/IWES_test.jpg)
<div style="position: absolute; bottom: 10px; left: 520px; color: blue; font-size: 20px;"> 
    <a href="https://doi.org/10.3390/en14092451" style="color: blue;">Bildreferenz</a>
</div>

---

## 
<!---

* 1. und 2. Eigenfrequenz ->  https://doi.org/10.3390/en14092451
* Verformung in Schlag- und Schwenkrichtung sind aber identisch
* Turmschlag ist relevant
* dynamische Stabilität
* -->

![bg fit](../../assets/Figures/EF1.png)
![bg fit](../../assets/Figures/EF2.png)


<div style="position: absolute; bottom: 10px; left: 520px; color: blue; font-size: 20px;"> 
    <a href="https://doi.org/10.3390/en14092451" style="color: blue;">Bildreferenz</a>
</div>

---

## Eigenfrequenzen / Resonanzen / Stabilität

- $f_{eigen}=\frac{\omega_{eigen}}{2\pi}=\frac{1}{2\pi}\sqrt{\frac{c}{m}}$ mit $c$ bspw. $EA$

[Tacoma Narrows Bridge](https://youtu.be/j-zczJXSxnw?t=10)

- Knick Stab
- Beulen

---

## Festigkeit

[Die Festigkeit eines Werkstoffes beschreibt die Beanspruchbarkeit durch mechanische Belastungen, bevor es zu einem Versagen kommt, und wird angegeben als mechanische Spannung $\left[N/m^2\right]$. Das Versagen kann eine **unzulässige Verformung** sein, insbesondere eine **plastische (bleibende) Verformung** oder auch ein **Bruch**.](https://de.wikipedia.org/wiki/Festigkeit)


>Wichtig: Festigkeit $\neq$ Steifigkeit

---


## Plastische Versagen 

![bg fit right:50%](../../assets/Figures/Stress_strain_ductile.svg)


<div style="position: absolute; bottom: 10px; right: 0px; color: blue; font-size: 20px;"> 
    <a href="https://commons.wikimedia.org/w/index.php?curid=89891144" style="color: blue;">By Nicoguaro - Own work, CC BY 4.0</a>
</div>

---

## Viskoses Verhalten

- reversibel
- zeitabhängig

Federmodel $\sigma = E\epsilon$ 
 - Elastischer Anteil
 - Dargestellt durch Federlemente
<div style="position: absolute; bottom: -10px; left: 500px; color: blue; font-size: 20px;"> 
    <img src="../../assets/Figures/spring.svg" alt="Presentation link" style="height:550px;width:auto;vertical-align: top;background-color:transparent;">
</div>

<div style="position: absolute; bottom: -150px; left: 500px; color: blue; font-size: 20px;"> 
    <img src="../../assets/Figures/damper.svg" alt="Presentation link" style="height:550px;width:auto;vertical-align: top;background-color:transparent;">
</div>

Dämpfer  $\sigma = \eta\dot{\epsilon}=\eta\frac{\partial \epsilon}{\partial t}$ 
- Viskoser Anteil
- Dargestellt durch Dämpferelemente


---

## 

![bg fit](../../assets/Figures/Spannung-Dehnung.png)
![bg fit](../../assets/Figures/Spannung-Dehnrate.png)

---

## 

![bg fit](../../assets/Figures/Spannung-Zeit.png)
![bg fit](../../assets/Figures/Hysteresis.png)



---

## Exkurs: Modellierung von Werkstoffen
- Rheologische Modelle
- setzen sich aus vielen Federn, Dämpfern und anderen Elementen zusammen
- diese Freiheitsgrade ($E_i$, $\eta_i$) werden dann gefittet



---

## Wiederholung Kristalle und Gitter

![bg right 50%](../../assets/styles/vorlesung.png)

---

## Kristalle - Kritallgitter

- Stoffe die sich in einer Kristallstruktur anordnen
- Periodische Wiederholung der "Basis"
- Die Basis kann beliebig groß sein
- Elementarzellen enthält alle Informationen
zur Beschreibung des Kristalls
- alle Metalle bilden in der Regel Kristalle 


<div style="position: absolute; bottom: 340px; left: 780px; color: blue; font-size: 20px;"> 
    <img src="../../assets/Figures/NaCl_polyhedra.svg" alt="https://creativecommons.org/licenses/by-sa/4.0/deed.en" style="height:250px;width:auto;vertical-align: top;background-color:transparent;">
</div>

<div style="position: absolute; bottom: 40px; left: 780px; color: blue; font-size: 20px;"> 
    <img src="../../assets/Figures/Rock_salt_crystal.jpg" alt="https://creativecommons.org/licenses/by-sa/4.0/deed.en" style="height:220px;width:auto;vertical-align: top;background-color:transparent;">
</div>

---

## "Faule" Physik
- alles strebt nach engergetisch "stabilen" Zuständen

<div style="position: absolute; bottom: -360px; left: 780px; color: blue; font-size: 20px;"> 
    <img src="../../assets/Figures/energie.svg" alt="https://creativecommons.org/licenses/by-sa/4.0/deed.en" style="height:1320px;width:auto;vertical-align: top;background-color:transparent;">
</div>

- [Einheitszelle](https://cwillberg.github.io/Werkstofftechnik/dev/Skript/svw/kristalle/)

<div style="position: absolute; bottom: 40px; left: 780px; color: blue; font-size: 20px;"> 
    <img src="../../assets/Figures/Einheitszelle.png" alt="https://creativecommons.org/licenses/by-sa/4.0/deed.en" style="height:220px;width:auto;vertical-align: top;background-color:transparent;">
</div>

<details>
<summary>Recherchiert wichtige Parameter der Einheitszelle?</summary>
<div>

- a$_0$, b$_0$, c$_0$ - Gitterkonstanten - Abstand der Atome
- $\alpha$, $\beta$, $\gamma$ - Achswinkel - Winkel der Elementarzellen
- 14 mögliche [Bravais Gitter](https://de.wikipedia.org/wiki/Bravais-Gitter) in 3D
- [Zahl der Atome](https://cwillberg.github.io/Werkstofftechnik/dev/Skript/svw/kristalle/)
- [Koordinationszahl](https://cwillberg.github.io/Werkstofftechnik/dev/Skript/svw/kristalle/)
- [Packungsdichte](https://cwillberg.github.io/Werkstofftechnik/dev/Skript/svw/kristalle/)
</div>
</details>

---

## Einfluss des Raumgitters

-	Korrosion: Angriff aggressiver Medien erfolgt an bevorzugten Ebenen
-	Verformung: Plastische Verformung erfolgt entlang bevorzugter kristallografischer Ebenen und Richtungen → Gleitsysteme
-	Ultraschall: Verwendung von Schwingquarzen mit speziellen kristallografischen Begrenzungsflächen
-	Leitfähigkeit:	Verwendung von Germanium- oder Silizium-Wafern in (1 1 1)- oder (1 0 0) - Orientierung für Halbleiterelemente
-	Magnetisierung: leichteste Magnetisierung von Eisen-Silizium-Transformatorenblechen entlang der Würfelkante [1 0 0]

---

## Gitterbaudefekte

-	Nulldimensionale Fehlstellen (Punktdefekte): Leerstellen, Zwischengitteratom, Zwischengitter-Fremdatome, Substitutions-Fremdatom
-	Eindimensionale Fehlstellen (Liniendefekte): Versetzungen
-	Zweidimensionale Fehlstellen (Flächendefekte): Stapelfehler, Korngrenzen, Subkorn-grenzen, Phasengrenzen

---

## Nulldimensionale Fehlstellen

![bg right 50%](../../assets/Figures/ideales_gitter.png)



<details>
<summary>Was gibt es für mögliche Varianten?</summary>
<div>

- Zwischengitteratome
- Leerstellen
- Frenkeltyp (Autreten der gleichen Zahl Zwischen-gitteratome und Fehlstellen)
- Substitutions-Fremdatom
- Zwischengitter-Fremdatom 
</div>
</details>

---

## Fremdatome

<details>
<summary>Wie lassen sich Fremdatome nutzen?</summary>
<div>

-	[Dotierung](https://de.wikipedia.org/wiki/Dotierung) im Halbleiter
    - gezielte Manipulation der elektrischen Leitfähigkeit durch Einbringung zusätzlicher Atome
- Zwischengitter und Substitutionsfremdatom
    - Erhöhung der Festigkeit durch natürlichen "Rissstopp" oder lokal einfacheren Versatz und lokale Reduktion der Spannungen
</div>
</details>


---


## Versetzungen

[Versetzungen](https://de.wikipedia.org/wiki/Versetzung_(Materialwissenschaft)) enstehen
- beim Kristallwachstum
- aufgrund von Eigenspannungen
- durch plastische Verformungen

![bg right 80%](../../assets/Figures/versetzung.png)
![bg 105%](https://upload.wikimedia.org/wikipedia/commons/7/77/Versetzung_im_2D-Kristall.svg)


---

## Zweidimensionale Fehlstellen - Korngrenzen
- Korngrenzen
- Phasengrenzen
- Subkorngrenzen

![bg right fit](https://www.struers.com/-/media/Struers-media-library/Knowledge/Materials/Grain-structures/FIg-0A-974x732-px.jpg?lm=20191009T054854Z&h=732&w=974&hash=4504C0AA9A9B6DEB6BDF91CC93EDF46ED9AADF75)

[Skript](https://cwillberg.github.io/Werkstofftechnik/dev/Skript/svw/gitterbaudefekte/)


---


## Plastizität

Gut oder Schlecht

![bg right 70%](../../assets/Figures/fragezeichen.png)

---

## Beispiele

**Hohe Plastizität**:

- Knete
- feuchter Ton
- Metalle und Metalllegierungen mit geeignetem Atomgitter:
  - glühender Stahl beim Schmieden
  - Kaltumformung von Blechen 

**Geringe Plastizität**:
  - Gummi
  - Keramik
  - Faserkunstoffverbunde (Epoxid-Glasfaser oder Epoxid-Kohlefaser)
   
---

## Plastizität - Einkristall

Die plastische Verformung eines Kristalls vollzieht sich  im Wesentlichen durch Abgleiten von Atomschichten entlang bestimmter kristallographischer Ebenen und Richtungen unter Einwirken von Schubspannungen.

- Gleitsystem besteht aus Gleitebene und Gleitrichtung
- kritische Schubspannung ($\tau_{Kr}\approx G/10$ - Abschätzung oder theoretische Schubfestigkeit)
- Realtität um Faktor ~100 niedriger durch Versetzungen
---

## Bild

![](../../assets/Figures/Beispiel_plast.bmp)
  
---

## Plastische Verformung des polykristallinen Werkstoffs

- Mikro- und Makroplastizität
  - Plastische Verformung beginnt bei "ungünstigen" Orientierungen
- Korngrenzen
  - Barriere für Versetzungsbewegung
  - bei hohen Temperaturen können Korngrenzen gleiten (Kriechen)
  - gezielte Fertigung kann durch Korngrenzen Zähigkeit erhöhen
- Heterogenität
  - Mehrphasigkeit
  - inhomogene Verteilung der Spannungen und Verformungen
- Anisotropie

---

## Polykristall Plastizität
[Beispiel aus einer Simulation](https://www.youtube.com/watch?v=mWanREXKLO4)

---

## Streckgrenze

![bg right 90%](https://upload.wikimedia.org/wikipedia/commons/6/64/Spgs-Dehnungs-Kurve_Dehngrenze.svg)

- $R_m$ - Zugfestigkeit
- $R_e$ - Streckgrenze
- Dehngrenze oder Elastizitätsgrenze $R_{p0,2}$
  - Belastung und dann Entlastung 0.2% Dehung verbleibt
- Dehngrenze wird als Ersatzstreckgrenze verwendet

---

## Streckgrenze

![bg right 90%](https://upload.wikimedia.org/wikipedia/commons/6/6e/Spgs-Dehnungs-Kurve_Streckgrenze.svg)

- obere Streckgrenze $R_{eH}$
- untere Streckgrenze $R_{eL}$
>gezackter Bereich: Lüdersbereich

[Beispielvideo](https://youtu.be/E80yUNniESU?si=pqGRAWamxFQedWqw&t=95)

---

## Plastizität - Umformen
- [Tiefziehen Prinzip](https://www.youtube.com/watch?v=Zbfld_851z0)
- [Tiefziehen Real](https://www.youtube.com/watch?v=rHfepOqPVHI)

---

## Referencen
<a id="Referenzen"></a>

Rainer Schwab: Werkstoffkunde und Werkstoffprüfung für Dummies, 2019; ISBN-10 352771538X


