---
marp: true
header: 'Faserverbunde - Krafteinleitung und Fügetechniken in FKV II'
theme: h2
paginate: true
math: katex
---

<!-- _class: title -->

# Krafteinleitung und Fügetechniken in FKV II
## Klebverbindungen


Prof. Dr.-Ing. Christian Willberg
Hochschule Magdeburg-Stendal

<div style="position: absolute; top: 200px; left: 850px;"> 
<img src="https://quickchart.io/qr?text=https://cwillberg.github.io/Lectures/Faserverbundwerkstoffe/composites_14/&light=0000&size=300&centerImageUrl=https://raw.githubusercontent.com/CWillberg/Lectures/main/assets/QR/h2.png"
     style="height:380px;width:auto;vertical-align:top;background-color:transparent;">
</div>

---


# Vorteile der Klebverbindung

- Verschiedene Werkstoffe fügbar (GFK+Al, CFK+Ti …)
- Keine thermischen Eigenspannungen (kein Schweißen)
- Kein Querschnittsverlust, keine Kerbwirkung → höhere Anrissfestigkeit
- Gleichzeitig Dichtfunktion nutzbar
- Höhere Strukturdämpfung
- Klebungen + Bolzen: Lebensdauer ×3, Karosseriesteifigkeit ↑
- Passungen können gröber ausgeführt werden

---

# Nachteile und Klebstoffklassen

<!-- _class: cols-2 -->
<div class="ldiv">

**Nachteile:**
- Ausgeprägte **Spannungsspitzen** an Überlappungsenden
- Geringe Querzugfestigkeit → Schälspannungen vermeiden
- Temperatur + Feuchte reduzieren Festigkeit
- Streuung der Klebfestigkeit
- Aufwändige Fügeteilvorbehandlung
- Qualitätssicherung nur per ZfP möglich

</div>
<div class="rdiv">

**Klebstoffklassen:**

| Typ | $G_K$ [N/mm²] | Bruchdehnung |
|-----|--------------|--------------|
| Strukturkleber | > 10 | bis 70 % |
| Elastischer Kleber | 1–10 | 70–300 % |
| Dichtstoff | 0,1–1 | 300–700 % |

Übergänge sind fließend. Wahl hängt von Beanspruchung, Geometrie und Fertigungsbedingungen ab.

</div>

---

# Entstehung der Schubspannungsverteilung

<!-- _class: cols-2 -->
<div class="ldiv">

![h:380](./assets/Abb23.1.png)

</div>
<div class="rdiv">

**Ursache:**

Bei **dehnstarren** Fügeteilen → gleichförmige Schubverformung des Klebers.

Bei **elastischen** Fügeteilen → Dehnungsunterschiede an den Enden → dort maximale Schiebung.

> ⚠️ Die Spannungsspitzen an den Enden sind **dimensionierend** – nicht die mittlere Schubspannung!

</div>

<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild 23.1 aus H. Schürrmann "Konstruieren mit Faser-Kunststoff-Verbunden"
</div>

---

# Klebverbindungsgeometrien

![h:430](./assets/Abb23.2.png)

<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild 23.2 aus H. Schürrmann "Konstruieren mit Faser-Kunststoff-Verbunden"
</div>

---

# Spannungsanalyse – Schäftung

Die **Schäftung** (scarfed joint) ist konstruktiv besonders günstig – Spannungstransformation am schrägen Schnitt:

$$\sigma_\alpha = \sigma_x \cos^2\alpha \qquad \tau_\alpha = \frac{1}{2}\,\sigma_x \sin 2\alpha$$

![h:300](./assets/Abb23.3.png)

<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild 23.3 aus H. Schürrmann "Konstruieren mit Faser-Kunststoff-Verbunden"
</div>

---

# Schäftungswinkel und Vorteile

<!-- _class: cols-2 -->
<div class="ldiv">

![h:360](./assets/Abb23.4.png)

</div>
<div class="rdiv">

**Sinnvoller Schäftungswinkel:** $\alpha \approx 3°{-}10°$

> ✅ Bei ausreichend flachem $\alpha$: Versagen **außerhalb** der Schäftung möglich – Klebung nicht mehr dimensionierend!

