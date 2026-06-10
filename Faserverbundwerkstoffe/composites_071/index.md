---
marp: true
theme: h2
header: 'Faserverbundwerkstoffe – Kapitel 16'
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

# Kapitel 16
## Versagen von UD-Schichten
### Festigkeitsanalyse der Faser-Kunststoff-Verbunde

---

# 16.1 Allgemeines

- FKV: unterschiedliche **Versagensarten** und **Versagensformen** aufgrund verschiedener Komponenten und Verbundstruktur
- Versagen = **Grenzzustand** (umfassender als nur Werkstofftrennung)
  - Fließgrenze, Stabilitätsversagen, Verformungsgrenzen, Korrosion …
- Hier: Versagen im engeren Sinne → **Brüche und Werkstofftrennungen**
- Ausschließlich **mechanische Spannungen** als Ursache

---

# 16.1 Allgemeines – Festigkeitswerte

- Festigkeitswerte sind **experimentell** zu ermitteln (selten berechenbar)
- Mikromechanische Ansätze zur Berechnung: zu große Unsicherheiten
- Reale UD-Schichten stark von der **Herstellung** beeinflusst:
  - Matrixhärtung, Haftvermittler, Luftblasengehalt
  - → besonders die **Querzugfestigkeit** $R^+_\perp$ ist empfindlich

<div class="hinweis">

**Gliederung:** Welche Komponente versagt dominierend? → Faser, Matrix oder Grenzfläche
**Feingliederung:** Zug, Druck oder Schub

</div>

---

# 16.2 Spannungszustand am UD-Element

Räumlicher Spannungszustand mit 3 Normal- und 3 Schubspannungen.

Wegen **transversaler Isotropie** → nur **4 Basis-Beanspruchungen**:

| Beanspruchung | Symbol |
|---|---|
| Längs-Beanspruchung | $\sigma_\parallel$ |
| Quer-Beanspruchung | $\sigma_\perp$ |
| Quer-Längs-Schub | $\tau_{\perp\parallel}$ |
| Quer-Quer-Schub | $\tau_{\perp\perp}$ |

Bei Normalbeanspruchung: Unterscheidung **Zug** (+) und **Druck** (−) → **6 Basis-Beanspruchungen**

---

# 16.2 Basis-Festigkeiten der UD-Schicht

| Basis-Beanspruchung | Basis-Festigkeit | Englisch |
|---|---|---|
| $\sigma^+_\parallel$ | $R^+_\parallel$ | $X^t$ |
| $\sigma^-_\parallel$ | $R^-_\parallel$ | $X^c$ |
| $\sigma^+_\perp$ | $R^+_\perp$ | $Y^t$ |
| $\sigma^-_\perp$ | $R^-_\perp$ | $Y^c$ |
| $\tau_{\perp\parallel}$ | $R_{\perp\parallel}$ | $S^L$ |
| $\tau_{\perp\perp}$ | $R_{\perp\perp}$ | $S^T$ |

---

# 16.2 Versagensarten

Zwei grundsätzliche Versagensarten:

<div class="zwei-spalten">
<div>

### Faserbruch (Fb)
- Fiber Failure (FF)
- Durch faserparallele Beanspruchung
- Riss trennt Fasern **quer** zur Längserstreckung
- Festigkeiten $R_\parallel$ **sehr hoch**
- Meist **nicht tolerierbar**

</div>
<div>

### Zwischenfaserbruch (Zfb)
- Inter-Fibre-Failure (IFF)
- Riss verläuft **parallel** zur Faser
- Durch Matrix und/oder Grenzfläche
- Bei **deutlich niedrigeren** Beanspruchungen
- Teils tolerierbar

</div>
</div>

---

# 16.3 Faserbruch (Fb)

