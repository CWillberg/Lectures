---
marp: true
theme: h2
header: 'DOE Seminar'
footer: ''
title: Werkstofftechnik II - DOE Seminar
author: Christian Willberg

style: |
  section {
    font-family: 'Segoe UI', sans-serif;
    font-size: 23px;
    padding: 38px 48px;
    color: #1e2a3a;
  }
  section h1 {
    font-size: 34px;
    color: #1a5276;
    padding-bottom: 8px;
    margin-bottom: 18px;
  }
  section h2 {
    font-size: 24px;
    margin-bottom: 12px;
  }
  section h3 {
    font-size: 20px;
    margin-bottom: 8px;
  }
  .aufgabe {
    background: #fdf2e9;
    border: 2px solid #e67e22;
    border-radius: 8px;
    padding: 14px 20px;
    margin: 10px 0;
  }
  .aufgabe strong {
    color: #d35400;
  }
  .loesung {
    background: #eafaf1;
    border-left: 4px solid #27ae60;
    padding: 12px 18px;
    margin: 10px 0;
    border-radius: 0 6px 6px 0;
  }
  .eq {
    background: #f4ecf7;
    border: 1px solid #c39bd3;
    border-radius: 8px;
    padding: 10px 20px;
    text-align: center;
    margin: 12px 0;
  }
  .hinweis {
    background: #eaf2f8;
    border-left: 4px solid #2e86c1;
    padding: 10px 16px;
    margin: 8px 0;
    border-radius: 0 6px 6px 0;
    font-size: 20px;
  }
  .zwei-spalten {
    display: flex;
    gap: 36px;
  }
  .zwei-spalten > div {
    flex: 1;
  }
  table {
    border-collapse: collapse;
    width: 100%;
    margin: 10px 0;
    font-size: 19px;
  }
  th {
    background: #1a5276;
    color: white;
    padding: 7px 12px;
    text-align: left;
  }
  td {
    padding: 6px 12px;
    border-bottom: 1px solid #d5dbdb;
  }
  tr:nth-child(even) td {
    background: #f2f3f4;
  }
  ul { padding-left: 20px; margin: 6px 0; }
  li { margin-bottom: 4px; }
---

<style>
footer { font-size: 14px; color: #888; text-align: right; }
img[alt="ORCID"] {
    height: 15px !important; width: auto !important;
    vertical-align: top !important; display: inline !important; margin: 0 !important;
}
</style>

# Seminar Werkstofftechnik II – Design of Experiments
Prof. Dr.-Ing. Christian Willberg [![ORCID](../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)

<div style="position: absolute; top: 200px; left: 850px;">
<img src="https://quickchart.io/qr?text=https://cwillberg.github.io/Lectures/wst2_mb_w5_DOE_seminar/&light=0000&size=300&centerImageUrl=https://raw.githubusercontent.com/CWillberg/Lectures/main/assets/QR/h2.png"
     style="height:380px;width:auto;vertical-align:top;background-color:transparent;">
</div>

Kontakt: christian.willberg@h2.de

---
<!--paginate: true-->

## Schritt 1 – Versuchsziel und Faktoren definieren

## Fragestellung

Wie beeinflussen Herstellungsparameter die **Zugfestigkeitskennwerte** von Stahlproben?

<div class="aufgabe">

**Aufgabe 1:** Bereiten Sie den Versuchsplan vor.

**a)** Sie untersuchen drei Faktoren mit je zwei Stufen. Wie viele Versuche umfasst ein vollständiger $2^3$-Plan?

**b)** Benennen Sie die Faktoren und tragen Sie die kodierten Stufen (−/+) in die Planmatrix ein.

| Faktor | − (untere Stufe) | + (obere Stufe) |
|---|---|---|
| A: Walztemperatur | 900 °C | 1100 °C |
| B: Umformgrad | 20 % | 60 % |
| C: Abkühlrate | langsam (Luft) | schnell (Wasser) |

**c)** Warum werden die Versuche in **zufälliger Reihenfolge** durchgeführt?

**d)** Nennen Sie die drei Antwortgrößen und begründen Sie deren Relevanz für die Anwendung.

</div>