**Sechs Vorteile der Schäftung:**
1. Vergrößerte Klebfläche
2. Überwiegend Schub, kaum Querzug
3. Gleichförmige Spannungsverteilung
4. Kein Biegemoment → keine Schälspannungen
5. Leichtbaugerecht (keine Materialdopplung)
6. Glatte Oberfläche (aerodynamisch)

**Nachteil:** Hoher Fertigungsaufwand für konstante Klebschichtdicke.

</div>

<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild 23.4 aus H. Schürrmann "Konstruieren mit Faser-Kunststoff-Verbunden"
</div>

---

# Volkersen-Modell: Längsgurt-Scheibe

**Annahmen:**
- Fügeteile: nur Längskräfte $N$, Kleber: nur Schubfluss $n_{xy}$, dehnschlaff
- Haftung ideal, lineares Elastizitätsgesetz

![h:300](./assets/Abb23.5.png)

$$\left(\frac{1}{E_1 t_1} + \frac{1}{E_2 t_2}\right) \tau_K - \frac{t_K}{G_K}\,\tau_K'' = 0$$

→ Homogene DGL 2. Ordnung, Lösung über Hyperbelfunktionen.

<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild 23.5 aus H. Schürrmann "Konstruieren mit Faser-Kunststoff-Verbunden"
</div>

---

# Volkersen-Lösung: Spannungsspitze

$$\frac{\tau_{K,\max}}{\bar{\tau}_K} = \frac{\rho}{2}\left[\coth\frac{\rho}{2} + \frac{1-\psi}{1+\psi}\tanh\frac{\rho}{2}\right]$$

$$\rho^2 = \left(1+\psi\right)\frac{G_K\,l_\ddot{u}^2}{E_1 t_1\,t_K} \qquad \psi = \frac{E_1 t_1}{E_2 t_2}$$

Für $\rho \geq 5$ (Spitze **unabhängig** von $l_\ddot{u}$):

$$\tau_{K,\max} = \bar{\tau}_K \cdot \sqrt{\frac{l_\ddot{u}\,G_K}{E_1 t_1\,t_K\,(1+\psi)}}$$

---

# Schubspannungsverläufe in der Klebung

<!-- _class: cols-2 -->
<div class="ldiv">

![h:380](./assets/Abb23.6.png)

</div>
<div class="rdiv">

Spitzen an den Enden bleiben **unverändert** – egal wie lang die Überlappung.

Die mittlere Schubspannung $\bar{\tau}_K$ sinkt mit steigendem $l_\ddot{u}$, die **Spitzen** nicht.

> ❗ Auf Basis der mittleren Schubspannung zu dimensionieren ist **falsch**!

</div>

<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild 23.6 aus H. Schürrmann "Konstruieren mit Faser-Kunststoff-Verbunden"
</div>

---

# Normalspannungsaufbau in den Fügeteilen

<!-- _class: cols-2 -->
<div class="ldiv">

![h:380](./assets/Abb23.7.png)

</div>
<div class="rdiv">

Bei **langer** Überlappung:
- Mittenbereich trägt nicht → $\tau_K = 0$
- Normalspannungen konstant im Mittenbereich

Bei **kurzer** Überlappung:
- Normalspannungen steigen nahezu linear an
- Schubspannungen über gesamte Länge aktiv

> ✅ Klebung verhält sich im Mittenbereich wie ein Mehrschichtenverbund.

</div>

<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild 23.7 aus H. Schürrmann "Konstruieren mit Faser-Kunststoff-Verbunden"
</div>

---

# Parameterdiskussion – Reduktion der Spannungsspitze

Für gleiche Fügeteile ($\psi = 1$):

$$\tau_{K,\max} = \frac{F_{10}}{b} \cdot \frac{1}{2} \sqrt{\frac{G_K}{E\,t\,t_K}}$$

| Maßnahme | Effekt | Anmerkung |
|----------|--------|-----------|
| Breite $b$ ↑ | $\tau_{K,\max}$ ↓ | **Wirksamste Maßnahme!** |
| Dehnsteifigkeit $Et$ ↑ | $\tau_{K,\max}$ ↓ | Steife Fügeteile günstiger |
| Schubmodul $G_K$ ↓ | $\tau_{K,\max}$ ↓ | Aber: weichere Fügung |
| Kleberdicke $t_K$ ↑ | $\tau_{K,\max}$ ↓ | Optimum 0,1–0,2 mm! |
| Überlappung $l_\ddot{u}$ ↑ | Wirkung begrenzt | Nur bis $\tilde{l}_\ddot{u}$ wirksam |

