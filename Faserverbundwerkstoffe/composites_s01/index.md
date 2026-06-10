---
marp: true
theme: h2
header: 'Seminar Festigkeit'
paginate: true
math: mathjax
---

<style>
.aufgabe {
  border: 2px solid #e67e22;
  background-color: #fdf2e9;
  padding: 15px;
  border-radius: 8px;
  margin: 10px 0;
}
.loesung {
  border-left: 4px solid #27ae60;
  background-color: #eafaf1;
  padding: 15px;
  margin: 10px 0;
}
.eq {
  border: 2px solid #c39bd3;
  background-color: #f4ecf7;
  padding: 15px;
  border-radius: 8px;
  text-align: center;
  margin: 10px 0;
}
.hinweis {
  border-left: 4px solid #2e86c1;
  background-color: #eaf2f8;
  padding: 15px;
  font-size: 20px;
  margin: 10px 0;
}
.zwei-spalten {
  display: flex;
  gap: 20px;
}
.zwei-spalten > * {
  flex: 1;
}
h1 {
  font-size: 34px;
  color: #1a5276;
}
h2 {
  font-size: 24px;
}
h3 {
  font-size: 20px;
}
section {
  font-family: 'Segoe UI', sans-serif;
  font-size: 23px;
  color: #1e2a3a;
}
table th {
  background-color: #1a5276;
  color: white;
}
table tr:nth-child(even) {
  background-color: #f2f2f2;
}
</style>

<!-- _class: lead -->

# Seminar Festigkeit
## Versagen von UD-Schichten
### Kapitel 16 – Übungsaufgaben

---

# Aufgabe 1 – Versagensarten zuordnen

<div class="aufgabe">

Ordnen Sie die folgenden Beschreibungen der korrekten Versagensart zu (Faserbruch, Zwischenfaserbruch oder Delamination):

a) Ein Riss verläuft parallel zu den Fasern durch die Matrix einer einzelnen Schicht.
b) Unter hoher Längszugbelastung tritt „besenförmiges" Abspleißen auf.
c) Zwischen zwei benachbarten Schichten mit unterschiedlicher Faserorientierung entsteht eine flächige Trennung.
d) An einer Bohrungsflanke knicken Fasern in die Bohrung hinein.
e) Ein Riss verläuft unter ca. 53° zur Belastungsrichtung bei reinem Querdruck.

</div>

---

# Lösung 1

<div class="loesung">

a) **Zwischenfaserbruch (Zfb)** – Riss parallel zu den Fasern, durch Matrix und/oder Grenzfläche

b) **Faserbruch (Fb)** – Längszug-Faserbruch mit typischem besenförmigem Erscheinungsbild

c) **Delamination** – flächige Schichtentrennung durch interlaminare Spannungen

d) **Faserbruch (Fb)** – Schubknicken unter Längsdruckbeanspruchung $\sigma^-_\parallel$

e) **Zwischenfaserbruch (Zfb)** – Querdruck-Versagen: kein Druckbruch, sondern Schubversagen ($\tau_{\perp\perp}$) auf schräger Ebene

</div>

---

# Aufgabe 2 – Längszugfestigkeit $R^+_\parallel$

<div class="aufgabe">

Eine GFK-UD-Schicht wird aus E-Glasfasern ($R^+_f = 3400\;\text{MPa}$) und einem Epoxidharz gefertigt.

a) Berechnen Sie die Längszugfestigkeit $R^+_\parallel$ für die Faservolumenanteile $\varphi = 0{,}45$, $\varphi = 0{,}55$ und $\varphi = 0{,}65$.

b) Wie hoch ist die mikromechanische Faserspannung $\sigma_f$, wenn die makroskopische Spannung $\sigma_1 = 800\;\text{MPa}$ bei $\varphi = 0{,}55$ beträgt?

c) Nennen Sie drei Gründe, warum die berechneten Werte in der Praxis nicht erreicht werden.

</div>

---

# Lösung 2a