---

<div class="loesung">

**a)** $2^3 = 8$ Versuche – alle Kombinationen der drei Faktoren auf je zwei Stufen.

**b)** Planmatrix:

| Nr | A | B | C |
|---|---|---|---|
| 1 | − | − | − |
| 2 | + | − | − |
| 3 | − | + | − |
| 4 | + | + | − |
| 5 | − | − | + |
| 6 | + | − | + |
| 7 | − | + | + |
| 8 | + | + | + |
</div>


---

<div class="loesung">
**c)** Randomisierung vermeidet systematische Störgrößen (Ofendrift, Chargenschwankung, Tageseffekte), die sonst mit Faktoreffekten konfundiert würden.

**d)** $R_{p0,2}$: Beginn plastischer Verformung (Auslegungsgrenze) · $R_m$: maximale Tragfähigkeit · $A$: Duktilität, sicherheitsrelevant für Versagensmode.

</div>

---

# Schritt 2 – Messwerte erfassen

<div class="aufgabe">

**Aufgabe 2:** Die Zugversuche liegen vor. Tragen Sie die Messwerte in den Plan ein und prüfen Sie die Plausibilität.

**a)** Ist der Trend von $R_m$ mit steigendem A, B, C physikalisch sinnvoll? Begründen Sie.

**b)** Warum sinkt $A$ [%] systematisch, wenn $R_m$ steigt?
</div>

---

<div class="aufgabe">
**c)** Welcher Versuchspunkt hat die **höchste Festigkeit**, welcher die **höchste Duktilität**?

| Nr | A | B | C | $R_{p0{,}2}$ [MPa] | $R_m$ [MPa] | $A$ [%] |
|---|---|---|---|---|---|---|
| 1 | − | − | − | 310 | 480 | 28 |
| 2 | + | − | − | 370 | 540 | 24 |
| 3 | − | + | − | 380 | 550 | 22 |
| 4 | + | + | − | 430 | 610 | 19 |
| 5 | − | − | + | 420 | 590 | 21 |
| 6 | + | − | + | 490 | 660 | 17 |
| 7 | − | + | + | 500 | 670 | 15 |
| 8 | + | + | + | 570 | 740 | 12 |

</div>

---



<div class="loesung">

**a)** Ja – höhere Walztemperatur → feineres Korn (Rekristallisation) → Hall-Petch. Höherer Umformgrad → Versetzungsdichte steigt → Kaltverfestigung. Schnelle Abkühlung → martensitisch/bainitisch → hohe Härte.

**b)** Festigkeit–Duktilitäts-Zielkonflikt: mehr Versetzungen / härtere Phasen behindern Gleitung → weniger plastische Dehnung bis Bruch. Grundprinzip der Werkstoffmechanik.

**c)**
- **Höchste Festigkeit:** Nr. 8 (A+, B+, C+) → $R_m = 740$ MPa, $A = 12\,\%$
- **Höchste Duktilität:** Nr. 1 (A−, B−, C−) → $A = 28\,\%$, $R_m = 480$ MPa

</div>

---

# Schritt 3 – Haupteffekte berechnen

## Effektformel

<div class="eq">

$$E_A = \frac{1}{4}\left[(y_2-y_1)+(y_4-y_3)+(y_6-y_5)+(y_8-y_7)\right]$$

</div>

<div class="aufgabe">

**Aufgabe 3:** Berechnen Sie die Haupteffekte für $R_m$ [MPa].

**a)** Wenden Sie die Formel auf Faktor A (Walztemperatur) an. Zeigen Sie den Rechenweg.

**b)** Berechnen Sie analog $E_B$ und $E_C$.

**c)** Welcher Faktor hat den **stärksten Einfluss** auf $R_m$?

**d)** Warum wird über **vier Differenzen** gemittelt und nicht nur eine gemessen?

</div>

---



<div class="loesung">

**a) Haupteffekt A** ($R_m$):

$$E_A = \frac{1}{4}\left[(540-480)+(610-550)+(660-590)+(740-670)\right]$$
$$= \frac{1}{4}\left[60+60+70+70\right] = \frac{260}{4} = \mathbf{+65\,\text{MPa}}$$

