---
marp: true

theme: default
header: ''
footer: ''
backgroundImage: url('../assets/styles/background.png')
title:  Grundlagen - Werkstofftechnik
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


##  Grundlagen - Werkstofftechnik
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

**Rahmen**


- Essen oder Trinken sind okay, aber leise
- Probleme bei der Kinderbetreuung
- Alles verbleibt in Raum!
- Fragen

![bg right 50%](../assets/QR/wst_mb_01.png)

---

## Inhalte nach Modulhandbuch

- Einteilung von Werkstoffen
- Werkstoffstruktur, Gefüge, Legierungen, Gitterbaufehler
- ideale und reale Zustandsdiagramme, Gleichgewichts- und
Ungleichgewichtszustände
- Wärmebehandlung, Härteverfahren
- Labor: Zugversuch, Härteprüfung
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

![bg right](https://upload.wikimedia.org/wikipedia/commons/c/ca/Langstab-Isolator_110_kV.jpg)


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

# Materialeigenschaften
- Eigenschaften werden maßgeblich durch die Mikrostruktur und Elektronen (äußere Schale) beeinflusst

**Eigenarbeit**
- Wärmedehnung
- elektrische Leitfähigkeit
- Wärmeleitfäigkeit

---

## Referencen
<a id="Referenzen"></a>

Rainer Schwab: Werkstoffkunde und Werkstoffprüfung für Dummies, 2019; ISBN-10 352771538X