- Nicht Bruch einzelner Filamente, sondern **nahezu gleichzeitiges Versagen von Faserbündeln** (Hunderte Einzelfasern, mehrere mm Breite)
- Tritt bei **sehr hoher Belastung** auf
- Selten durch Spannungsumlagerungen verkraftbar
- → Im Allgemeinen **nicht tolerierbar**
- Entsteht durch $\sigma_\parallel$-**Zug** oder **-Druckbeanspruchung**

---

# 16.3.1 Faserbruch durch Längs-Zug $\sigma^+_\parallel$

- Fasern werden zerrissen → **Kohäsivfestigkeit** überschritten
- Versagen geschieht **nicht schlagartig**, sondern sukzessiv
  - Ab ca. **50% der Bruchlast**: erste Filamente reißen
  - Später: ganze Faserbündel
- Erkennbar an: Steifigkeitsverlust, Geräusch (hörbar), „besenförmiges" Abspleißen
- Bei Spannungsgradienten (z.B. Biegung): quasi-„duktiler", gutmütiger Versagensprozess

---

# 16.3.1 Berechnung von $R^+_\parallel$

Aus der Kompatibilitätsbedingung (gleiche Dehnung Faser/Verbund):

<div class="eq">

$$\sigma_f = \frac{E_f}{E_\parallel} \cdot \sigma_\parallel$$

Traganteil der Fasern entspricht dem Modulverhältnis $E_f/E_\parallel$

</div>

Mit Mischungsregel und Vernachlässigung des Matrix-Traganteils ($E_f \gg E_m$):

<div class="eq">

$$R^+_\parallel = R^+_f \cdot \varphi$$

</div>

Bei $\varphi = 0{,}5$: Faserspannung $\sigma_f = 2\sigma_1$ !

---

# 16.3.1 Warum wird $R^+_\parallel$ nicht erreicht?

Rechenwerte aus Faserfestigkeiten müssen mit **Abminderungsfaktor** versehen werden:

1. **Vorschädigungen** durch Verarbeitungsprozess (Umlenkungen, Führungen)
2. **Nicht alle Fasern tragen gleich** – unterschiedliche Ausrichtung/Vorspannung
3. **Festigkeitsstreuung** der Einzelfilamente
   - Früh brechende Fasern → Nachbarfasern überlastet → Kettenreaktion
   - Streuung **reduziert** immer die Verbundfestigkeit

<div class="hinweis">

Für maximale Bruchlast: alle Fasern gleich hoch beansprucht + Streuung → 0.
Aber: robuste Konstruktion wünscht Vorankündigung durch Einzelbrüche.

</div>

---

# 16.3.1 Verbesserungsmaßnahmen Längs-Zug

- **Faservolumenanteil erhöhen** (bis $\varphi \approx 0{,}65$) → lineare Lastreduktion pro Faser
  - Bei Schwingbelastung: $\varphi \approx 0{,}50$ optimal (geringere Kerbwirkung)
- **Bruchdehnung der Matrix** ≥ 2× Faser-Bruchdehnung
- **Hybridisierung**: verschiedene Fasertypen kombinieren → breitere Festigkeitsverteilung, Reserve-Lastpfade

---

# 16.3.2 Faserbruch durch Längs-Druck $\sigma^-_\parallel$

- Kein klassisches „Zerquetschen" → **mikromechanisches Schubknicken**
- Nicht Biegeknicken (Euler), sondern durch **zu niedrige Schubsteifigkeit**

<div class="hinweis">

Der Versagensfall „Überschreiten von $R^-_\parallel$" kommt selten vor! Meist tritt vorher:
- Globales Stabilitätsversagen der Struktur
- Zwischenfaserbruch (Zfb)

→ Schubknicken primär bei **großen UD-Querschnitten** (Gurte, Holme, Blattfedern, Bohrungen)

</div>

---

# 16.3.2 Zwei Formen des Schubknickens

<div class="zwei-spalten">
<div>

### Verzweigungsproblem
- Ideale UD-Schicht (keine Imperfektionen)
- Fehlorientierung $\varphi_0 = 0$ (infinitesimal)
- Theoretisch: $R^-_\parallel = G_{\perp\parallel}$
- **In Praxis nicht erreichbar!**

