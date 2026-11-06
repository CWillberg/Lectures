---
marp: true

theme: h2
header: 'Seminar: KI-Assistenz'
footer: ''

title: MTI - Seminar KI-Assistenz in der Qualitätskontrolle
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
.container{
  display: flex;
  gap: 1.5em;
  }
.col{
  flex: 1;
  }
.merke {
  border-left: 4px solid #d4a017;
  background-color: #fdf6e3;
  padding: 10px 15px;
  margin: 10px 0;
  border-radius: 4px;
}
.hinweis {
  border-left: 4px solid #2e86c1;
  background-color: #eaf2f8;
  padding: 10px 15px;
  margin: 10px 0;
  border-radius: 4px;
}
.aufgabe {
  border: 2px solid #e67e22;
  background-color: #fdf2e9;
  padding: 10px 15px;
  margin: 10px 0;
  border-radius: 8px;
}
.loesung {
  border-left: 4px solid #27ae60;
  background-color: #eafaf1;
  padding: 10px 15px;
  margin: 10px 0;
  border-radius: 4px;
}
.eq {
  border: 2px solid #c39bd3;
  background-color: #f4ecf7;
  padding: 10px 15px;
  margin: 10px 0;
  border-radius: 8px;
  text-align: center;
}
.box-a {
  background-color: #eafaf1;
  border: 2px solid #27ae60;
  border-radius: 8px;
  padding: 10px 15px;
}
.box-b {
  background-color: #fdf2e9;
  border: 2px solid #e67e22;
  border-radius: 8px;
  padding: 10px 15px;
}
table th {
  background-color: var(--accent-color);
  color: white;
}
table tr:nth-child(even) {
  background-color: var(--light-accent-color);
}
</style>

<!--paginate: true-->

# Seminar 1: KI-Assistenz in der Qualitätskontrolle
Wer entscheidet, wenn die Maschine unsicher ist?

---

## Ablauf (135 min)

| Minuten | Phase | Sozialform |
|:---|:---|:---|
| 10 | Einstieg: Szenario und Lernziele | alle |
| 20 | Aufgabe 1: Wie gut ist 95 % wirklich? | zu zweit |
| 25 | Aufgabe 2: Wer entscheidet? | fünf Gruppen |
| 15 | Pause | |
| 30 | Aufgabe 3: Bildschirm entwerfen | fünf Gruppen |
| 25 | Vorstellen und Gegenprüfung | Gruppen |
| 10 | Abschluss | alle |

<!-- Material: A3-Papier, Stifte. Gruppen vor Aufgabe 2 einteilen, je 4-5 Personen. -->

---

## Was Sie heute lernen

- Trefferquoten eines Prüfsystems richtig einordnen
- Entscheidungen zwischen Mensch und Automation begründet aufteilen
- eine Anzeige so gestalten, dass Vertrauen **kalibriert** bleibt
- Wissen aus MTI 03 und MTI 06 anwenden: Lunker, Abkühlung, Gefüge

<div class="merke">

**Aus MTI 01:** Zu wenig Vertrauen führt zum Umgehen der Technik, zu viel Vertrauen zu *Automation Bias*.

</div>

---

<style scoped>section{font-size:25px}</style>

## Szenario (erfunden)

Eine Gießerei fertigt Aluminium-Gussteile. Eine neue KI prüft die Bilder **jedes Bauteils** auf Lunker und Poren.

- 20 000 Bauteile pro Monat, also rund 1 000 pro Schicht
- Zwei Produkte
  - **Gehäusedeckel**: Fehler sind vor allem ein optisches Problem
  - **Radträger**: sicherheitsrelevant
- Bisher prüfen zwei Personen, künftig soll eine genügen
- Die Geschäftsführung sagt: *„Die KI erkennt 95 % aller Fehler. Das reicht.“*

<div class="hinweis">

Sie beraten die Gießerei. Ihr Auftrag: das System so einführen, dass Menschen es sinnvoll nutzen können.

</div>

---

<style scoped>section{font-size:25px}</style>

## Aufgabe 1: Wie gut ist 95 % wirklich? (20 min)

<div class="aufgabe">

**Gegeben**
- 20 000 Bauteile pro Monat, 0,5 % davon fehlerhaft
- Die KI erkennt 95 % der fehlerhaften Teile
- Die KI meldet 10 % der guten Teile fälschlich als fehlerhaft

**Gesucht**
1. Wie viele fehlerhafte Teile rutschen pro Monat durch?
2. Wie viele Meldungen gibt es insgesamt?
3. Wie viel Prozent der Meldungen sind echt?
4. Was bedeutet das bei 1 000 Teilen pro Schicht für die prüfende Person?

</div>

---

## Lösung Aufgabe 1

<div class="loesung">

- Fehlerhaft: $20\,000 \cdot 0{,}005 = 100$, gut: $19\,900$
- Erkannt: $100 \cdot 0{,}95 = 95$, also **5 Teile rutschen durch**
- Fehlalarme: $19\,900 \cdot 0{,}10 = 1\,990$
- Meldungen gesamt: $95 + 1\,990 = 2\,085$
- Echte Meldungen: $95 / 2\,085 \approx$ **4,6 %**

