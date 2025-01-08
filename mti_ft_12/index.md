---
marp: true

theme: default
header: ''
footer: ''
backgroundImage: url('../assets/styles/background.png')
title: MTI - Fertigungstechnik - Fügen
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


## Vorlesung MTI - Fügen
Prof. Dr.-Ing.  Christian Willberg<a href="https://orcid.org/0000-0003-2433-9183"><img src="../assets/styles/ORCIDiD_iconvector.png" alt="ORCID Symbol" style="height:15px;width:auto;vertical-align: top;background-color:transparent;"></a>
Hochschule Magdeburg-Stendal

![bg right](https://cdn.schuetz-licht.com/image/Wissen/Schweissnahtpruefung/A-Mass/Schweissnaht-Analyse.JPG)

Kontakt: christian.willberg@h2.de

---

# Definition
Fügen ist das Zusammenbringen von verschiedenen Werkstücken (Bauelementen) geometriscehr bestimmter fester Form oder von ebensolcheen Werkstücken mit formlosem Stoff oder Verbindungselementen. Dabei wird der Zusammenhalt zwischen den Elementen jeweils örtlich geschaffen oder vermehrt.

![bg right 70%](../assets/QR/mti_ft_12.png)

---

- gefügt werden können alle Arten von Werkstoffkombinationen
- nicht alle Fügeverfahren sind für alle Werkstoffe geeignet

---
## Verfahrensgruppen
- Zusammensetzen
- Füllen
- An- und Einpressen
- Fügen durch Urformen
- Fügen durch Umformen
- Fügen durch Schweißen
  - Pressschweißen
  - Schmelzschweißen

---

- Fügen durch Löten
  - Weichlöten
  - Hartlöten
  - Hochtemperaturlöten
- Kleben
  - mit physikalisch abbindenden Klebstoffen
  - mit chemisch anbindenden Klebstoffen

---
## Verbindungsarten
Stoffschluss
- Schweißen, Löten, Kleben

Formschluss 
- Nieten, Falzen, Umpressen

Kraftschluss
- Schrumpfen, Schrauben, Keilen

---

## Kraftschluss

![](http://www.iew.eu/wp-content/uploads/2017/03/Schrumpfen_05.jpg)

---
## Schraubenverbindungen

![](https://examio-mediafiles1.s3.eu-west-1.amazonaws.com/abb36-schraubenverbindungen-print.png)


---
| Durchsteckschraube                         | Einziehschraube                                                                 | Stiftschraube                                   |
|-------------------------------------------|---------------------------------------------------------------------------------|------------------------------------------------|
| Sechskantschraube, Zylinderschraube       | Die Verbindung wird erzeugt durch Verspannen mit einer Mutter.                  | Bei einer Stiftschraube wird der Schraubenkopf durch eine Mutter ersetzt. |
| In den Bohrungen ist kein Gewinde enthalten (Durchgangsbohrungen). | Hier wird das Verspannen realisiert durch den Einzug in ein Gewinde, welches in einem zu verbindenden Objekt enthalten ist. | Der Schraubenkopf kann zusätzlich versenkt werden oder aufliegen (siehe Durchsteckschraube). |

[Quelle](https://www.ingenieurkurse.de/technische-darstellungen-maschienenbau/normgerechtes-bemassen-in-einer-technischen-zeichnung/hinweise-zu-speziellen-schrauben-und-gewindebedingungen.html)


---

## Formschluss

- Verzahnungen
- Nuten und Federn
- Dübel in der Holzbearbeitung:
Dübel, die in entsprechend gebohrte Löcher eingefügt werden, um zwei Holzstücke miteinander zu verbinden.

![bg right 70%](https://cdn.shopify.com/s/files/1/0570/8706/6261/files/ladungssicherung-formschluessig.jpg?v=1703969772)
![bg vertical 90%](https://i0.wp.com/gisstec.de/wp-content/uploads/2017/08/Nutenstossen-Passfedernut-Keilwelle.jpg)

---

# Stoffschluss
## Schweißen
## Löten
## Kleben

---
## Schweißen
**Schmelzschweißverfahren**
- Wärme
- Stoffschluss durch Schmlzfluss der Fügeteile znd des Zusatzwerkstoffs

**Pressschweißverfahren**
- Druck oder Wärme und Druck
- Plastifizierung und örtliches Verformen der Fügeteile



![bg right 80%](https://cdn.schuetz-licht.com/image/Wissen/Schweissnahtpruefung/A-Mass/Schweissnaht-Analyse.JPG)

---
## Schweißbarkeit
- Schweißeignung (Werkstoff <-> Verfahren)
- Schweißsicherheit (Werkstoff <-> Konstruktion)
- Schweißmöglichkeit (Konstruktion <-> Verfahren)
![bg right fit](https://upload.wikimedia.org/wikipedia/commons/2/24/Schwei%C3%9Fbarkeit.png)

---


## Schweißeignung von Stählen

Abschätzung 
- unlegiert $C\leq 0.22\%$ -> schweißbar
- unlegiert bedingt schweißbar $0.22\%\leq C\leq 0.4\%$
Für Legierungen wird das sogenannte Kohlenstoffäquivalent bestimmt

$CE=C+\frac{Mn}{6}+\frac{Cr+Mo+V}{5}+\frac{Ni+Cu}{15}$
- $CE\leq 0.4\%$ Schweißeignung

---
## Schaeffler Diagramm
- anzuwenden bei hochlegierten Stählen

![bg right fit](https://prozesstechnik.industrie.de/wp-content/uploads/l/e/lexikon_pharmatechnologie_bild_LPT02_S_Abb01.png)


---

## Schweißsicherheit
- Konstruktive Gestaltung
  - Kraftflüsse im Bauteil
  - Anordnung von Schweißnähten
  - Werkstückdicke,
  - Kerbwirkung
  - Steifigkeitsunterschiede


---

Sicherheit wird verbessert, wenn
- keine Umlenkung des Kraftflusses
- ein- oder zweiachsiger Spannungszustand
- Kerben sind zu vermeiden
- kontinuierliche Übergänge bei Querschnitten

_Belastungen wie Temperaturen, Schwingungen, etc. sind zu berücksichtigen._


---

## Schweißmöglichkeit
- unter den vorhandenen Bedingungen muss die Schweißung fachgerecht durchgeführt werden können
- Vorbereiten (Fugenform, Stoßart, Vorwärmen, Schweißverfahren, etc.)
- Ausführen (Wärmeeinbringung, Wärmeführung, Schweißfolge)
- Nachbereiten/Nachbehandeln (Richten, Schleifen, Wärmebehandlung, etc.)

---
## Fugen

![bg right fit](https://media.springernature.com/original/springer-static/image/chp%3A10.1007%2F978-3-642-39501-7_8/MediaObjects/9393_9_De_8_Fig9_HTML.gif)

- Schweißquerschnitte unterscheiden sich je nach Verfahren

---

![bg 80%](../assets/Figures/schweissnaehte.png)
<div style="position: absolute; bottom: 10px; left: 1020px; color: blue; font-size: 20px;"> 
    <a href="https://www.schuetz-licht.de/wissen-normen-seminare/metallographie-metallografie/schweissnahtpruefung" style="color: blue;">Bildreferenz</a>
</div>


---

# Verfahren
- [Lichtbogenschweißen](https://youtu.be/DccNuexANYU?si=dfJZ-JXxicJaEArz&t=33)
- [Schutzgasschweißen](https://youtu.be/tQocMx5o6dE?si=rAnZihwb7wa5iW4K&t=160)
- [Unterpulverschweißen](https://youtu.be/N7R_7pM3L98?si=j8tyVHzNHpr66SiM&t=14)
[Gasschmelzschweißen](https://youtu.be/6SiwQfuhxa8?si=F9w9mjIDH6XixRLT&t=584)
---
## Lichtbogenschweißen
- Lichtbogen brennt zwischen einer abschmelzenden Metallelektrode und dem Werkstück
- die Elektrode ist gleichzeitig der Schweißzusatz
- kann mit und ohne Schutzgas (Argon, Helium, oder Gemische) durchgeführt werden

---
## Schutzgasschweißen

MSG - Metall Schutzgasschweißen
- unterteilt in MIG (Aluminium, Kupfer, Nickel, ..)
- MAG unlegierte und niedrig legierte und hoch legierte Stähle
- Elektrode wird abgeschmolzen

WIG - Wofram Internet Schweißen
- Lichtbogen brennt zwischen nicht abschmelzender Wolfram Elektrode und dem Werkstück
- Zusatzstab sorgt Schweißzusatz

---

## Gasschmelzschweißen / Autogenschweißen
- wird nur noch selten genutzt
- hohe Betriebskosten und geringe Produktivität
- im Handwerk oder auf Baustellen aufgrund der geringen Anschaffungskosten im Einsatz

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/e/e3/Oxyfuel_gas_welding_operation-de.svg)

---


## Widerstandspressschweißen

- nutzt den elktrischen Widerstand zum heizen

$Q= \int_0^{t_s} I^2 R dt = W_{elektrisch}$


![bg right 70%](https://upload.wikimedia.org/wikipedia/commons/5/5d/Spot_welding_1anim.gif)

- oft bei Dünnblechen im Einsatz

---
## Besonderheiten des Verfahrens

|Vorteile|  Nachteile |
|---|---|
|keine Nahtvorbereitung|  große Kerwirkung in einem Punkt |
|kurze Schweißzeiten|  geringe Dauerfestigkeit |
|gute Automatisierbarkeit| Kraftumlenkung infolge der Überlappungsverbindung  |
|kleine Wärmeflusszonen| schlechte Prüfbarkeit  |

---

## Reibschweißen
- notwendige Wärme wird durch Reibung erzeugt
- [rotierende](https://youtu.be/oO2xxweFl6A?si=UqGV7MPkqnBa7YEF&t=17) oder oszillierende Bewegung ([Ultraschallschweißen](https://youtu.be/Z4szktVnMLA?si=mta4acZfD2Q66tdt&t=13))

- sehr gute Festigkeitseigenschaften
- es bildet sich ein feinkristalines Gefüge aus
- Ermüdungsverhalten ist gut
- die konstruktive Gestaltung spielt bei Reibschweißbauteilen eine große Rolle

---

# Löten
- ein Material wird aufgeschmolzen und verbindet die Werkstücke

Vorteile
- Verbinden von verschiedenartigen Werkstoffen
- Verbinden von Nichtmetallen
- geringer Verzug und Wärmeeintrag
- kein Aufschmelzen des Grundwerkstoffs
- gute elektrische und Wärmeleitfähigkeit der Lötstellen

---
Nachteile
- Korrosionsgefahr aufgrund der Potentialunterschiede zwischen Lot und Grundwerkstoff
- Festigkeitseinbußen bei steigender Temperatur

---

- bis 450 °C: Weichlöten
- ab 450 °C: Hartlöten
- über 900 °C: Hochtemperaturlöten
![bg right 80%](https://tse1.mm.bing.net/th?id=OIP.5afDTb3Ps_6IZ4dBOnbBbAHaE8&pid=Api)

---

## Lote 
- meist Legierungen und selten reine Metalle
- Aufgabe die Grundwerkstoffe zu verbinden
- Lotschmelztemperatur muss niedriger sein als vom Grundwerkstoff
- wenigstens ein Legierungselement des Lots muss mit dem Grundwerkstoff einen Mischkristall bilden
- das Lot muss in der Lage sein den Grundwerkstoff zu benetzen

---

## Verfahren
[Kolbenlöten](https://youtu.be/Zyuvy_rMXcY?si=ZVhBF8cbG9LATCn-&t=5)
[Induktionslöten](https://www.youtube.com/watch?v=ToJfdgbvodc)
[Widerstandslöten](https://youtu.be/739HFTSdWT4?si=rWB0490lCOUIu5NQ)
  - direkt: Strom fließt über die Lötstelle
  - indirekt: Strom fließt nicht über die Lötstelle

...

---

# Kleben
Kohäsion - Klebstoff muss genug Festigkeit haben
Adhäsion - Klebstoff muss mit genügend Festigkeit am Fügeteil angebunden sein

![bg right 60%](https://heise.cloudimg.io/v7/_www-heise-de_/imgs/18/3/2/3/1/5/4/7/zersa_gte_rotorbla_tter_wea_recycling_c.jpg-c83f0d5959c06ce3.jpeg?org_if_sml=1&q=75&width=1600)
![bg vertical 60%](https://sika.scene7.com/is/image/sika/glo-robot-adhesive-application-metal-profile?wid=1280&crop=0%2C1843%2C3735%2C3637)


---

# Oberflächenbehandlung

- Oberfläche hat oft Verunreinigungen wie
  - Staub, Metallabieb ~$10^4-10^5$nm
  - Öle Fette ~$3$nm
  - Reaktionsschichte  ~$1-10$nm
  - Grundwerkstoff mit verändertem Gefüge
- Reinigen erfolgt
  - chemisch
  - mechanisch
  - entfetten
  
---

Kissing Bonds

---

+36


**Referenzen**
Birgit Awiszus et al. (2007) "Grundlagen der Fertigungstechnik"