</div>
<div>

### Spannungsproblem
- Reale Struktur mit **Faser-Fehlorientierung** $\varphi_0 \neq 0$
- Lokale Faserwelligkeit
- Druck-Schub-Koppelung
- Wachsende $\sigma^-_\parallel$ → Vergrößerung der Fehlorientierung

</div>
</div>

---

# 16.3.2 Mechanisches Modell – Momentengleichgewicht

Momentengleichgewicht am UD-Element mit Faser-Fehlorientierung $\varphi_0$:

<div class="eq">

$$\sigma^-_\parallel = \frac{\tau_{\perp\parallel}}{\varphi_0 + \gamma_{\perp\parallel}}$$

</div>

- $\varphi_0$ = Winkel der Faser-Fehlorientierung (unbelastet, konst.)
- $\gamma_{\perp\parallel}$ = Schiebung (wächst mit steigender Druckbeanspruchung)

Vernachlässigt: Eigen-Biegesteifigkeit der Fasern, Stützwirkung Nachbarschichten, Stauchung

---

# 16.3.2 Festigkeit $R^-_\parallel$ – Extremwertbestimmung

Schubknicken tritt ein, wenn die Schubkräfte den Faserlängskräften nicht mehr das Gleichgewicht halten:

<div class="eq">

$$\tau^*_{\perp\parallel} = \frac{d\tau^*_{\perp\parallel}}{d\gamma^*_{\perp\parallel}} \cdot (\varphi_0 + \gamma^*_{\perp\parallel})$$

</div>

Die Festigkeit ergibt sich aus dem **Tangenten-Schubmodul** bei Versagensschiebung:

<div class="eq">

$$R^-_\parallel = G^{*,T}_{\perp\parallel}(\gamma^*_{\perp\parallel})$$

</div>

---

# 16.3.2 Einfluss der Fehlorientierung

**Zentrale Ergebnisse:**

- **Idealfall** ($\varphi_0 = 0$): $R^-_\parallel = G_{\perp\parallel}$ (Schubmodul)
- Festigkeitsabfall bei kleinen $\varphi_0$ **besonders stark**
- Perfekte Faserausrichtung existiert nicht → theoretische Werte kaum erreichbar
- Bei kleinen $\varphi_0$: starke Abhängigkeit von **Fertigungsqualität** → große Streuungen
- Bei großen $\varphi_0$: $R^-_\parallel$ stark abgesunken, Einfluss von $\varphi_0$ gering

<div class="hinweis">

**Stapeln** mehrerer Schichten → Verteilung der Fehlorientierung wird breiter!
Textile Verstärkungen (Gewebe, Zwirne) haben konstruktionsbedingt Fehlorientierungen.

</div>

---

# 16.3.2 Einfluss überlagerter Schubspannungen $\tau_{21}$

Überlagerte Quer-Längs-Schubspannung $\tau_{21,0}$ wirkt **festigkeitsmindernd**:

<div class="eq">

$$\sigma^-_\parallel = \frac{\tau_{\perp\parallel} - \tau_{21,0}}{\varphi_0 + \gamma_{\perp\parallel}}$$

</div>

- Typisch bei **Krafteinleitung biegebeanspruchter Träger** (Auflagerkanten)
- Schub erzeugt kurzwellige Faser-Fehlorientierung durch Belastung
- Starke **Interaktion** zwischen Längs-Druck und Schubbeanspruchung
- Nahezu lineare Abhängigkeit von $\tau_{21,0}$

---

# 16.3.2 $R^+_\parallel$ vs. $R^-_\parallel$ – Vergleich

Faser-Fehlorientierungen → **Druckfestigkeit bleibt fast immer hinter Zugfestigkeit**