---

# Grenz-Überlappungslänge

> ❗ Ab der Grenz-Überlappungslänge $\tilde{l}_\ddot{u}$ sind die Spannungsspitzen von der Überlappungslänge **unabhängig**! Eine weitere Verlängerung hilft nicht.

$$\tilde{l}_\ddot{u} = 5\sqrt{\frac{E_1 t_1 t_K}{G_K(1+\psi)}}$$

**Konsequenz für Auslegung:**
- Nicht $l_\ddot{u}$ verlängern, sondern **Breite $b$ vergrößern**
- Wegen Plastizität: $l_\ddot{u} \geq 2\,\tilde{l}_\ddot{u}$ empfohlen

---

# Kleberplastizität

<!-- _class: cols-2 -->
<div class="ldiv">

![h:360](./assets/Abb23.11.png)

</div>
<div class="rdiv">

Kleber mit ideal elastisch-plastischem Verhalten und **hoher Bruchschiebung** können Spannungsspitzen abbauen → Umlagerung in den Mittenbereich.

- Flexible Klebstoffe erreichen oft **höhere Festigkeiten** als hartelastische
- Bedingung: ausreichend lange Überlappung für Umlagerung ($\geq 2\,\tilde{l}_\ddot{u}$)

> ⚠️ Im Betrieb liegt der Kleber im elastischen Bereich – Plastizität nur beim Bruchversuch nutzbar.

</div>

<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild 23.11 aus H. Schürrmann "Konstruieren mit Faser-Kunststoff-Verbunden"
</div>

---

# Langzeitverhalten

<!-- _class: cols-2 -->
<div class="ldiv">

![h:360](./assets/Abb23.12.png)

Spannungsumlagerung durch Kriech- und Relaxationsvorgänge. Nach langen Zeiten: konstante Schubspannung über $l_\ddot{u}$.

</div>
<div class="rdiv">

**Einflussfaktoren:**
- Temperatur + Feuchte → Festigkeitsreduktion
- Kriechen/Relaxation → Vergleichmäßigung
- UV-Strahlung, Medien → Alterung

**Schwingfestigkeit:**

</div>

<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild 23.12 aus H. Schürrmann "Konstruieren mit Faser-Kunststoff-Verbunden"
</div>

---

# Schwingfestigkeit von Klebverbindungen

<!-- _class: cols-2 -->
<div class="ldiv">

![h:400](./assets/Abb23.13.png)

</div>
<div class="rdiv">

Ausreichend große Überlappungslänge → Spannungsumlagerung möglich → hohe Ermüdungsfestigkeit.

Häufig versagen bei Ermüdungsversuchen die **Fügeteile**, nicht die Klebung.

> ✅ Klebungen können bei optimaler Ausführung ausgezeichnete Ermüdungsfestigkeiten erreichen.

</div>

<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild 23.13 aus H. Schürrmann "Konstruieren mit Faser-Kunststoff-Verbunden"
</div>

---

# Optimale Klebschichtdicke

<!-- _class: cols-2 -->
<div class="ldiv">

![h:320](./assets/Abb23.17.png)

Statische Klebfestigkeit in Abhängigkeit der Klebschichtdicke

</div>
<div class="rdiv">

![h:320](./assets/Abb23.18.png)

Zeitstanddauer bis zum Bruch

</div>

> ✅ Eindeutiges Optimum: $t_K = 0{,}05{-}0{,}15$ mm (gut merkbar: **0,1 mm**). Sowohl Statik als auch Zeitstand bestätigen diesen Wert.

<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bilder 23.17 und 23.18 aus H. Schürrmann "Konstruieren mit Faser-Kunststoff-Verbunden"
</div>

---

# Oberflächenvorbehandlung – Schritte

<!-- _class: cols-2 -->
<div class="ldiv">

**Schritt 1: Säubern / Entfetten**
- Aceton (Brandgefahr), Dampfentfettung
- Wassertest: Tropfen breitet sich gleichmäßig aus = gut benetzbar

**Schritt 2: Mechanische Behandlung**
- Schleifen (Schleifpapier 120 Korn)
- Sandstrahlen (trocken, ölfrei)
- FKV: Abreißgewebe abziehen → aktivierte Bruchfläche

