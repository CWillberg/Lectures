---
marp: true

theme: h2
header: 'Korrosion & Beschichtung'
footer: ''

title: MTI - Korrosion & Beschichtung'
author: Christian Willberg
---



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


## Vorlesung MTI - Korrosion & Beschichtung
Prof. Dr.-Ing.  Christian Willberg [![ORCID](../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)
![bg right 70%](../assets/QR/mti_ft_10.png)


Kontakt: christian.willberg@h2.de
Teile des Skripts sind von \
Prof. Dr.-Ing. Jürgen Häberle übernommen



---

<!--paginate: true-->

# Inhalte

![bg right](https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Rost.jpg/1920px-Rost.jpg)

- physikalische Prinzipien
- Umgang mit Korrosion

---

# Korrosion


- unterteilt in chemische, elektrochemische oder physikalische Reaktion von Metallen mit der Umgebung
- die Werkstoffeigenschaften beeinträchtigt werden
- die meisten Korrosionsschäden sind elektrochemische

![bg 100% fit](https://s3.amazonaws.com/static.wd7.us/5/55/Rust03102006.JPG)

![bg right 80% fit](https://upload.wikimedia.org/wikipedia/commons/8/88/County_Fire_Office_roof.jpg)

[Vertiefung](https://www.fh-muenster.de/bau/downloads/personen/muero/intern/bau/4.1Stahlkorrosion.pdf)

---

## Chemische Korrosion

- unmittelbare Reaktion von Metallen mit der Umgebung
- es erfolgt ein direkter Elektronenaustausch
- Reaktionspartner ist meist Sauerstoff $\text{O}_2$
Bsp.:
 $\text{Mg}+\text{O}_2\rightarrow \text{MgO}_2$
 
- findet meist bei höheren Temperaturen statt (Vorgang: Zundern)

---

## Elektrochemische Reaktion
- die meisten Korrosionsschäden sind elektrochemische
- zwei Teilreaktionen und meist örtlich getrennt
- beide Teilreaktionen erfordern einen Austausch an Ladungsträgern
    - Metalle ermöglichen das durch ihre Leitfähigkeit
    - außerhalb des Metalls wird der Stromkreis durch ein Elektrolyt geschlossen
    
**Elektrolyt**
- ein Medium in dem sich Ionen bewegen können (_Ionenleitung_)
- meist wässrige Lösungen 
- auch Erdboden, Salzschmelzen oder Feststoffen (genutzt in Brennstoffzellen)

---



**_Dissoziationsgrad_**
- bestimmt die Aggressivität des Elektrolyts
- je mehr die Konzentration der Ionen von der Konzentration im Wasser abweicht, desto aggressiver ist das Elektrolyt
- kann im pH-Wert dargestellt werden. 
pH < 7 sauer
pH = 7 ist neutral
pH > 7 basisch (alkalisch)

---

## Prinzipbild Galvanische Zelle

- Anionen - negative Ionen
- Katinionen - postive Ionen
- unter Gleichstrom wandern die negativ geladenen Ionen zur Anode
- Örtlich Trennung (Anode, Kathode)

![bg fit right 80%](https://upload.wikimedia.org/wikipedia/commons/c/c7/Galvanische_Zelle_2009-02-08.svg)

---

## Galvanisierung

![bg right:40% fit](https://kluthe.com/magazin/wp-content/uploads/2023/02/Galvanisierung-850x448.jpg)

- die Kathodenreaktion ist eine Reduktion

$\text{Metallion} + \text{Elektron} \rightarrow \text{Metallatom}$

- es bildet an der Oberfläche einen Niederschlag
- Prinzip der galvanischen Beschichtung
- an der Anode findet eine Oxidation statt (Abgabe von Elektronen)
---

## Prinzipbild Korrosionselement
- zwei Bestandteile
- leitend verbundene Bereiche
  - zwei Metalle
  - gleiche Metalle mit unterschiedlichen elektrischen Potentialen
- Benetzung mit Elektrolyt

![bg right 100%](https://upload.wikimedia.org/wikipedia/commons/4/4f/Korrosionselement2.png)

---

- edlere wird zu Kathode
- unedlere Elektrode wird zur Anode
  - wie bei der Galvanisierung gibt die Anode Elektronen ab
  $\text{Metall} \rightarrow \text{Metall}^{++} + 2\text{e}^{-}$
  - sie löst sich auf und korrodiert
- An der Kathode kann keine Meatall-Metallionen Reaktion stattfinden
  - es findet daher eine Redoxreaktion statt
  - Wasserstoffkorrosion oder Sauerstoffkorrosion
---

| Metall    | Potential | Korrosionsverhalten       |
|-----------|-----------|-----------------|
| Gold      | +1.50 V   | edel      |
| Platin    | +1.18 V   |       |
| Silber    | +0.80 V   |       |
| Kupfer    | +0.34 V   |       |
| Wasserstoff | +0.00 V  | neutral  |
| Zinn      | -0.14 V   |   |
| Eisen     | -0.41 V   |   |
| Zink      | -0.76 V   |   |
| Titan     | -1.75 V   |   |
| Aluminium | -1.66 V   | unedel  |

---

## Wasserstoffkorrosion
- nur un sehr sauren Elektrolyten möglich
- tritt in Anwesenheit von Wasser aber in Abwesenheit von Sauerstoff auf
>Säurekorrosion

---

## Sauerstoffkorrosion
- die freien Elektronen reagieren mit dem Wasser zu Hydroxid-Ionen
$\text{H}_2\text{O} + \frac12\text{O}_2 + 2\text{e}^{-} \rightarrow 2\text{OH}^-$
$2\text{Fe}^{2+} + 4\text{(OH)}^- +\text{H}_2\text{O} + \frac12\text{O}_2 \rightarrow 2\text{Fe(OH)}_3$
- kann noch weiter zerfallen
![bg vertical](../assets/Figures/whitespace.png)
![bg fit](../assets/Figures/whitespace.png)
![bg  fit](https://upload.wikimedia.org/wikipedia/commons/9/97/Korrosion.svg)

---

## Physikalische Korrosion

- Aufgrund von Belastungen enstehen Mikrorisse oder Versetzungen an denen Korrosion beginnen kann
- Korrision findet in Kombination mit einer mechanischen Belastung (statische oder dynamische - schwingend) auf


---

## Korrosionsarten
- es gibt 36 Korrosionsarten laut [DIN EN ISO 8044](https://cdn.standards.iteh.ai/samples/71134/642505f174ad4feeb2eef113b494d4e4/ISO-8044-2020.pdf)

**Flächenkorrosion**
- großflächige Korrosion
- gut sichtbar und eher ungefährlich
- die Deckschicht sorgt für einen Korrosionsschutz
![bg fit right 80%](https://www.hausjournal.net/wp-content/uploads/Was-ist-Korrosion-720x480.jpg)

---

## Korrosionsarten
**Lochfraßkorrosion**
- bleibt lange unbemerkt
- können sich in der Tiefe trogförmig ausdehnen
![bg vertical right 1%](../assets/Figures/whitespace.png)
![bg fit](https://upload.wikimedia.org/wikipedia/commons/8/84/Pitting_corrosion-scheme.png)
![bg fit](https://upload.wikimedia.org/wikipedia/commons/b/b3/Corrosion.Pit.jpg)

---

## Korrosionsarten
**Spaltkorrosion**
- tritt an Metallteilen  in engen, nicht abgeschlossenen Spalten wie Überlappungen, aufgesetzten Stegen und bei nicht durchgeschweißten Schweißnähten auf
- schlecht sichtbar
- sollte in kritische Bereichen konstruktiv vermieden werden


---

## Korrosionsarten
**Interkristaline Korrosion**
- auch Kornzerfall genannt
- tritt an den Korngrenzen auf
- Reminder: Einfluss des Raumgitters - Angriff aggressiver Medien erfolgt an bevorzugten Ebenen
![bg right fit](https://upload.wikimedia.org/wikipedia/commons/2/28/Intergranular_corrosion.JPG)

---

## Sonstige Korrosionsarten

- [mirkobakterielle](https://en.wikipedia.org/wiki/Microbial_corrosion) Korrosion
  - Abwässern
  - Flugzeugtreibstoff
  - Pilzbefall
- Unterwanderungskorrosion
- Hochtemperaturkorrosion
- Spannungsrisskorrosion
    - die korrosionshemdende Schicht wird durchbrochen und es kommt zur Korrosion
- ...
---


# Korrosionsschutz 

## Übersicht

- Grundlagen der Korrosion
- Passiver Korrosionsschutz
  - Beschichtungen
  - Überzüge
- Aktiver Korrosionsschutz
  - Kathodischer Schutz
  - Anodischer Schutz

---

## Korrosion - Grundlagen

**Definition:** Reaktion eines metallischen Werkstoffs mit seiner Umgebung, die eine messbare Veränderung des Werkstoffs bewirkt

**Elektrochemische Korrosion:**
- Anodische Reaktion: $\text{Me} \rightarrow \text{Me}^{n+} + n\text{e}^-$ (Oxidation)
- Kathodische Reaktion: Elektronenaufnahme (Reduktion)

**Voraussetzungen:**
- Elektrochemisches Potenzial (Anode und Kathode)
- Elektrolyt (z.B. Feuchtigkeit)
- Leitende Verbindung

---

## Passiver Korrosionsschutz

**Prinzip:** Trennung des Werkstoffs von der korrosiven Umgebung

**Methoden:**
1. Metallische Überzüge
2. Organische Beschichtungen
3. Anorganische Beschichtungen
4. Chemische Umwandlung

➔ **Keine elektrochemische Reaktion während des Schutzes**

---

## Passiver Schutz - Metallische Überzüge

**Verzinken (Zn auf Fe):**
- Feuerverzinken: Eintauchen in Zinkschmelze (≈450°C)
- Galvanisches Verzinken: Elektrolytische Abscheidung
- Schichtdicke: 5-150 µm

**Verchromen (Cr auf Fe):**
- Hartverchromen: 25-250 µm, hohe Härte
- Glanzverchromen: 0.25-2 µm, dekorativ

**Funktion:** Mechanische Barriere + ggf. kathodischer Schutz

---

## Passiver Schutz - Organische Beschichtungen

**Lacke und Farben:**
- Primärschicht: Haftgrund mit Korrosionsinhibitoren
- Deckschicht: Schutz gegen Umwelteinflüsse

**Kunststoffbeschichtungen:**
- Pulverbeschichtung (Polyester, Epoxid)
- Tauchbeschichtung
- Schichtdicke: 60-300 µm

**Funktionsprinzip:** 
- Diffusionsbarriere gegen O₂, H₂O, Ionen
- Keine elektrische Leitfähigkeit

---

## Passiver Schutz - Anorganische Beschichtungen

**Phosphatieren:**
- Bildung von Eisenphosphat-Schicht
- Vorbereitung für Lackierung
- Schichtdicke: 1-5 µm

**Chromatieren:**
- Chrom(VI)-oxidschicht
- Heute oft ersetzt durch Passivierung

**Emaillieren:**
- Glasartige Schmelzschicht auf Stahl, Hohe chemische Beständigkeit
- Temperaturbeständig

---

## Aktiver Korrosionsschutz - Prinzip

**Grundidee:** Elektrochemische Beeinflussung des zu schützenden Metalls

**Zwei Verfahren:**

1. **Kathodischer Schutz:** 
   Werkstück wird zur Kathode gemacht
   
2. **Anodischer Schutz:** 
   Werkstück wird in passiven Bereich verschoben

➔ **Aktive elektrochemische Prozesse**

---

## Kathodischer Schutz - Fremdstrom

**Prinzip:** Externe Gleichstromquelle

```
    (+) ───────────────── (-)
    │                      │
    │                      │
Fremd-                  Werkstück
anode                   (Kathode)
    │                      │
    └──────────┬───────────┘
            Elektrolyt
```

**Funktionsweise:**
- Elektronenzufuhr zum Werkstück
- Reduktion statt Oxidation: $\text{Me}^{n+} + n\text{e}^- \rightarrow \text{Me}$
- Potential wird unter Ruhepotential gesenkt

---

## Kathodischer Schutz - Fremdstrom 



<!-- _class: cols-2-1 -->

<div class=ldiv>

**Vorteile:**
- Potential einstellbar
- Große Flächen schützbar
- Überwachung möglich

**Nachteile:**
- Energiequelle notwendig
- Wartungsaufwand
- Kosten

</div>

<div class=rdiv>

**Anwendungen:**
- Pipelines
- Schiffe (Rumpf)
- Stahlbetonbauwerke
- Erdverlegte Tanks
</div>




---

## Kathodischer Schutz - Opferanode

**Prinzip:** Galvanisches Element mit unedlerem Metall

```
        Werkstück (Fe)    Opferanode (Zn)
        (Kathode, edler)  (Anode, unedler)
              │                  │
              │   e⁻ ──────>     │
              │                  │
              └────────┬─────────┘
                   Elektrolyt
                   
Zn → Zn²⁺ + 2e⁻  (Opferanode löst sich auf)
```

**Spannungsreihe:** Zn (-0.76 V) < Fe (-0.44 V)

---

## Kathodischer Schutz - Opferanode (Details)

<!-- _class: cols-2-1 -->

<div class=ldiv>

**Anodenmaterialien:**
- Zink: Für Stahl in Süßwasser, Boden
- Magnesium: Für Stahl in Süßwasser (stärkere Wirkung)
- Aluminium: Für Stahl in Meerwasser

**Funktionsweise:**
- Unedles Metall wird bevorzugt oxidiert
- Werkstück erhält Elektronen → Kathode
- Keine externe Stromquelle nötig


</div>

<div class=rdiv>

**Anwendungen:**
- Warmwasserspeicher (Mg-Anode)
- Schiffsrümpfe (Zn-Platten)
- Offshore-Plattformen

</div>


---

## Kathodischer Schutz - Vergleich

| Eigenschaft | Fremdstrom | Opferanode |
|-------------|------------|------------|
| Energiequelle | Extern (Netzteil) | Galvanisch (selbst) |
| Schutzbereich | Sehr groß (km) | Begrenzt (m) |
| Potential | Einstellbar | Fest (Material) |
| Wartung | Anode + Stromquelle | Anode ersetzen |
| Kosten | Hohe Betriebskosten | Niedrige Betriebskosten |
| Überwachung | Einfach | Schwierig |

---

## Anodischer Schutz

**Prinzip:** Werkstück wird in den passiven Bereich verschoben

**Passivierung:**
- Bildung einer dünnen Oxidschicht
- Nur bei passivierbaren Metallen (Cr, Ti, Al, rostfreier Stahl)
- Externe Stromquelle: Werkstück = Anode (+)

**Anwendung:** 
- Rostfreie Stähle in aggressiven Säuren
- Chemische Industrie (Tanks, Reaktoren)
- Selten im Vergleich zu kathodischem Schutz

---

## Anodischer vs. Kathodischer Schutz

**Anodischer Schutz:**
- Werkstück = Anode (positive Polarisation)
- Passive Oxidschicht wird stabilisiert
- Nur für passivierbare Metalle

**Kathodischer Schutz:**
- Werkstück = Kathode (negative Polarisation)
- Korrosionsreaktion wird verhindert
- Für alle Metalle anwendbar

---

## Aktiv vs. Passiv - Unterschiede

| Merkmal | Passiver Schutz | Aktiver Schutz |
|---------|-----------------|----------------|
| Prinzip | Barriere | Elektrochemische Beeinflussung |
| Beschädigung | Lokale Korrosion möglich | Gesamtschutz erhalten |
| Energiebedarf | Keiner | Fremdstrom: ja, Opferanode: nein |
| Wartung | Bei Beschädigung | Regelmäßig (Anoden) |
| Anwendung | Atmosphäre, allgemein | Elektrolytisch (Wasser, Boden) |

**Oft kombiniert:** Beschichtung + kathodischer Schutz

---

## Beispiel: Pipeline-Schutz

**Kombination von passiv und aktiv:**

1. **Passiv:** Kunststoff-Ummantelung (PE)
   - Hauptschutz gegen Korrosion
   - Mechanischer Schutz

2. **Aktiv:** Kathodischer Schutz (Fremdstrom)
   - Schutz bei Beschädigung der Ummantelung
   - Gleichrichterstationen alle 10-50 km
   - Überwachung des Potentials

➔ **Redundantes Schutzsystem**

---

## Beispiel: Schiffsrumpf

**Mehrschichtiger Schutz:**

1. **Passiv:** Beschichtungssystem
   - Grundierung (Epoxid)
   - Antifouling-Farbe

2. **Aktiv:** Opferanoden (Zink, Aluminium)
   - An Rumpf, Ruder, Welle
   - Schutz empfindlicher Bereiche

3. **Optional:** Fremdstrom-Anlage (ICCP)
   - Bei großen Schiffen
   - Automatische Potentialregelung

---

## Zusammenfassung

**Passiver Korrosionsschutz:**
- Trennung von Umgebung durch Beschichtungen/Überzüge
- Keine Energiezufuhr
- Wirksam in allen Umgebungen

**Aktiver Korrosionsschutz:**
- Elektrochemische Beeinflussung
- Kathodisch (häufig) oder anodisch (selten)
- Elektrolyt erforderlich
- Kombination mit passivem Schutz üblich


---

# Beschichten
## Definition
![bg right](https://quantec-industrieboden.de/wp-content/themes/emk_publisher/img_system/quantec/beschichtung_hover.png)

Unter [Beschichten](https://de.wikipedia.org/wiki/Beschichten) (englisch coating) ist das Aufbringen einer festhaftenden Schicht aus formlosem Stoff auf die Oberfläche eines Werkstückes. 


---
## Ziele?


---

- Abnutzung reduzieren
- Korrosionsschutz
- fehlenden Werkstoff ergänzen
- Erzeugen bestimmter Oberflächeneigenschaften

---

## Verfahrensgruppen

Unterscheidbar nahc Ausgangszustand des Beschichtungsmaterials


| Zustand   | Verfahren                             |
|-----------|---------------------------------------|
| Gasförmig | Chemische Gasphasenabscheidung, ...   |
| Flüssig   | Lackieren, Bemalen, Emailieren, ...   |
| Gelöst    | Galvanisieren, Verzinken, Chromatieren, ... |
| Fest      | Plasma-Pulver-Auftragsschweißen, Pulverbeschichten, ... |

---
# Lackieren

- mit Pinseln, Walzen oder Spritzen aufgetragen

<br/>
<iframe width="550" height="300" src="https://www.youtube.com/embed/GF6CwvIX1h8?start=9" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>




![bg right](https://www.hst-oberflaechenschutz.de/images/resource/HST_Antihaft_Beispiel_6agr.jpg)

---

## Auftragsschweißen
- Schweißraupe wird auf der Oberfläche angebunden 

Auftragsfläche


$\gamma = \frac{A_E}{A_E+A_A}100\%$
$\gamma$ sollte möglichst klein sein -> Einbrandtiefe $t$ und Einbrandfläche $A_E$ sind klein



---

<br/>
<iframe width="1150" height="500" src="https://www.youtube.com/embed/a4WS1jHU6Ro?start=30" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

---

**Referenzen**
Birgit Awiszus et al. (2007) "Grundlagen der Fertigungstechnik"

