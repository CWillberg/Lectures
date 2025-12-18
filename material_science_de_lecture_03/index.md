---
marp: true

theme: h2
header: ''
footer: ''

title: Vorlesung Datenanalyse
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


## Vorlesung Werkstofftechnik
Prof. Dr.-Ing.  Christian Willberg [![ORCID](../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)

![bg right fit](https://html.scirp.org/file/75341x12.png)

Kontakt: christian.willberg@h2.de

<div style="position: absolute; bottom: 10px; left: 520px; color: blue; font-size: 20px;"> 
    <a href="https://doi.org/10.1007/s42102-021-00079-6" style="color: blue;">Bildreferenz</a>
</div>


---

<!--paginate: true-->

# Warum?
- Automatisierung
- Integration digitaler Systeme im Maschinenbau
- Datenanalyse von komplexen Systeme -> 8 - 10 tausend Lastberechnungen pro Nacht

![bg right 60% fit](../assets/styles/qr-code.png)



---
## Repository

![bg right 60% fit](../assets/styles/git_code.png)


---

## Installation von Julia

- Powershell öffnen

Julia Installation
- winget install julia -s msstore
- starte Julia >julia
- ]
- write
    - add IJulia
    - add Plots
    - add CSV
    - add DataFrames
    - add Statistics
    - add FFT
    - add DSP

---

## Programmiersprachen
- Unterscheidung zwischen low level und high level Sprachen
- Objektorientiert vs. eher funktionale Programmierung


---


| Sprache | Vorteile                                    | Nachteile                                                      |
| ------- | ------------------------------------------- | --------------------------------------------------------------- |
| Python  | Einfach zu lernen und zu verwenden          | Langsam bei rechenintensiven Aufgaben; Versionsinkompatibilität |
| MATLAB  | Starke numerische Berechnungsfähigkeiten    | Kostenpflichtig; weniger flexibel als allgemeine Programmiersprachen, Zugänglichkeit |
| Julia   | Hohe Leistung und Flexibilität, Zugänglichkeit              | Verbreitung             |
| LabVIEW | Einfache Entwicklung von graphischen Programmen | Begrenzte Funktionalität außerhalb von Mess- und Steuerungsanwendungen |
| Excel   | Weit verbreitet und einfach zu verwenden    | Nicht geeignet für komplexe Berechnungen; schwer zu skalieren     |

---

## 
| Sprache | Vorteile                                    | Nachteile                                                      |
| ------- | ------------------------------------------- | --------------------------------------------------------------- |
| Java    | Plattformunabhängigkeit, robuste Sprache    | Längere Entwicklungszeiten im Vergleich zu anderen Sprachen; verbesserungsbedürftige GUI-Entwicklung |
| C++     | Hohe Leistung und effiziente Ressourcennutzung | Komplexität kann die Entwicklungsdauer erhöhen; erhöhtes Risiko von Speicherfehlern |
| Rust    | Sichere Speicherzuweisung, nebenläufige Sicherheit | Längere Kompilierungszeiten; steile Lernkurve                   |
| R       | Hervorragende Datenanalyse und -visualisierung | Langsam bei nicht-vektorisierten Operationen; weniger geeignet für allgemeine Programmierung |

---

## Beispiele

Install git
https://git-scm.com/download/win

In Powershell

git clone https://gitlab.com/lectures1000308/material-science/material_science_de_lecture_03.git

---

## Erste Schritte

julia

-> REPL

println("Hello World")

---

## Jupiter notbook

im REPL
> ]
> add IJulia
> notbook()

---

## Basis Operationen zum Rechnen

var = zeros(4)

var[1]=1
var[2]=1
var[3]=4
var[4]=1

2 .* var

---

## Basis Operationen

- Lesen und Schreiben von Dateien
- Visualisieren von Daten
- Einfache Berechnungen von Daten