<div class="eq">

$$R^+_\parallel = R^+_f \cdot \varphi$$

</div>

<div class="loesung">

| $\varphi$ | $R^+_\parallel$ |
|---|---|
| 0,45 | $3400 \times 0{,}45 = \mathbf{1530\;\text{MPa}}$ |
| 0,55 | $3400 \times 0{,}55 = \mathbf{1870\;\text{MPa}}$ |
| 0,65 | $3400 \times 0{,}65 = \mathbf{2210\;\text{MPa}}$ |

Linearer Zusammenhang – Verdoppelung von $\varphi$ verdoppelt $R^+_\parallel$.

</div>

<div class="hinweis">

Gl. 16.2 gilt unter der Annahme $E_f \gg E_m$ (Matrix-Traganteil vernachlässigt). Die Formel eignet sich auch zur Umrechnung gemessener Festigkeiten auf andere Faservolumenanteile.

</div>

---

# Lösung 2b

<div class="loesung">

Bei Vernachlässigung des Matrix-Traganteils:

$$\sigma_f \approx \frac{\sigma_1}{\varphi} = \frac{800}{0{,}55} = \mathbf{1455\;\text{MPa}}$$

Die mikromechanische Faserspannung ist fast **doppelt so hoch** wie die makroskopisch anliegende Spannung!

</div>

---

# Lösung 2c

<div class="loesung">

Drei Gründe für die Abminderung gegenüber dem Rechenwert:

1. **Vorschädigungen** – Fasern werden bei der Verarbeitung (Umlenkungen, Führungen) geschädigt
2. **Ungleichmäßige Lastverteilung** – unterschiedliche Faserausrichtung und Vorspannung → nicht alle Fasern tragen gleichmäßig
3. **Festigkeitsstreuung** der Einzelfilamente – früh brechende Fasern überlasten Nachbarn → Kettenreaktion → Gesamtfestigkeit sinkt

</div>

---

# Aufgabe 3 – Schubknicken

<div class="aufgabe">

Für eine GF-EP-UD-Schicht gilt: $G_{\perp\parallel,0} = 4900\;\text{MPa}$.

a) Welche maximale Längs-Druckfestigkeit $R^-_\parallel$ ist theoretisch erreichbar und unter welcher Bedingung?

b) Erklären Sie, warum dieser Wert in der Praxis nicht erreicht wird.

c) Wie wirkt sich eine Erhöhung der Faser-Fehlorientierung $\varphi_0$ von 1° auf 3° qualitativ auf $R^-_\parallel$ aus?

d) Welchen Einfluss hat eine überlagerte Schubspannung $\tau_{21,0}$?

</div>

---

# Lösung 3a–b

<div class="loesung">

**a)** Im Verzweigungsfall (ideale Faserausrichtung, $\varphi_0 = 0$):

<div class="eq">

$$R^-_\parallel = G_{\perp\parallel} = \mathbf{4900\;\text{MPa}}$$

</div>

**b)** Dieser Wert wird **nie** erreicht, weil:
- Perfekte Faserausrichtung existiert nicht – es liegen immer lokale Faserwelligkeiten vor
- Es handelt sich dann nicht um ein Stabilitäts-, sondern um ein **Spannungsproblem**
- Schon kleine Fehlorientierungen führen zu starker Absenkung von $R^-_\parallel$

</div>

---

# Lösung 3c–d

<div class="loesung">

**c)** Der Festigkeitsabfall ist bei **kleinen** $\varphi_0$ besonders steil:
- Von $\varphi_0 = 0°$ auf $1°$: dramatischer Abfall (z.B. von 4900 auf ca. 2000 MPa)
- Von $\varphi_0 = 1°$ auf $3°$: weiterer Abfall, aber relativ geringer (degressive Kurve)

→ Fertigungsqualität ist **entscheidend** bei kleinen Fehlorientierungen!

**d)** Überlagerte Schubspannung $\tau_{21,0}$:

