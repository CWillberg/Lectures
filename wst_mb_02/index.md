---
marp: true

theme: default
header: ''
footer: ''
backgroundImage: url('../assets/styles/background.png')
title: Vorlesung Reale Strukturen und Eigenschaften
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
img[alt="ORCID"] {
    height: 15px !important;
    width: auto !important;
    vertical-align: top !important;
    display: inline !important;
    margin: 0 !important;
}
</style>


## Vorlesung Werkstofftechnik - Vorlesung Reale Strukturen und Eigenschaften
Prof. Dr.-Ing.  Christian Willberg [![ORCID](../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)

![bg right](https://upload.wikimedia.org/wikipedia/commons/d/d7/Gold-crystals.jpg)

Kontakt: christian.willberg@h2.de
Teile des Skripts sind von \
Prof. Dr.-Ing. Jürgen Häberle übernommen

---

## Inhalte
- Fehler in Kristallen
- Plastizität
- Grundlagen mechanischer Eigenschaften

![bg right 70%](../assets/QR/wst_mb_02.png)




---

<!--paginate: true-->





# Struktur von Werkstoffen

![bg right fit](https://wiki.arnold-horsch.de/images/6/6e/Strukturebene_Metall-2.jpg)



---

-	Atomistische Struktur (Art der atomaren Bausteine)
-	Feinstruktur (Bindungen zwischen den atomaren Bausteinen und deren geometrische An-ordnung)
-	Mikrostruktur (Gefüge – Bereiche geometrischer Anordnung, die im Werkstoffinnern durch Grenzflächen voneinander getrennt sind)
-	Makrostruktur (Grobstruktur – Gesamterscheinung eines Werkstoffes bei der Herstellung und dem Einsatz eines Bauteils)


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

- Aufenthaltswahrscheinlichkeit der Elektronen sorgt für Abstoßung und Anziehung
- als Elastizität oder Wärmedehnung makroskopisch zu erkennen


---

![bg 80%](../assets/Figures/Bindungskraefte_zwischen_Atome.svg)


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


![bg fit right](../assets/Figures/einheitszelle.png)

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
![bg right 30%](../assets/Figures/kfz.png)

Kubisch raumzentriert (krz)

![bg vertical 30%](../assets/Figures/krz.png)

Hexagonal dichteste Packung (hpd)

![bg 30%](../assets/Figures/hdp.png)

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

(auch: Polymorphie des Kohlenstoffs: Graphit, Diamant,…).

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

![bg fit](../assets/Figures/Haltepunkte_knickpunkte.png)


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


![bg right fit](../assets/Figures/Syndiotactic_polypropene.png)

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

![bg right fit](../assets/Figures/amorph.png)


---


---

# Realstruktur von Kristallen
## Gitterbaudefekte

-	Nulldimensionale Fehlstellen (Punktdefekte): Leerstellen, Zwischengitteratom, Zwischengitter-Fremdatome, Substitutions-Fremdatom
-	Eindimensionale Fehlstellen (Liniendefekte): Versetzungen
-	Zweidimensionale Fehlstellen (Flächendefekte): Stapelfehler, Korngrenzen, Subkorn-grenzen, Phasengrenzen

---

## Nulldimensionale Fehlstellen

![bg right 50%](../assets/Figures/ideales_gitter.png)



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

![bg right 80%](../assets/Figures/versetzung.png)
![bg 105%](https://upload.wikimedia.org/wikipedia/commons/7/77/Versetzung_im_2D-Kristall.svg)


---
## Versetzungsarten

- Stufenversetzung
$E \approx \frac34 G b^2$
![bg right 60%](https://upload.wikimedia.org/wikipedia/commons/9/99/Dislocation_edge_d2.svg)

- Schraubenversetzungen 
$E \approx \frac12 G b^2$

![bg vertical 60%](https://upload.wikimedia.org/wikipedia/commons/5/52/Dislocation_screw_e.svg)

---
# [Defektübersicht](https://cwillberg.github.io/Werkstofftechnik/dev/Skript/svw/gitterbaudefekte/)


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

![bg right 70%](../assets/Figures/fragezeichen.png)

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

![](../assets/Figures/Beispiel_plast.bmp)
  
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


[Datenblatt Stahl](https://www.stauberstahl.com/fileadmin/Downloads/werkstoffe/Werkstoff-1.2842-Datenblatt.pdf)


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

## Kriechen
- Zeitabhängige Verformung bei konstanter Belastung
![bg right fit](https://leichtbau.dlr.de/wp-content/uploads/2022/03/boom_blank_be.png)

- Beispiel [entfalltbare Raumfahrtstrukturen](https://youtu.be/vMMc7-VUUtM?si=5uYx40b4eWGl7j0G&t=77)

---

- findet bei Metallen oberhalb einer Übergangstemperatur statt ($~0.3-0.4 \cdot T_S$)

- auch bei geringen mechanischen Spannungen unterhalb der Streckgrenze $R_e$ findet eine irreversible plastische Verformung, die langsam, aber stetig voranschreitet statt 

![bg right 80%](https://upload.wikimedia.org/wikipedia/commons/2/26/Kriechen-Werkstoffvorgaenge.jpg)


---

- temperatur-, spannungs-, zeit- und werkstoffabhängig

- **Ursache**: Versetzungsbewegungen, Leerstellendiffusion, Korngrenzengleiten, Korngrenzendiffusion

![bg right 80%](https://upload.wikimedia.org/wikipedia/commons/2/26/Kriechen-Werkstoffvorgaenge.jpg)

---

## Kriechen in Kunststoffen
- bestehen aus Molekülketten 
- diese gleiten bzw. entknäueln sich diese unter äußerer 
- Sekundärbindungne zwischen den Makromolekülen werden neu gebildet und Deformation bleibt erhalten