**Schritt 3: Chemische Behandlung** *(bei Al für Luftfahrt)*
- Beizen → metallisch blanke Fläche
- Oxidationsbeizen → adhäsionsfördernde Schicht

**Schritt 4: Primer auftragen**
- Schutz gegen Feuchteunterwanderung
- Unbedingt bei Al unter Feuchteeinwirkung!

</div>
<div class="rdiv">

![h:220](./assets/Abb23.15.png)

Abdruck eines Abreißgewebes: vergrößerte wirksame Oberfläche

> ⚠️ Vorbehandlung unmittelbar vor der Klebung durchführen. Vorbehandelte Flächen nicht mit bloßen Händen berühren!

</div>

<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild 23.15 aus H. Schürrmann "Konstruieren mit Faser-Kunststoff-Verbunden"
</div>

---

# Einfluss der Oberflächenbehandlung

![h:430](./assets/Abb23.16.png)

<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild 23.16 aus H. Schürrmann "Konstruieren mit Faser-Kunststoff-Verbunden"
</div>

---

# Maßnahme 1: Querdruck überlagern

<!-- _class: cols-2 -->
<div class="ldiv">

Gleichzeitig wirkende Querdruckspannungen $\sigma^-$ steigern die ertragbare Schubspannung **erheblich**.

Realisierung:
- Presssitze
- Klemmverbindungen
- Vorgespannte Bolzen

</div>
<div class="rdiv">

![h:380](./assets/Abb23.19.png)

</div>

<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild 23.19 aus H. Schürrmann "Konstruieren mit Faser-Kunststoff-Verbunden"
</div>

---

# Maßnahme 2: Gradientenklebung

<!-- _class: cols-2 -->
<div class="ldiv">

- **Weiches Ende** (kleines $G_K$): Spannungsspitzen reduziert
- **Hartes Zentrum** (großes $G_K$): Mittenbereich stärker zur Lastaufnahme herangezogen
- Spannungsverteilung vergleichmäßigt sich

</div>
<div class="rdiv">

![h:360](./assets/Abb23.20.png)

</div>

<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild 23.20 aus H. Schürrmann "Konstruieren mit Faser-Kunststoff-Verbunden"
</div>

---

# Maßnahme 3: Keilförmige Klebfuge

<!-- _class: cols-2 -->
<div class="ldiv">

Größere Kleberdicke $t_K$ an den Enden → lokale Schubnachgiebigkeit ↑.

Möglich ist es, die Spannungsspitze sogar unter die mittlere Schubspannung abzusenken.

Bereits eine einfache **Anfasung** der Fügeteilenden reicht aus.

</div>
<div class="rdiv">

![h:380](./assets/Abb23.21.png)

</div>

<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild 23.21 aus H. Schürrmann "Konstruieren mit Faser-Kunststoff-Verbunden"
</div>

---

# Maßnahme 4: Kleber-Kehle

<!-- _class: cols-2 -->
<div class="ldiv">

Herausgequetschter Kleber bildet Kehlnaht → Spannungsspitze reduziert.

- Ermüdungsfestigkeit: Bruchlastzahl **×7** gegenüber ohne Kehle
- Kanten der Fügeteile **stark verrunden** – scharfe Kanten in Kleber = Kerbwirkung!

</div>
<div class="rdiv">

![h:380](./assets/Abb23.22.png)

</div>

<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild 23.22 aus H. Schürrmann "Konstruieren mit Faser-Kunststoff-Verbunden"
</div>

---

# Maßnahme 5: Angstniete gegen Schälung

<!-- _class: cols-2 -->
<div class="ldiv">

Niete am Überlappungsende nehmen Schälkräfte auf → auf **Kopfzug** dimensionieren (nicht Scherung).

Alternativ: Falz, lokale Aufdickung.

> ⚠️ Schälspannungen sind die **größte Gefahr** für Klebungen – konstruktiv immer ausschließen, nicht nur rechnerisch nachweisen!

</div>
<div class="rdiv">

![h:380](./assets/Abb23.23.png)

</div>

<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild 23.23 aus H. Schürrmann "Konstruieren mit Faser-Kunststoff-Verbunden"
</div>

---

# Zusammenfassung – Auswahl des Fügeprinzips