$$\sigma^-_\parallel = \frac{\tau_{\perp\parallel} - \tau_{21,0}}{\varphi_0 + \gamma_{\perp\parallel}}$$

- Reduziert die effektive Schubkraft → $R^-_\parallel$ sinkt
- Besonders stark bei $\varphi_0 = 0°$
- Nahezu **linearer** Zusammenhang bei realistischen $\varphi_0$-Werten

</div>

---

# Aufgabe 4 – Wirkebene vs. Bruchebene

<div class="aufgabe">

a) Erklären Sie den Unterschied zwischen **Festigkeit** und **Wirkebenen-Bruchwiderstand** nach Puck.

b) Füllen Sie die Tabelle aus:

| Beanspruchung | Wirkebene = Bruchebene? | $R = R^A$? |
|---|---|---|
| $\sigma^+_\perp$ (Querzug) | | |
| $\sigma^-_\perp$ (Querdruck) | | |
| $\tau_{\perp\parallel}$ (Quer-Längs-Schub) | | |
| $\tau_{\perp\perp}$ (Quer-Quer-Schub) | | |

c) Warum erfolgt der Bruch bei reinem Querdruck unter ca. 53° und nicht unter 45°?

</div>

---

# Lösung 4a

<div class="loesung">

**Festigkeit** $R$: Bruchspannung dividiert durch Querschnittsfläche – ohne Rücksicht darauf, ob der Bruch in der Wirkebene erfolgt.

**Wirkebenen-Bruchwiderstand** $R^A$: Der Widerstand, den eine Schnittebene ihrem Bruch infolge einer **einzeln** in ihr wirkenden Beanspruchung entgegensetzt.

Bei der UD-Schicht können beide übereinstimmen – müssen es aber nicht! Die UD-Schicht ist in verschiedenen Richtungen unterschiedlich hoch belastbar, so dass der Bruch auf einer **anderen** Schnittebene auftreten kann als der Wirkebene.

</div>

---

# Lösung 4b

<div class="loesung">

| Beanspruchung | Wirkebene = Bruchebene? | $R = R^A$? |
|---|---|---|
| $\sigma^+_\perp$ (Querzug) | **Ja** | $R^+_\perp = R^{A+}_\perp$ ✅ |
| $\sigma^-_\perp$ (Querdruck) | **Nein** (Bruch unter 53°) | $R^{A-}_\perp \to \infty$ ❌ |
| $\tau_{\perp\parallel}$ (Quer-Längs-Schub) | **Ja** | $R_{\perp\parallel} = R^A_{\perp\parallel}$ ✅ |
| $\tau_{\perp\perp}$ (Quer-Quer-Schub) | **Nein** (Bruch unter 45°) | $R_{\perp\perp} \neq R^A_{\perp\perp}$ ❌ |

</div>

<div class="hinweis">

Nur bei $\tau_{\perp\perp}$: Die Indizierung mit „A" ist **unerlässlich**! $R^A_{\perp\perp}$ darf niemals mit $R_{\perp\perp}$ verwechselt werden.

</div>

---

# Lösung 4c

<div class="loesung">

Bei reinem Querdruck $\sigma^-_\perp$ wird die Schubbeanspruchung $\tau_{\perp\perp}$ unter **45°** maximal – eigentlich wäre dort der Bruch zu erwarten.

Jedoch wirkt auf der 45°-Schnittfläche zusätzlich eine **Querdruckkomponente**:

$$\sigma_\perp^- \cdot \cos^2\theta_{fp}$$

Diese erzeugt **innere Reibung**, die den Bruch auf der 45°-Ebene erschwert.

Der Bruch weicht daher auf eine **steilere Ebene** (~53°) aus, auf der:
- Die Querdruckkomponente **stärker abgefallen** ist
- Der $\tau_{\perp\perp}$-Schubanteil noch **ausreichend hoch** ist

→ Auf der 53°-Ebene liegt der **niedrigste Bruchwiderstand** $R^A_{\perp\perp}$ vor.