**b)**

$$E_B = \frac{1}{4}\left[(550-480)+(610-540)+(670-590)+(740-660)\right] = \frac{340}{4} = \mathbf{+85\,\text{MPa}}$$

$$E_C = \frac{1}{4}\left[(590-480)+(660-540)+(670-550)+(740-610)\right] = \frac{460}{4} = \mathbf{+115\,\text{MPa}}$$

**c)** Abkühlrate C hat den stärksten Einfluss ($+115$ MPa > $+85$ > $+65$).

**d)** Jede der vier Differenzen schätzt den A-Effekt bei einer anderen B×C-Kombination. Der Mittelwert macht die Schätzung unabhängig von Wechselwirkungen – das ist der Kern des faktoriellen Designs.

</div>

---

# Schritt 4 – Wechselwirkungen identifizieren

<div class="aufgabe">

**Aufgabe 4:** Untersuchen Sie die Wechselwirkung B×C.

**a)** Berechnen Sie den B-Effekt **getrennt** für C− und C+:

| | C− (Luft) | C+ (Wasser) |
|---|---|---|
| B−: Versuche | Nr. 1 und 2 | Nr. 5 und 6 |
| B+: Versuche | Nr. 3 und 4 | Nr. 7 und 8 |

**b)** Vergleichen Sie die beiden B-Effekte. Liegt eine Wechselwirkung vor?

**c)** Skizzieren Sie qualitativ ein Wechselwirkungsdiagramm: $R_m$ auf der y-Achse, B auf der x-Achse, je eine Linie für C− und C+.

**d)** Was bedeutet eine Wechselwirkung für die Praxis: Kann man Faktor B unabhängig von C optimieren?

</div>

---


<div class="loesung">

**a) B-Effekt bei C−** (Luftabkühlung):
$$\Delta R_m = \frac{(550+610)}{2} - \frac{(480+540)}{2} = 580 - 510 = +70\,\text{MPa}$$

**B-Effekt bei C+** (Wasserabkühlung):
$$\Delta R_m = \frac{(670+740)}{2} - \frac{(590+660)}{2} = 705 - 625 = +80\,\text{MPa}$$

**b)** +70 vs. +80 MPa – kleiner Unterschied → **schwache Wechselwirkung** B×C vorhanden, aber gering. Die Linien im Diagramm verlaufen annähernd parallel.

**c)** Annähernd parallele Linien mit C+ höher als C−, leicht divergierend bei B+.

**d)** Bei schwacher Wechselwirkung: Faktoren können **näherungsweise unabhängig** optimiert werden. Bei starker Wechselwirkung (kreuzende Linien) muss die Kombination gemeinsam gewählt werden.

</div>

<div class="hinweis">

Im Gegensatz zum OFAT-Härte-Beispiel ist die B×C-Wechselwirkung hier schwach – aber nur weil wir **alle Kombinationen gemessen** haben, wissen wir das sicher!

</div>

---

# Schritt 5 – Zielkonflikt erkennen

<div class="aufgabe">

**Aufgabe 5:** Analysieren Sie den Festigkeit-Duktilitäts-Zielkonflikt.

**a)** Tragen Sie alle 8 Versuchspunkte in ein $R_m$-$A$-Diagramm ein (Skizze genügt).

**b)** Berechnen Sie das Verhältnis $R_m \cdot A$ als einfaches Zähigkeitsmaß für alle 8 Punkte. Welcher Punkt hat den besten Kompromiss?

**c)** Eine Anwendung fordert: $R_m \geq 600\,\text{MPa}$ **und** $A \geq 17\,\%$. Welche Versuchspunkte erfüllen beide Bedingungen?

**d)** Wie würde eine **Desirability-Funktion** dieses Problem lösen? Skizzieren Sie das Prinzip.

</div>

---


<div class="loesung">

**b) Zähigkeitsmaß $R_m \cdot A$:**