| Material | $R^+_\parallel$ [MPa] | $R^-_\parallel$ [MPa] |
|---|---|---|
| CF(HT)-EP (T300/913) | 2100 | 1400 |
| AF-EP (Kevlar 49/913) | 1760 | 240 |
| GF-EP (E-Glass/913) | 1860 | 965 |

- CFK und GFK: noch hohe $R^-_\parallel$-Werte
- AFK: Aramidfaser versagt frühzeitig
- HM-C-Fasern (Pech): vermutlich Abscheren der Fasern

---

# 16.3.2 Verbesserungsmaßnahmen Längs-Druck

- **Fertigungsqualität** ist ausschlaggebend: Fasern ohne Welligkeiten, straff, präzise
- **Textile Konstruktionen** mit Faserwelligkeiten vermeiden (Zwirne, Leinwand)
  - Günstiger: Köper- und Atlasbindungen
- **Ränder** mit großem Radius ausführen (fehlende Stützwirkung)
- **Bohrungen** in hoch druckbelasteten Laminaten vermeiden
- **Stirnflächenbelastung** vermeiden → Stützung oder kombinierte Lasteinleitung
- **Hoher Matrix-Schubmodul** $G_m$ → proportionale Steigerung von $R^-_\parallel$
- Gute **Faser-Matrix-Haftung**, geringe Luftblasengehalte

---

# 16.4 Zwischenfaserbruch (Zfb)

## 16.4.1 Festigkeit vs. Wirkebenen-Bruchwiderstand

- **Wirkebene**: Ebene, in der eine einzelne Beanspruchung maximal wird
- Bei UD-Schichten: Wirkebene ≠ Bruchebene möglich!
- → Der Begriff **Wirkebenen-Bruchwiderstand** $R^A$ (nach Puck, 1992)

<div class="eq">

Der **Bruchwiderstand einer Wirkebene** ist der Widerstand, den eine Schnittebene ihrem Bruch infolge einer **einzeln** in ihr wirkenden Beanspruchung entgegensetzt.

</div>

---

# 16.4.2 Beanspruchung durch Querzug $\sigma^+_\perp$

<div class="zwei-spalten">
<div>

- Wirkebene = Bruchebene ✓
- Festigkeit = Bruchwiderstand

$$R^+_\perp = R^{A+}_\perp$$

- Direkt messbar im Versuch
- In Bruchkriterien: $R^+_\perp$ einsetzbar

</div>
<div>

- Makroskopischer Zfb-Riss verläuft **parallel zu den Fasern**
- Bruch durch die Matrix und/oder Grenzfläche Faser-Matrix

</div>
</div>

---

# 16.4.3 Beanspruchung durch Querdruck $\sigma^-_\perp$

- Wirkebene ≠ Bruchebene!
- Kein Druckversagen, sondern **Schubversagen** (Abscheren)
- Bruch unter ca. **53°** zur Belastungsrichtung

<div class="eq">

$$R^-_\perp \neq R^{A-}_\perp$$

$$R^{A-}_\perp \to \infty$$

</div>

- Eigentlich Bruch bei 45° ($\tau_{\perp\perp}$ maximal), aber **innere Reibung** → steilere Ebene
- Die Querdruckkomponente $\sigma_\perp^- \cdot \cos^2\theta_{fp}$ erschwert den Bruch

---

# 16.4.4 Quer-Längs-Schub $\tau_{\perp\parallel}$

- Zwei Wirkebenen vorhanden (Momentengleichgewicht)
- Bruch nur in der **faserparallelen** Ebene möglich (niedrigerer Bruchwiderstand)

<div class="eq">

$$R^A_{\perp\parallel} \ll R^A_{\parallel\perp}$$

→ Wirkebene = Bruchebene → $R_{\perp\parallel} = R^A_{\perp\parallel}$

</div>

- Erste Mikrorisse: unter **45°** in Matrix (Zug-Hauptspannung)
- An Fasern gestoppt → faserparallel umgelenkt → makroskopischer Schubriss