</div>

---

# Aufgabe 5 – Dehnungsvergrößerung

<div class="aufgabe">

Gegeben: GF-EP-UD-Schicht mit quadratischer Faserpackung.

- $E_{f\perp} = 73000\;\text{MPa}$ (Glasfaser, isotrop)
- $E_m = 3400\;\text{MPa}$
- $\varphi = 0{,}60$

a) Berechnen Sie den maximalen Dehnungsvergrößerungsfaktor $f_{\varepsilon,\text{max}}$.

b) Das EP-Reinharz hat eine Bruchdehnung von $\varepsilon_m = 5\%$. Schätzen Sie die Quer-Bruchdehnung $\varepsilon_\perp$ der UD-Schicht ab.

c) Berechnen Sie $f_{\varepsilon,\text{max}}$ für eine CFK-HT-UD-Schicht mit $E_{f\perp} = 15000\;\text{MPa}$, $E_m = 3400\;\text{MPa}$, $\varphi = 0{,}60$. Vergleichen und interpretieren Sie.

</div>

---

# Lösung 5a

<div class="eq">

$$f_{\varepsilon,\text{max}} = \frac{1}{1 - \sqrt{\dfrac{\varphi}{\pi}} \cdot \left(1 - \dfrac{E_m}{E_{f\perp}}\right)}$$

</div>

<div class="loesung">

$$\sqrt{\frac{0{,}60}{\pi}} = \sqrt{0{,}1909} = 0{,}4370$$

$$1 - \frac{3400}{73000} = 1 - 0{,}0466 = 0{,}9534$$

$$f_{\varepsilon,\text{max}} = \frac{1}{1 - 0{,}4370 \times 0{,}9534} = \frac{1}{1 - 0{,}4166} = \frac{1}{0{,}5834}$$

$$\boxed{f_{\varepsilon,\text{max}} \approx 1{,}71 \quad\text{... Moment!}}$$

</div>

---

# Lösung 5a (korrigiert)

<div class="hinweis">

Die vereinfachte Formel mit $\sqrt{\varphi/\pi}$ ergibt moderate Werte. Der im Text genannte Faktor $f_\varepsilon \approx 6$ gilt für das **mittige Scheibchen** mit $l_m/l_0$ aus der quadratischen Packung:

$$\frac{l_m}{l_0} = 1 - \frac{2r}{l_0}, \quad \varphi = \frac{\pi r^2}{l_0^2} \Rightarrow \frac{2r}{l_0} = 2\sqrt{\frac{\varphi}{\pi}}$$

</div>

<div class="loesung">

$$\frac{l_m}{l_0} = 1 - 2\sqrt{\frac{0{,}60}{\pi}} = 1 - 2 \times 0{,}437 = 0{,}126$$

$$f_{\varepsilon,\text{max}} = \frac{1}{\frac{l_m}{l_0} + \frac{E_m}{E_{f\perp}}\left(1 - \frac{l_m}{l_0}\right)} = \frac{1}{0{,}126 + 0{,}0466 \times 0{,}874} = \frac{1}{0{,}167} \approx \boxed{6{,}0}$$

</div>

---

# Lösung 5b

<div class="loesung">

Abschätzung der Quer-Bruchdehnung:

$$\varepsilon_\perp \approx \frac{\varepsilon_m}{f_{\varepsilon,\text{max}}} = \frac{0{,}05}{6{,}0} \approx \boxed{0{,}0083 = 0{,}83\%}$$

In der Praxis liegt der Wert noch niedriger (ca. $\varepsilon_\perp \approx 0{,}4\%$), da:
- Spannungskonzentrationen an Kontaktstellen Faser–Matrix
- Fehlstellen, Poren, Haftungsmängel
- Inhomogene Faserverteilung

</div>

<div class="hinweis">

Vergleich: EP-Reinharz $\varepsilon_m \approx 5\%$ → GF-EP UD-Schicht $\varepsilon_\perp \approx 0{,}4\%$. Die hohe Bruchdehnung der Matrix bleibt fast vollständig **ungenutzt**!