| Nr | $R_m$ | $A$ | $R_m \cdot A$ |
|---|---|---|---|
| 1 | 480 | 28 | **13 440** |
| 2 | 540 | 24 | 12 960 |
| 3 | 550 | 22 | 12 100 |
| 4 | 610 | 19 | 11 590 |
| 5 | 590 | 21 | 12 390 |
| 6 | 660 | 17 | **11 220** |
| 7 | 670 | 15 | 10 050 |
| 8 | 740 | 12 | 8 880 |

→ Bester Kompromiss: **Nr. 1** (aber zu geringe Festigkeit für viele Anwendungen).

**c)** $R_m \geq 600$ und $A \geq 17\,\%$: **Nr. 4** (610 MPa / 19 %) und **Nr. 6** (660 MPa / 17 %) ✓

**d)** Desirability: Für jede Zielgröße eine Wunschfunktion $d_i \in [0,1]$ → Gesamtdesirability $D = (d_1 \cdot d_2 \cdots d_n)^{1/n}$ maximieren. Parameter, die beide $d_i$ hoch halten, gewinnen.

</div>

---

# Schritt 6 – Modell validieren

<div class="aufgabe">

**Aufgabe 6:** Das Modell aus dem $2^3$-Plan soll bestätigt werden.

Das lineare Modell für $R_{p0,2}$ lautet (vereinfacht):

<div class="eq">

$$\hat{R}_{p0,2} = \bar{y} + \frac{E_A}{2}\,x_A + \frac{E_B}{2}\,x_B + \frac{E_C}{2}\,x_C$$

</div>

mit $\bar{y} = 434\,\text{MPa}$, $E_A = +65$, $E_B = +82$, $E_C = +105$ (in MPa, $x_i \in \{-1,+1\}$).

**a)** Berechnen Sie $\hat{R}_{p0,2}$ für die Einstellung A+, B−, C+ ($x_A=+1$, $x_B=-1$, $x_C=+1$).

**b)** Der Bestätigungsversuch ergibt drei Messwerte: 487, 494, 491 MPa. Berechnen Sie Mittelwert und Standardabweichung.

**c)** Liegt die Vorhersage im 95%-Konfidenzintervall der Messung?

**d)** Was würden Sie tun, wenn die Abweichung > 10 % beträgt?

</div>

---


<div class="loesung">

**a) Modellvorhersage** für A+, B−, C+:

$$\hat{R}_{p0,2} = 434 + \frac{65}{2}(+1) + \frac{82}{2}(-1) + \frac{105}{2}(+1)$$
$$= 434 + 32{,}5 - 41{,}0 + 52{,}5 = \mathbf{478\,\text{MPa}}$$

<br>

Hinweis: Der Messwert im Plan (Nr. 6: 490 MPa) liegt nahe dran – Abweichung durch fehlende Wechselwirkungsterme im vereinfachten Modell.

**b)** $\bar{x} = (487+494+491)/3 = \mathbf{491\,\text{MPa}}$

$$s = \sqrt{\frac{(487-491)^2+(494-491)^2+(491-491)^2}{2}} = \sqrt{\frac{16+9+0}{2}} \approx \mathbf{3{,}5\,\text{MPa}}$$

**c)** KI: $491 \pm 4{,}30 \cdot \frac{3{,}5}{\sqrt{3}} = 491 \pm 8{,}7\,\text{MPa}$ → Bereich [482, 500 MPa]. Vorhersage 478 MPa liegt knapp außerhalb → Wechselwirkungsterm B×C sollte ergänzt werden.

**d)** Modell erweitern (Wechselwirkungen aufnehmen), Störgrößen prüfen, ggf. RSM mit Mittelpunkten verwenden.

</div>

---

# Gesamtübersicht – DoE-Ablauf am Zugversuch

| Schritt | Tätigkeit | Ergebnis |
|---|---|---|
| **1** | Faktoren & Stufen festlegen | $2^3$-Plan, 8 Versuche |
| **2** | Messwerte erfassen & prüfen | Plausibler Datensatz |
| **3** | Haupteffekte berechnen | C dominiert ($+115$ MPa) |
| **4** | Wechselwirkungen prüfen | B×C schwach vorhanden |
| **5** | Zielkonflikt analysieren | Nr. 4 und 6 als Kompromiss |
| **6** | Modell validieren | Abweichung < 2 % |