| Kriterium | Schlaufe | Bolzen | Klebung |
|-----------|----------|--------|---------|
| **Lastgröße** | Sehr hoch, punktuell | Hoch, flächig | Mittel, flächig |
| **Fügeteildicke** | – | Dick | Dünn |
| **Lösbarkeit** | Nein | Ja | Nein |
| **Qualitätssicherung** | Schwierig | Einfach | ZfP notwendig |
| **Temperaturempfindlichkeit** | Gering | Gering | Hoch |
| **Bevorzugter Werkstoff** | GFK (UD) | FBL-Laminat | FKV + Metall |
| **Gütegrad** | 50–80 % | 40–70 % | Hoch bei opt. Design |

> ✅ **Kombinationen nutzen:** Kleben + Bolzen verlängert Lebensdauer ×3. Schlaufe + Laminat durch Verspreizen. Hybridschlaufe GFK/CFK bei großen Radienverhältnissen.

---

# Gestaltungsregeln – Schlaufenanschluss

- Parallelschlaufe bevorzugen
- $r_a/r_i$ klein halten → Breite $b$ vergrößern statt Wanddicke erhöhen
- Orthotropiegrad $E_\parallel/E_\perp$ klein (GFK günstiger als CFK-HM)
- Seitliche Stützung **immer** vorsehen (Faktor 3–4!)
- Dünne Streifen oder Kaskade für große Querschnitte
- PTFE-Folie zwischen Strängen
- Bolzen eng / vorgespannt → kein Ovalieren
- FE-Analyse am Ablaufpunkt vom Bolzen zwingend

---

# Gestaltungsregeln – Bolzenverbindungen

- $d \approx t$ (Fügeteildicke), bei $t < 6$ mm: $d$ eher größer
- $e \geq 3d$, $w \geq 5d$, $p \geq 4d$
- Laminataufbau $(0/{\pm}45/90)_{50/40/10}$
- Lochleibungsversagen anstreben → alle anderen Formen ausschließen
- Senkköpfe wenn möglich vermeiden
- Mindestens **2 Bolzen** setzen (Momentenaufnahme)
- CFK + Al-Niete → **ungeeignet** (Korrosion)
- Pressübermaß bei FKV vermeiden → Hülsen verwenden
- Unterlage beim Bohren auf Durchtrittsseite

---

# Gestaltungsregeln – Klebverbindungen

- Schälspannungen **konstruktiv** ausschließen
- Breite $b$ ist Hauptdimensionierungsgröße
- Überlappungslänge $\geq 2\,\tilde{l}_\ddot{u}$
- Klebschichtdicke $t_K \approx 0{,}1$ mm
- Zweischnittige Fügung bevorzugen
- Oberflächenvorbehandlung nicht vernachlässigen
- Kehle stehen lassen, Kanten verrunden
- Gradientenklebung bei hohen Anforderungen
- Querdruck nutzen wo konstruktiv möglich

> ⚠️ In allen drei Fügekategorien: Analytische Rechnung liefert Vorauslegung – der **experimentelle Nachweis** am Prototypen ist immer erforderlich.

---



**Hauptquelle:**

Schürrmann, H.: *Konstruieren mit Faser-Kunststoff-Verbunden*. Springer-Verlag, Berlin, 2005. (Kapitel 21, 22, 23)

**Grundlagenwerke:**

Heslehurst, R. B.: *Defects and Damage in Composite Materials and Structures*. CRC Press, 2014.

Wiedemann, J.: *Leichtbau. Bd. 2: Konstruktion*. Springer-Verlag, Berlin, 1989.

**Schlaufenanschluss:**

Conen, H.: Deformation und Versagen von GFK-Strangschlaufen. *Kunststoffe* 56 (1966).

Winistörfer, A.: Development of non-laminated advanced composite straps. Diss. Warwick, 1999.

------

Wörndle & Daschner: Rechnerische Untersuchung von FVW-Strangschlaufen. *Z. Flugwiss.* 4 (1980).



**Bolzenverbindungen:**

Kraft & Schelling: Statische Tragfähigkeit von Nietverbindungen aus CFK/GFK. DLR IB 435-81/1, 1981.

Fink, A.: Metalllaminate für verstärkte Verbindungen. *SAMPE Symposium*, Braunschweig, 2006.

**Klebverbindungen:**

Volkersen, O.: Die Nietkraftverteilung in zugbeanspruchten Nietverbindungen. *Luftfahrtforschung* (1938).

Habenicht, G.: *Kleben*. Springer-Verlag, Berlin, 1990.