</div>

---

# Lösung 5c

<div class="loesung">

CFK-HT mit $E_{f\perp} = 15000\;\text{MPa}$:

$$\frac{l_m}{l_0} = 0{,}126 \quad\text{(gleich, da gleicher } \varphi\text{)}$$

$$f_{\varepsilon,\text{max}} = \frac{1}{0{,}126 + \frac{3400}{15000} \times 0{,}874} = \frac{1}{0{,}126 + 0{,}227 \times 0{,}874} = \frac{1}{0{,}324} \approx \boxed{3{,}1}$$

</div>

**Vergleich:**

| | $E_{f\perp}/E_m$ | $f_{\varepsilon,\text{max}}$ |
|---|---|---|
| GFK (isotrop) | 21,5 | **6,0** |
| CFK-HT (anisotrop) | 4,4 | **3,1** |

→ C-Faser: niedrigeres $E_{f\perp}$ → Faser verformt sich quer mit → **deutlich geringere** Dehnungsvergrößerung. Positiver Effekt wird aber teils durch höhere thermische Eigenspannungen kompensiert.

---

# Aufgabe 6 – Tolerierbarkeit von Zfb

<div class="aufgabe">

Ein MSV-Bauteil wird unter statischer Last betrieben. In der FE-Analyse zeigt sich, dass in einzelnen Schichten die Zwischenfaserbruchgrenze lokal überschritten wird.

a) Unter welchen Bedingungen können Zfb ggf. toleriert werden?

b) Welche Zfb-Versagensform muss **unbedingt** vermieden werden und warum?

c) Nennen Sie vier nachteilige Auswirkungen von Zfb auf das Laminat.

</div>

---

# Lösung 6

<div class="loesung">

**a)** Zfb können unter folgenden Bedingungen toleriert werden:
- Zfb durch $\sigma^+_\perp$ oder $\tau_{\perp\parallel}$ (nicht durch $\sigma^-_\perp$)
- Überlasten mit **sehr geringer** Eintrittswahrscheinlichkeit
- Bauteil wird danach **getauscht**

**b)** Der **Keilbruch** (Bruchmodus C, durch $\sigma^-_\perp$) muss unbedingt vermieden werden:
- Bruch unter 53° → Bruchflächen gleiten aufeinander ab
- Das Laminat wird **aufgesprengt** → **katastrophales Totalversagen**

**c)** Nachteilige Auswirkungen:
1. $G_{\perp\parallel}$ sinkt → $R^-_\parallel$ wird reduziert (Schubknicken begünstigt)
2. Zfb sind Ausgangspunkt von **Delaminationen** → Stabilitätsverlust
3. **Kerbwirkung** auf Nachbarfasern → Ermüdungsfestigkeit sinkt
4. Erhöhte **Feuchtigkeitsaufnahme** → aggressive Medien greifen Fasern an

</div>

---

# Aufgabe 7 – Das „Knie"

<div class="aufgabe">

Im Spannungs-Dehnungs-Diagramm eines (0/90)-GFK-Kreuzverbunds ist ein deutliches „Knie" zu erkennen.

a) Was verursacht das Knie?

b) Warum ist das Knie bei GFK deutlich ausgeprägter als bei CFK?

c) Bei welcher ungefähren Dehnung tritt das Knie bei GFK auf? Wie groß ist die Faser-Bruchdehnung? Welche Schlussfolgerung ergibt sich daraus?

d) Wie lässt sich **nachweisen**, dass ein Laminat über das Knie hinaus belastet wurde?

</div>

---

# Lösung 7

<div class="loesung">

**a)** Das Knie entsteht durch **Zwischenfaserbruch** in der 90°-Schicht (Querzugversagen). Es äußert sich als Steifigkeitsverlust. Auch als „Knistergrenze" bezeichnet (hörbar, SEA-detektierbar).