---

# 16.4.5 Quer-Quer-Schub $\tau_{\perp\perp}$

- Wirkebene ≠ Bruchebene!
- Bruch unter **+45°** durch Zug-Hauptspannung $\sigma^+_I$

<div class="eq">

$$R_{\perp\perp} \neq R^A_{\perp\perp}$$

Es gilt: $R^+_\perp < R^A_{\perp\perp}$

</div>

**Zusammenfassung – drei Bruchwiderstände bei Zfb:**
1. $R^+_\perp$ gegen Querzug $\sigma^+_\perp$
2. $R_{\perp\parallel}$ gegen Quer-Längs-Schub $\tau_{\perp\parallel}$
3. $R^A_{\perp\perp}$ gegen Quer-Quer-Schub $\tau_{\perp\perp}$

---

# Übersicht: Festigkeit vs. Bruchwiderstand

| Beanspruchung | Wirkebene = Bruchebene? | Beziehung |
|---|---|---|
| $\sigma^+_\perp$ Querzug | ✅ Ja | $R^+_\perp = R^{A+}_\perp$ |
| $\sigma^-_\perp$ Querdruck | ❌ Nein (53°) | $R^{A-}_\perp \to \infty$ |
| $\tau_{\perp\parallel}$ Quer-Längs-Schub | ✅ Ja | $R_{\perp\parallel} = R^A_{\perp\parallel}$ |
| $\tau_{\perp\perp}$ Quer-Quer-Schub | ❌ Nein (45°) | $R_{\perp\perp} \neq R^A_{\perp\perp}$ |

<div class="hinweis">

Nur bei $\tau_{\perp\perp}$: Indizierung mit „A" unerlässlich! $R^A_{\perp\perp}$ darf nicht mit $R_{\perp\perp}$ verwechselt werden.

</div>

---

# 16.4.6 Querzugversagen $\sigma^+_\perp$ – Häufigster Zfb

- **Häufigste** Zwischenfaserbruchform
- Rissbildung von Fehlstellen → faserparallel → in Dickenrichtung erst an Nachbarschichten gestoppt
- Faser und Matrix in **Reihenschaltung**
- Versagen: Kohäsivfestigkeit Matrix **oder** Adhäsivfestigkeit Faser-Matrix

<div class="hinweis">

**Kernproblem der FKV:** Die hohe Bruchdehnung der Matrix bleibt nahezu ungenutzt!

</div>

---

# 16.4.6 Dehnungsvergrößerungsfaktor $f_\varepsilon$

Pucksches **Scheibchenmodell**: infinitesimal dünne Scheibe quer zur Faser

Aus Gleichgewicht, Verträglichkeit und Elastizitätsgesetz:

<div class="eq">

$$f_\varepsilon = \frac{\varepsilon_m}{\varepsilon_\perp} = \frac{1}{1 + \frac{E_m}{E_{f\perp}} \cdot \left(\frac{1}{\frac{l_m}{l_0}} - 1\right)} > 1$$

</div>

Die Matrix wird **wesentlich stärker** gedehnt als der Verbund!

---

# 16.4.6 Dehnungsvergrößerung – Quadratische Packung

Für die quadratische Faserpackung (Scheibchen in Fasermitte):

<div class="eq">

$$f_{\varepsilon,\text{max}} = \frac{1}{1 - \sqrt{\frac{\varphi}{\pi}} \cdot \left(1 - \frac{E_m}{E_{f\perp}}\right)}$$

</div>

**Beispiel GFK:** $\varphi = 0{,}6$, $E_{f\perp}/E_m = 73000/3400$

$$\boxed{f_\varepsilon \approx 6}$$

→ Matrix muss lokal **6-fach höhere Dehnung** ertragen!

---

# 16.4.6 Einflussgrößen auf $f_\varepsilon$

<div class="zwei-spalten">
<div>

### Faservolumenanteil $\varphi$
- Höherer $\varphi$ → höherer $f_\varepsilon$

