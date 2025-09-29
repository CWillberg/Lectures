---
marp: true

theme: default
header: ''
footer: ''
backgroundImage: url('../assets/styles/background.png')
title: MTI - Korrosion
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


## Vorlesung MTI - Korrosion
Prof. Dr.-Ing.  Christian Willberg [![ORCID](../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)

![bg right](https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Rost.jpg/1920px-Rost.jpg)

Kontakt: christian.willberg@h2.de
Teile des Skripts sind von \
Prof. Dr.-Ing. Jürgen Häberle übernommen



---

<!--paginate: true-->

# Inhalte

![bg right 70%](../assets/QR/mti_ft_06.png)

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

## Korrosionsschutz 

- unterscheidbar zwischen passivem und aktivem Schutz
- passiv: Trennung von Metall und Elektrolyt / korrosivem Medium
- aktiv: vollständige Trennung ist nicht notwendig

---

## Korrosionsschutz

- Erarbeiten in Kleingruppen 10 Minuten - 15 Minuten Recherche
- 2 Gruppen
  - 3 passive Verfahren
  - 3 aktive Verfahren 
- kurze Vorstellung der Ergebnisse (Ruhig Tafel nutzen)
  - wesentliches "take away"

Übertragen in Moodle 