**b)** GFK: Glasfaser ist **isotrop** → hohe Quersteifigkeit $E_\perp$ → kleiner Orthotropiegrad $E_\perp/E_\parallel$ → Steifigkeitsanteil der 90°-Schicht groß → ausgeprägtes Knie.
CFK: niedrige Quersteifigkeit relativ zu sehr hoher $E_\parallel$ → weniger markant.

**c)** Knie bei GFK: $\varepsilon_\perp \approx 0{,}004$ (0,4%)
Faser-Bruchdehnung: $\varepsilon_\parallel \approx 0{,}02$ (2%)
→ Das **große Festigkeitspotenzial** der hohen Faserfestigkeit kann **nicht genutzt** werden!

**d)** Entlastung und erneute Belastung: Steigung ist **geringer** (Steifigkeitsverlust = irreversible Schädigung). Neues Knie erst bei Überschreiten der bisherigen Maximalspannung. Schallemission setzt erst dort wieder ein.

</div>

---

# Aufgabe 8 – Delamination

<div class="aufgabe">

a) Nennen Sie die zwei Arten interlaminarer Spannungen und geben Sie an, welche im Allgemeinen gefährlicher ist.

b) Beschreiben Sie drei typische Situationen, in denen Delaminationen auftreten.

c) Ein CFK-Laminat wird nach einer Schlagbelastung weiter auf Druck beansprucht. Warum ist dies besonders gefährlich?

d) Nennen Sie je zwei Maßnahmen zur Erhöhung des Risswiderstands und zur Verstärkung in z-Richtung.

</div>

---

# Lösung 8a–b

<div class="loesung">

**a)**
- **Interlaminare Schubspannungen** (ILS) – zwischen den Schichten
- **Interlaminare Normalspannungen** (Aufzieh-/Schälspannungen) – senkrecht zur Laminatebene

→ Die **Normalspannungen** (Schälspannungen) sind meist **gefährlicher**.

**b)** Drei typische Situationen:
1. **Zfb als Ausgangspunkt**: An Rissufer eines Zwischenfaserbruchs bauen sich ILS auf → bei Schwingbelastung wachsen Delaminationen
2. **Schlagbelastung** (Impact): Lokale Kombination aus Fb + Zfb + Delamination, bei CFK schlecht visuell erkennbar
3. **Freie Laminatränder**: Unterschiedliche Querkontraktion benachbarter Schichten → interlaminare Randspannungen → Delaminationen bei Ermüdung vom Rand nach innen

</div>

---

# Lösung 8c–d

<div class="loesung">

**c)** Nach Schlagbelastung liegen Delaminationen im Laminat vor:
- Die Biegesteifigkeit ist **drastisch reduziert**
- Bei Druckbelastung → frühzeitiges **Beulen** der aufgespaltenen Teillaminate
- → **Katastrophaler Kollaps**
- Spezieller Test: **CAI** (Compression After Impact)
- Bei CFK besonders kritisch: Schäden sind **visuell kaum erkennbar**

**d)**

| Risswiderstand erhöhen | z-Richtung verstärken |
|---|---|
| Zähmodifizierte Matrix | Vernähen |
| Zähe Thermoplast-Zwischenschichten | Z-Pins (UD-CFK-Stäbchen) |

</div>

<div class="hinweis">

Z-Pins und Vernähungen verhindern **nicht** die Entstehung einer Delamination – sie reduzieren lediglich die **Rissausbreitung**. Nachteil: Festigkeiten in der xy-Ebene werden gemindert.

</div>

---

# Aufgabe 9 – Bruchwiderstand $R^A_{\perp\perp}$

<div class="aufgabe">

Für eine GFK-UD-Schicht ist die Querdruckfestigkeit $R^-_\perp = 150\;\text{MPa}$ bekannt. Der Neigungsparameter beträgt $p^-_{\perp\perp} = 0{,}25$.

a) Berechnen Sie den Wirkebenen-Bruchwiderstand $R^A_{\perp\perp}$.