### Steifigkeitsverhältnis $E_{f\perp}/E_m$
- **Glasfaser** (isotrop): $f_\varepsilon$ sehr hoch
- **C-Faser** (anisotrop, niedriges $E_{f\perp}$): deutlich günstiger
- **Aramidfaser**: geringster $f_\varepsilon$

</div>
<div>

### Auswirkungen

| | Festigkeit | Bruchdehnung |
|---|---|---|
| EP rein | 80 MPa | ≈ 5% |
| GF-EP UD | 50 MPa | ≈ 0,4% |

Fasern wirken quer **nicht verstärkend**, sondern als **Fehlstellen**!

</div>
</div>

---

# 16.4.6 Verbesserungsmaßnahmen Querzug

- **Perfekte Fertigung**: maximale Faser-Matrix-Haftung, ohne Lufteinschlüsse (Vakuum), gleichmäßige Faserverteilung
- **Hoher Faservolumenanteil** → gleichmäßigere Faserverteilung → $R^+_\perp$ steigt (trotz höherem $f_\varepsilon$!)
- Flexibilisierte Harze: **nicht zielführend**
  - Dehnungsbehinderung durch Fasern in allen Richtungen
  - Schlechtere Chemikalienbeständigkeit
  - Reduzierte $R^-_\parallel$ (ungenügende Faserstützung)
- Aramidfaser: geringster $f_\varepsilon$, aber schlechtere Haftung
- Hohlfasern: theoretisch vorteilhaft, praktisch gescheitert (Kapillarwirkung)

---

# 16.4.6 $R^+_\perp$ als Qualifikationskennwert

$R^+_\perp$ eignet sich hervorragend zur:
- **Werkstoff-Qualifikation** (Faser-Matrix-Kombinationen)
- Überprüfung von **Medienangriff** (Benzin, Bremsflüssigkeit, Feuchtigkeit …)
- Bewertung der **Fertigungsqualität**

| Konditionierung | $R^+_\perp$ [MPa] |
|---|---|
| Trocken, 24h/23°C | 72 |
| Bremsflüssigkeit, 24h/23°C | 69 |
| Normalbenzin, 24h/23°C | 64 |
| Neutralreiniger, 1000h/70°C | 63 |
| 98% rel. Luftfeuchte | 58 |

*(GF-Vinylesterurethanharz, $\varphi = 0{,}65$)*

---

# 16.4.7 Querdruck $\sigma^-_\perp$

- Kein Versagen normal zur Beanspruchung → **Abscheren** ($\tau_{\perp\perp}$)
- $R^{A-}_\perp \to \infty$ (Kontinuumsannahme)
- $R^-_\perp \approx 3 \times R^+_\perp$ (> 150 MPa bei GF und CF)
- Nutzbar z.B. bei **Klemmverbindungen** (Bolzen): bis 120 MPa Flächenpressung

### ⚠️ Keilbruch (Bruchmodus C)

- Bruch unter **53°** → Bruchflächen gleiten ab → **Laminat wird aufgesprengt**
- **Totalversagen** → unbedingt vermeiden!
- Abhilfe: feinschichtiger Aufbau, seitliche Stützung (Borde)

---

# 16.4.8 Quer-Längs-Schub $\tau_{\perp\parallel}$

- Nur Bruch durch $\tau_{\perp\parallel}$-Beanspruchung (nicht $\tau_{\parallel\perp}$)
- Versagensform **vorzeichenunabhängig**
- **Schiebungsvergrößerungsfaktor** analog zu $f_\varepsilon$

### Rissbildung
- Erste Mikrorisse: **Zugversagen** in Matrix unter 45° zur Schubrichtung (Zug-Hauptspannung)
- An Fasern gestoppt → faserparallel umgelenkt → makroskopischer Schubriss

<div class="hinweis">