</div>

Pro Schicht sind das rund **104 Meldungen**, davon knapp **5 echt**.

---

## Was bedeutet das?

- Fast 19 von 20 Meldungen sind Fehlalarme
- Die prüfende Person lernt: *„Meistens ist nichts.“*
- Genau dann wird der eine echte Fehler leicht weggeklickt

<div class="merke">

**Alarmmüdigkeit:** Sind Fehler selten, sagt eine hohe Trefferquote wenig darüber aus, wie verlässlich eine einzelne Meldung ist.

</div>

**Diskussion:** Würde 99 % statt 95 % Erkennung das Problem lösen? Welche Zahl müsste sich wirklich ändern?

<!-- Antwort: Hebel ist die Fehlalarmrate. Bei 99 % Erkennung weiter 1990 Fehlalarme, 99/2089 = 4,7 %. Bei 1 % Fehlalarmrate: 199 Fehlalarme, 95/294 = 32 %. -->

---

## Aufgabe 2: Wer entscheidet? (25 min)

<div class="aufgabe">

Legen Sie für jeden Fall fest: **KI allein**, **KI und Mensch bestätigt** oder **Mensch allein**. Begründen Sie mit Risiko und Werkstoffwissen.

| # | Situation |
|:---|:---|
| 1 | Gehäusedeckel, KI: „i.O.“, Sicherheit 99 % |
| 2 | Radträger, KI: „i.O.“, Sicherheit 62 % |
| 3 | Radträger, KI: „Lunker“, Person sieht nichts, Schichtende, Liefertermin drängt |
| 4 | Radträger, Kühlung der Form fiel aus, KI: „i.O.“, Sicherheit 98 % |

</div>

---

## Hilfe zu Aufgabe 2

- Was passiert schlimmstenfalls, wenn die Entscheidung falsch ist?
- Kann die KI diesen Fall überhaupt gesehen haben?
- Fall 4: Wie ändert langsamere Abkühlung das Gefüge? (MTI 06)
- Wer haftet, und wer darf widersprechen?
- Was passiert, wenn der Mensch widerspricht und unrecht hat?

**Ergebnis:** eine Tabelle mit vier Regeln und je einem Satz Begründung

<!-- Erwartung: Fall 1 KI allein mit Stichproben. Fall 2 Mensch bestätigt. Fall 3 Sperren und Klärung, Termindruck darf nicht entscheiden; Widerspruch dokumentieren. Fall 4 Kernfall: langsamere Abkühlung, weniger Keime, gröberes Gefüge, geringere Festigkeit. Hohe KI-Sicherheit ist hier wertlos, weil das Bild nur Lunker und Poren prüft und dieser Zustand nicht trainiert wurde. Prozessdaten müssen die Automation stoppen. -->

---

# Pause

---

<style scoped>section{font-size:25px}</style>

## Aufgabe 3: Bildschirm entwerfen (30 min)

<div class="aufgabe">

Entwerfen Sie auf A3-Papier den Bildschirm für die prüfende Person. Er soll Ihre Regeln aus Aufgabe 2 umsetzen.

**Der Entwurf muss zeigen**
- die Empfehlung der KI und wie sicher sie ist
- *warum* sie das meint, zum Beispiel die markierte Bildstelle
- wann die KI außerhalb ihrer Erfahrung arbeitet
- wie die Person widerspricht und was dann passiert

</div>

**Bedingung:** Die Entscheidung muss in wenigen Sekunden möglich sein, bei 104 Meldungen pro Schicht.

---

## Vorstellen und Gegenprüfung (25 min)

Je Gruppe 3 min Vorstellung, 2 min Gegenprüfung durch die Nachbargruppe:

<div class="aufgabe">

1. Erkenne ich in 5 Sekunden, wie sicher die KI ist?
2. Würde dieser Bildschirm in Fall 4 warnen?
3. Kann ich leicht widersprechen?
4. Kann die Person mit der Zeit nur noch durchklicken?

</div>

---

## Abschluss

<div class="merke">

**Kalibriertes Vertrauen** entsteht nicht durch eine gute Prozentzahl, sondern durch Gestaltung: Die Technik zeigt ihre Grenzen, und der Mensch behält eine echte Entscheidung.

</div>

- Hohe Trefferquote ist nicht gleich verlässliche Meldung
- Die Entscheidungsrechte richten sich nach dem Risiko
- Werkstoffwissen bleibt nötig: Die KI kennt nur, was sie gesehen hat

**Transferfrage:** Wo in Ihrem Alltag klicken Sie Warnungen ungelesen weg?

---

## Referenzen

- R. Parasuraman, V. Riley: Humans and Automation: Use, Misuse, Disuse, Abuse, Human Factors 39 (1997), 230-253
- J. D. Lee, K. A. See: Trust in Automation: Designing for Appropriate Reliance, Human Factors 46 (2004), 50-80

Das Szenario und seine Zahlen sind erfunden.