b) Warum kann $R^A_{\perp\perp}$ nicht direkt im Versuch gemessen werden?

c) Vergleichen Sie die Querdruckfestigkeit $R^-_\perp = 150\;\text{MPa}$ mit einer typischen Querzugfestigkeit $R^+_\perp = 50\;\text{MPa}$. Welche konstruktiven Möglichkeiten ergeben sich aus dem hohen $R^-_\perp$?

</div>

---

# Lösung 9

<div class="loesung">

**a)**

<div class="eq">

$$R^A_{\perp\perp} = \frac{R^-_\perp}{2(1 + p^-_{\perp\perp})} = \frac{150}{2 \times 1{,}25} = \frac{150}{2{,}5} = \boxed{60\;\text{MPa}}$$

</div>

**b)** Bei Quer-Quer-Schubbeanspruchung tritt der Bruch **nicht** in der Wirkebene von $\tau_{\perp\perp}$ auf, sondern unter 45° durch die Zug-Hauptspannung $\sigma^+_I$. Der Bruchwiderstand $R^+_\perp$ wird vorher überwunden → $R^A_{\perp\perp}$ kann nur **indirekt** aus $R^-_\perp$ bestimmt werden.

**c)** $R^-_\perp / R^+_\perp = 150/50 = 3$

Konstruktive Nutzung:
- **Klemmverbindungen** (Bolzen, Schrauben): Flächenpressungen bis ca. 120 MPa zulässig
- Große Unterlegscheiben zur Verteilung der Querdruckbelastung

</div>

---

# Aufgabe 10 – Konstruktive Maßnahmen

<div class="aufgabe">

Für jede der folgenden Situationen: Welche Versagensform ist kritisch und welche Verbesserungsmaßnahme ist am wirksamsten?

a) Blattfeder mit hoher faserparalleler Druckbeanspruchung auf der Biegedruckseite.

b) CFK-Flugzeugstruktur mit Anforderung an hohe Schlagtoleranz (Impact).

c) GFK-Druckbehälter mit hoher Querzugbelastung in Umfangsrichtung.

d) Laminat mit freien Rändern unter zyklischer Belastung.

</div>

---

# Lösung 10

<div class="loesung">

**a)** Kritisch: **Schubknicken** ($R^-_\parallel$)
→ Hoher Faservolumenanteil in der Druckzone, Matrix mit hohem Schubmodul, Fasern straff und ohne Welligkeit, ggf. anderes Matrixsystem in Druckzone

**b)** Kritisch: **Delamination** nach Impact → Beulgefahr unter Druck
→ Zähmodifizierte Matrix, Thermoplast-Zwischenschichten, z-Verstärkung (Vernähen, Z-Pins), CAI-Test zur Qualifikation

**c)** Kritisch: **Zwischenfaserbruch** durch $\sigma^+_\perp$ (Querzug)
→ Perfekte Fertigung unter Vakuum (keine Poren), gute Faser-Matrix-Haftung, gleichmäßige Faserverteilung, ausreichend Schichten in Umfangsrichtung

**d)** Kritisch: **Delamination** an freien Rändern durch interlaminare Randspannungen
→ Feinschichtiger Laminataufbau, Differenz der Querkontraktionen benachbarter Schichten minimieren, Randschutz

</div>

---

<!-- _class: lead -->

# Zusammenfassung

### Zentrale Erkenntnisse Kapitel 16

- **Faserbruch** (Fb): nicht tolerierbar, hohe Festigkeiten
- **Zwischenfaserbruch** (Zfb): teils tolerierbar, aber Keilbruch vermeiden!
- **Delamination**: besonders gefährlich bei Druckbelastung
- **Puck**: Festigkeit ≠ Wirkebenen-Bruchwiderstand
- **Dehnungsvergrößerung**: Kernproblem der FKV
- **Schubknicken**: Fertigungsqualität entscheidend
- **Das Knie**: Potenzial der Faserfestigkeit oft nicht nutzbar