$R_{\perp\parallel}$ fällt gegenüber unverstärkter Matrix **weniger stark** ab als $R^+_\perp$.
Reibanteil → höhere Dämpfung, langsameres Risswachstum.

</div>

---

# 16.4.9 Z/DT-Prüfung

**Zug/Druck-Torsionsprüfung** – besonders geeignetes Verfahren:

- Messung von $E_\perp$, $G_{\perp\parallel}$, $R_\perp$, $R_{\perp\parallel}$
- **Kreiszylindrischer Rohrprobekörper** (Umfangswicklung, reine UD-Schicht)
  - Homogener Schubspannungszustand
  - Kombinierte $\sigma_\perp$/$\tau_{\perp\parallel}$-Beanspruchung möglich
  - Einfach und kostengünstig

<div class="hinweis">

Der Probekörper versagt an seiner **schwächsten Stelle** → Mittelwert der schwächsten Bereiche, nicht der Festigkeitsverteilung!

</div>

---

# 16.4.10 Quer-Quer-Schub $\tau_{\perp\perp}$

- $R^A_{\perp\perp}$ **nicht direkt messbar** (vorher Bruch durch $\sigma^+_I$ bei 45°)
- Indirekte Bestimmung aus dem **Querdruckversuch**:

<div class="eq">

$$R^A_{\perp\perp} = \frac{R^-_\perp}{2(1 + p^-_{\perp\perp})}$$

Mit $p^-_{\perp\perp} \approx 0{,}25$ (GFK):

$$R^A_{\perp\perp} \approx \frac{R^-_\perp}{2{,}5}$$

</div>

---

# 16.4.11 Überlagerung $\sigma_\perp$ + $\tau_{\perp\parallel}$

Häufigster Fall bei ebenem Spannungszustand:

<div class="zwei-spalten">
<div>

### Querzug + Schub
- Stärkt **Riss-öffnende** Komponente
- Vermindert Reibanteil
- **Beschleunigt** Rissentstehung
- Stärkere Kerbwirkung auf Nachbarschichten

</div>
<div>

### Querdruck + Schub
- **Schließt** Schubrisse
- Steigert durch **innere Reibung** die übertragbare Schubkraft
- Erhöht die Belastbarkeit

</div>
</div>

<div class="hinweis">

Diese Interaktionen müssen in Bruchkriterien **physikalisch korrekt** berücksichtigt werden!

</div>

---

# 16.4 Auswirkungen von Zfb

Zwischenfaserbrüche sind überwiegend **nachteilig**:

- $G_{\perp\parallel}$ nimmt ab → $R^-_\parallel$ wird reduziert
- Von Zfb gehen **Delaminationen** aus → Stabilitätsverlust bei Druck
- **Kerbwirkung** auf Fasern der Nachbarschichten → reduzierte Ermüdungsfestigkeit
- Vermehrte **Feuchtigkeitsaufnahme** → aggressive Medien erreichen Fasern

<div class="hinweis">

**Keilbruch** (Bruchmodus C, durch $\sigma^-_\perp$) ist unbedingt zu vermeiden → zerstört das ganze Laminat!
Andere Zfb-Modi ($\sigma^+_\perp$, $\tau_{\perp\parallel}$) können unter Umständen toleriert werden.

</div>

---

# 16.5 Das „Knie" im $\sigma$-$\varepsilon$-Diagramm

- Frühzeitige Zfb → **Steifigkeitsverlust** = „Knie" (Knistergrenze)
- Detektierbar durch **Schallemissionsanalyse** (SEA)
- GFK-Laminate: durchsichtig → trüben ab dem Knie **milchig** ein
- Bei weiterer Belastung: Rissdichte wächst → **Risssättigung**
- Totalversagen schließlich durch **Faserbruch**

<div class="eq">

**Problem bei GFK:** Querzugversagen schon bei $\varepsilon_\perp \approx 0{,}004$

Faser-Bruchdehnung: $\varepsilon_\parallel \approx 0{,}02$

→ Großes Festigkeitspotenzial der Fasern **nicht nutzbar**!

</div>

---

# 16.5 Knie – Wiederholte Belastung

Bei Entlastung und erneuter Belastung:
1. Spannungsanstieg mit **geringerer Steigung** (Steifigkeitsverlust = Schädigungsnachweis)
2. Bei Überschreiten der bisherigen Maximalspannung → neues „Knie"
3. Schallemissionen setzen erst ab neuem Knie wieder ein

### GFK vs. CFK
- **GFK**: Knie besonders ausgeprägt (hohe Quersteifigkeit, kleiner Orthotropiegrad $E_\perp/E_\parallel$)
- **CFK**: Knie weniger markant (niedrige Quersteifigkeit relativ zu hoher Faserlängssteifigkeit)

---

# 16.6 Delamination

**Schichtentrennung** – besondere Versagensart bei Schichtaufbauten

- Durch **interlaminare Spannungen** (zwischen Schichten, nicht innerhalb)
  - Interlaminare Schubspannungen (ILS)
  - Normalspannungen (Aufzieh-/Schälspannungen) – meist gefährlicher!
- Flächige Ausbreitung, oft **kein Riss-stoppender Mechanismus**
- Detektion: Klopftest, Ultraschall, **Thermografie**, bei GFK visuell (Trübung)

---

# 16.6.1 Typische Delaminationsfälle

1. **Zfb als Ausgangspunkt** → ILS am Rissufer → Delamination bei Schwingbelastung
2. **Schlagbelastung** (Impact) → Fb + Zfb + Delamination lokal
3. **Aufgeklebte Steifen** (Stringer, Pflaster) → Ablösung durch Querkraftschub
4. **Schrumpf-/Härtespannungen** in dickwandigen Rohren
5. **Freie Ränder** → unterschiedliche Querkontraktion → interlaminare Randspannungen
6. **Aufbiegen gekrümmter Laminate** entgegen der Krümmung → Aufziehspannungen

---

# 16.6.1 Folgen von Delaminationen

- **Beulgefahr**: Biegesteifigkeit drastisch reduziert → frühzeitiges Beulen → Kollaps
  - Test: **CAI** (Compression After Impact)
- **Querkraftbiegung**: Aufspaltung → Biegesteifigkeit sinkt auf Bruchteil
- Große Deformationen beeinträchtigen restliche Struktur

---

# 16.6.2 Maßnahmen gegen Delaminationen

<div class="zwei-spalten">
<div>

### Risswiderstand erhöhen
- **Zähmodifizierte Matrix**
- Zähe **Thermoplast-Zwischenschichten**
- **Schnittmatten** zwischen UD-/Gewebeschichten
- **Mechanische Klemmung** ($\sigma^-_z$ durch Presssitze)

</div>
<div>

### Verstärkung in z-Richtung
- **3D-Gelege**
- **Vernähen**
- **Z-Pins** (zugeschärfte UD-CFK-Stäbchen)
  - Verhindert nicht Entstehung, aber reduziert Ausbreitung
  - Nachteil: mindert Festigkeiten in xy-Ebene

</div>
</div>

---

<!-- _class: lead -->

# Zusammenfassung Kapitel 16

| Versagensart | Beanspruchung | Kritikalität |
|---|---|---|
| Faserbruch Zug | $\sigma^+_\parallel$ | Nicht tolerierbar |
| Faserbruch Druck (Schubknicken) | $\sigma^-_\parallel$ | Nicht tolerierbar |
| Zfb Querzug | $\sigma^+_\perp$ | Bedingt tolerierbar |
| Zfb Querdruck (Keilbruch!) | $\sigma^-_\perp$ | **Nicht tolerierbar** |
| Zfb Quer-Längs-Schub | $\tau_{\perp\parallel}$ | Bedingt tolerierbar |
| Delamination | ILS, $\sigma^+_z$ | Meist nicht tolerierbar |