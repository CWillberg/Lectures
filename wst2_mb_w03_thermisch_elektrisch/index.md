---
marp: true
theme: h2
header: 'Thermische & Elektrische Eigenschaften'
footer: ''
title: Werkstofftechnik II - Thermische & Elektrische Eigenschaften
author: Christian Willberg
---

<style>
.container{
  display: flex;
}
.col{
  flex: 1;
}
footer {
  font-size: 14px;
  color: #888;
  text-align: right;
}
img[alt="ORCID"] {
  height: 15px !important;
  width: auto !important;
  vertical-align: top !important;
  display: inline !important;
  margin: 0 !important;
}
.aufgabe {
  border: 2px solid #e67e22;
  background: #fdf2e9;
  padding: 12px 16px;
  border-radius: 4px;
}
.loesung {
  border-left: 5px solid #27ae60;
  background: #eafaf1;
  padding: 10px 16px;
}
.eq {
  border: 2px solid #c39bd3;
  background: #f4ecf7;
  padding: 10px 16px;
  text-align: center;
}
.hinweis {
  border-left: 5px solid #2e86c1;
  background: #eaf2f8;
  padding: 8px 16px;
  font-size: 20px;
}
.zwei-spalten {
  display: flex;
  gap: 2rem;
}
.zwei-spalten > * {
  flex: 1;
}
.warnung {
  border-left: 5px solid #e74c3c;
  background: #fdf2f2;
  padding: 8px 16px;
  font-size: 20px;
}
</style>


## Thermische & Elektrische Eigenschaften

Prof. Dr.-Ing. Christian Willberg
Kontakt: christian.willberg@h2.de

<div style="position: absolute; top: 200px; left: 850px;"> 
<img src="https://quickchart.io/qr?text=https://cwillberg.github.io/Lectures/wst2_mb_w03_thermisch_elektrisch/&light=0000&size=300&centerImageUrl=https://raw.githubusercontent.com/CWillberg/Lectures/main/assets/QR/h2.png"
     style="height:380px;width:auto;vertical-align:top;background-color:transparent;">
</div>


---

## Lernziele

Nach dieser Einheit können Sie:

- Thermische Kenngrößen von Werkstoffen benennen und berechnen
- Den Zusammenhang zwischen **Bindungstyp, Mikrostruktur und thermischen Eigenschaften** erklären
- Elektrische Leitfähigkeit anhand des Bandmodells beschreiben
- Leiter, Halbleiter und Isolatoren klassifizieren und die Ursachen begründen
- Relevante Werkstoffkennwerte für technische Anwendungen auswählen

---

## Roter Faden: Bindung bestimmt Eigenschaften

<div class="hinweis">

Alle thermischen und elektrischen Eigenschaften lassen sich auf **Bindungstyp und Kristallstruktur** zurückführen – das ist die werkstofftechnische Kernfrage: **Warum verhält sich ein Werkstoff so?**

</div>

| Bindungstyp | freie e⁻? | $\lambda_{therm}$ | $\sigma_{el}$ | $\alpha_L$ |
|-------------|-----------|-------------------|--------------|-----------|
| Metallisch | ja | hoch | hoch | mittel |
| Ionisch | nein | mittel | sehr gering | gering |
| Kovalent | nein* | gering–mittel | sehr gering | sehr gering |
| Van-der-Waals | nein | sehr gering | sehr gering | sehr hoch |

*Ausnahme: dotierte Halbleiter, Graphit

---

# Teil I: Thermische Eigenschaften

---

## Wärmekapazität

**Definition:** Energiemenge, die benötigt wird, um einen Körper um 1 K zu erwärmen

<div class="zwei-spalten">

<div>

**Spezifische Wärmekapazität** $c_p$

$$Q = m \cdot c_p \cdot \Delta T$$

Einheit: J/(kg·K)

**Molare Wärmekapazität** $C_m$

$$C_m = c_p \cdot M$$

Einheit: J/(mol·K)

</div>

<div>

| Werkstoff | $c_p$ [J/(kg·K)] |
|-----------|-----------------|
| Aluminium | 900 |
| Stahl | 490 |
| Kupfer | 385 |
| Keramik (Al₂O₃) | 775 |
| Polyethylen (PE) | 1900 |

</div>
</div>

---

## Wärmekapazität – Warum unterscheiden sich Werkstoffe?

<div class="zwei-spalten">

<div>

**Atomschwingungen als Energiespeicher:**
Zugeführte Energie versetzt Atome in stärkere Schwingung. Stärke der Bindung und Atommasse bestimmen, wie viel Energie pro K aufgenommen wird.

**Schwere Atome** (Pb, Cu): niedrige $c_p$ [J/(kg·K)]
→ viel Masse pro Atom, wenige Atome pro kg

**Leichte Atome** (Al): höhere $c_p$
→ mehr Atome pro kg, mehr Schwingungsfreiheitsgrade

**Polymere:** lange Ketten haben viele innere Freiheitsgrade (Torsion, Biegung der Kette) → sehr hohe $c_p$

</div>

<div>

**Merkhilfe:** Die molare $C_m$ ist für alle Metalle fast gleich (Dulong-Petit), aber $c_p$ variiert stark mit der Atommasse:

$$c_p = \frac{C_m}{M} \approx \frac{3R}{M}$$

Kupfer ($M=64$ g/mol): $c_p \approx 390$ J/(kg·K) ✓
Aluminium ($M=27$ g/mol): $c_p \approx 920$ J/(kg·K) ✓

→ Aluminium speichert fast 2,5× mehr Wärme pro kg als Kupfer!

</div>
</div>

---

## Dulong-Petit-Gesetz

Für **metallische Festkörper** gilt näherungsweise:

<div class="eq">

$$C_m \approx 3R = 24{,}9 \; \text{J/(mol·K)}$$

</div>

- $R = 8{,}314$ J/(mol·K) – universelle Gaskonstante
- Gilt gut bei hohen Temperaturen (Raumtemperatur und darüber)
- Bei tiefen Temperaturen: Abweichung → Quanteneffekte (Debye-Modell)

<div class="hinweis">

💡 Physikalische Ursache: Jedes Atom hat 3 Freiheitsgrade der Schwingung, jeder Freiheitsgrad trägt $k_B T$ zur mittleren Energie bei.

</div>

---

## Temperaturabhängigkeit der Wärmekapazität

<div class="zwei-spalten">

<div>

- Bei $T \to 0$: $c_p \to 0$ (3. Hauptsatz der Thermodynamik)
- Debye-Temperatur $\Theta_D$: charakteristische Materialkenngröße
- Unterhalb $\Theta_D$: $C_m \propto T^3$ (Debye-$T^3$-Gesetz)
- Oberhalb $\Theta_D$: $C_m \approx 3R$ (Dulong-Petit)

</div>

<div>

| Werkstoff | $\Theta_D$ [K] |
|-----------|--------------|
| Blei | 105 |
| Aluminium | 428 |
| Eisen | 470 |
| Diamant | 2230 |

</div>
</div>

<div class="hinweis">

Hohe $\Theta_D$ (Diamant, SiC) = sehr steife kovalente Bindung, hohe Phononenfrequenz → erst bei hohen Temperaturen sind alle Schwingungsmoden thermisch angeregt

</div>

---

## Thermische Ausdehnung

Erwärmung → stärkere Atomschwingungen → mittlerer Atomabstand steigt

<div class="eq">

$$\Delta L = L_0 \cdot \alpha_L \cdot \Delta T \qquad \Longrightarrow \qquad \alpha_L = \frac{1}{L_0} \cdot \frac{\Delta L}{\Delta T}$$

</div>

**Linearer Ausdehnungskoeffizient** $\alpha_L$ in 10⁻⁶ K⁻¹ (ppm/K):

| Werkstoff | Bindungstyp | $\alpha_L$ [10⁻⁶ K⁻¹] | Warum? |
|-----------|-------------|----------------------|--------|
| Invar (FeNi36) | metallisch | 1,5 | magnetostriktiver Kompensationseffekt |
| Stahl | metallisch | 11–12 | mittlere metallische Bindung |
| Aluminium | metallisch | 23 | schwächere Bindung als Stahl |
| Al₂O₃ | ionisch | 8 | starke, gerichtete Bindung |
| Quarz (SiO₂) | kovalent/ionisch | 0,5 | sehr steifes Netzwerk |
| PTFE | Van-der-Waals | 120–150 | schwache Ketteninteraktion |

---

## Thermische Ausdehnung – Ursache im Bindungspotential

<div class="zwei-spalten">

<div>

Das Bindungspotential ist **asymmetrisch** (anharmonisch):

- Abstoßung (kurzreichweitig) steigt steiler als Anziehung
- → Schwingungsmittelpunkt verschiebt sich mit Amplitude
- → mittlerer Atomabstand wächst mit Temperatur

**Starke Bindung** (kovalent, ionisch): tiefer, enger Potentialtopf → kleinere Asymmetrie → **kleines $\alpha_L$**

**Schwache Bindung** (Van-der-Waals): flacher, breiter Topf → große Asymmetrie → **großes $\alpha_L$**

</div>

<div>

**Werkstofftechnische Konsequenz:**

$$\text{Hohe Bindungsenergie} \;\Leftrightarrow\; \text{hoher } T_{Schmelz} \;\Leftrightarrow\; \text{kleines } \alpha_L$$

Refraktärmetalle (W, Mo): hohe $T_{Schmelz}$ und kleines $\alpha_L$

**Volumetrische Ausdehnung:**

$$\Delta V = V_0 \cdot \gamma \cdot \Delta T, \quad \gamma \approx 3\alpha_L$$

</div>
</div>

---

## Wärmeleitung – Mechanismen

Transport von Wärmeenergie durch zwei Träger:

<div class="zwei-spalten">

<div>

**1. Phononen (Gitterschwingungen)**
- Quantisierte elastische Wellen im Gitter
- Dominant in Keramiken und Polymeren
- Streuung an: Defekten, Korngrenzen, anderen Phononen
- Mit steigendem $T$: mehr Phonon-Phonon-Stöße → $\lambda$ sinkt

**2. Freie Elektronen**
- Nur in Metallen vorhanden
- Viel effektiver als Phononen (höhere Geschwindigkeit)
- Mit steigendem $T$: mehr Gitterstreuung → $\lambda$ leicht sinkend

</div>

<div>

<div class="eq">

$$\dot{q} = -\lambda \cdot \frac{dT}{dx} \quad \text{(Fourier)}$$

</div>

$\dot{q}$ – Wärmestromdichte [W/m²]
$\lambda$ – Wärmeleitfähigkeit [W/(m·K)]

<div class="hinweis">

Minuszeichen: Wärme fließt von warm nach kalt (2. Hauptsatz)

</div>

</div>
</div>

---

## Wärmeleitfähigkeit – Werkstoffklassen und Ursachen

<div class="zwei-spalten">

<div>

**Metalle:** $\lambda = 10 \ldots 400$ W/(m·K)
Freie Elektronen dominieren → guter Leiter = guter Wärmeleiter

**Keramiken:** $\lambda = 1 \ldots 30$ W/(m·K)
Nur Phononen; kovalente Bindung (SiC, AlN) leitet besser als ionische (Al₂O₃), da geordnetere Struktur und weniger Streuung

**Gläser:** $\lambda \approx 1$ W/(m·K)
Amorphe Struktur streut Phononen stark → schlechte Leitung trotz ionisch/kovalenter Bindung

**Polymere:** $\lambda = 0{,}1 \ldots 0{,}5$ W/(m·K)
Ungeordnete lange Ketten, schwache Van-der-Waals-Bindung, kaum Phononentransport

</div>

<div>

| Werkstoff | $\lambda$ [W/(m·K)] |
|-----------|-------------------|
| Silber | 429 |
| Kupfer | 401 |
| Aluminium | 237 |
| Stahl | 50 |
| SiC | 120 |
| AlN | 180 |
| Al₂O₃ | 18–35 |
| Glas | 1 |
| PE | 0,35 |
| Luft | 0,026 |

</div>
</div>

---

## Wärmeleitfähigkeit – Einfluss von Gefüge und Defekten

<div class="hinweis">

Nicht nur die Bindung zählt – auch **Mikrostruktur, Phasenzusammensetzung und Defekte** beeinflussen $\lambda$ erheblich.

</div>

<div class="zwei-spalten">

<div>

**Legierungen:** Fremdatome stören Gitterperiodizität → streuen Phononen und Elektronen

Beispiel: Cu (401 W/m·K) → Messing CuZn30 (113 W/m·K)

**Porosität:** Poren = Luft ($\lambda = 0{,}026$ W/m·K) → Wärmedämmung
Schaumstoffe, Ziegelsteine, Wärmedämmkeramiken nutzen dies gezielt

**Korngrenzen:** Phasengrenze streut Phononen → polykristalline Keramik leitet schlechter als Einkristall

</div>

<div>

**Anisotropie** bei nicht-kubischen Kristallen oder Faserverbunden:

Graphit (sp²-Bindung, kovalent in Ebene, Van-der-Waals zwischen Ebenen):
- In Basalebene: $\lambda \approx 200$ W/(m·K)
- Senkrecht dazu: $\lambda \approx 5$ W/(m·K)

→ C/C-Composites: gezielte Ausnutzung für Raumfahrt-Hitzeschilde

**Praxisfrage:** Warum ist Aluminiumpulver ein schlechter Wärmeleiter?
→ Viele Korngrenzen + Oxidschicht (Al₂O₃) an jeder Partikeloberfläche

</div>
</div>

---

## Wiedemann-Franz-Gesetz

Für Metalle besteht ein direkter Zusammenhang zwischen Wärme- und elektrischer Leitfähigkeit:

<div class="eq">

$$\frac{\lambda}{\sigma \cdot T} = L_0 = 2{,}44 \times 10^{-8} \; \text{W·Ω/K}^2$$

</div>

- $\sigma$ – elektrische Leitfähigkeit [S/m]
- $L_0$ – Lorenz-Zahl (universell für Metalle)
- **Ursache:** Beide Transporte werden von denselben freien Elektronen getragen

<div class="hinweis">

💡 Gute elektrische Leiter sind i.d.R. auch gute Wärmeleiter. Ausnahme: Diamant hat $\lambda \approx 2000$ W/(m·K) durch Phononen – leitet aber keinen Strom.

</div>

---

## Thermische Diffusivität

Für **instationäre** Wärmeleitung (zeitabhängige Prozesse):

<div class="eq">

$$a = \frac{\lambda}{\rho \cdot c_p}$$

</div>

- $a$ – Temperaturleitfähigkeit [m²/s]
- $\lambda$: treibt Wärmestrom an; $\rho c_p$: thermische Trägheit des Materials
- Beschreibt, wie schnell sich eine Temperaturänderung **räumlich ausbreitet**

**Fourier-Zahl** als dimensionslose Kennzahl:

$$\text{Fo} = \frac{a \cdot t}{L^2}$$

<div class="hinweis">

Aluminium: hohe $\lambda$, niedrige $c_p$ → sehr hohe $a$ → schneller Temperaturausgleich. Stahl: niedrigere $a$ → langsamer Ausgleich → wichtig für Schweißen und Wärmebehandlung

</div>

---

## Thermische Spannung

Wird die freie Wärmedehnung **behindert**, entsteht mechanische Spannung:

<div class="eq">

$$\sigma_{th} = E \cdot \alpha_L \cdot \Delta T$$

</div>

**Warum?** Der Werkstoff will sich um $\varepsilon_{th} = \alpha_L \cdot \Delta T$ dehnen. Ist er eingespannt, erzwingt die Einspannung eine entgegengesetzte elastische Dehnung → **Druckspannung beim Erwärmen, Zugspannung beim Abkühlen**.

<div class="aufgabe">

**Beispiel:** Stahlrohr, $E = 210$ GPa, $\alpha_L = 12 \times 10^{-6}$ K⁻¹, $\Delta T = 100$ K

$$\sigma_{th} = 210\,000 \cdot 12 \times 10^{-6} \cdot 100 = 252 \; \text{MPa}$$

→ Schon bei 100 K Differenz nahe der Streckgrenze vieler Baustähle!

</div>

---

## Thermische Spannung in Verbundwerkstoffen

<div class="zwei-spalten">

<div>

Zwei Werkstoffe mit unterschiedlichem $\alpha_L$ werden gefügt und auf $\Delta T$ gebracht:

**Kompatibilitätsbedingung:** gleiche Gesamtdehnung an der Grenzfläche

$$\alpha_{1} \Delta T - \frac{\sigma}{E_1} = \alpha_{2} \Delta T + \frac{\sigma}{E_2}$$

→ **Eigenspannung ohne äußere Last!**

</div>

<div>

**Praxisbeispiele:**

- **Bimetall:** $\alpha_{Messing} \approx 19$ vs. $\alpha_{Invar} \approx 1{,}5$ → kontrollierte Biegung (Thermostat, Sicherung)
- **Cu–Keramik-Lötung (DCB):** $\alpha_{Cu}=17$, $\alpha_{Al_2O_3}=8$ → Rissrisiko beim Abkühlen
- **CFK–Metall-Fügung:** $\alpha_{CFK,0°} \approx 0$, $\alpha_{Al}=23$ → thermische Ermüdung bei Lastwechseln

</div>
</div>

<div class="warnung">

⚠️ Bei der Werkstoffauswahl für Fügungen immer $\alpha_L$-Kompatibilität prüfen!

</div>

---

## Thermischer Schock

<div class="zwei-spalten">

<div>

Schnelle Temperaturänderung → Temperaturgradient im Bauteil → **innere Zwängung** → Spannung → Riss

**Keramiken besonders gefährdet**, da:
- Spröde (kein plastisches Abbauen von Spannungen)
- Geringe $\lambda$ → steile Gradienten im Bauteil
- Hoher E-Modul → hohe Spannung bei gleicher Dehnung

**Thermische Schockbeständigkeit:**

$$R = \frac{\sigma_f \cdot \lambda}{E \cdot \alpha_L}$$

</div>

<div>

**Was hilft gegen Thermoschock?**

| Maßnahme | Wirkung |
|----------|---------|
| Geringe Wanddicken | kleinere Gradienten |
| Hohe $\lambda$ | schneller Ausgleich |
| Kleines $\alpha_L$ | weniger Dehnung |
| Kleines $E$ | weniger Spannung |
| Faserverstärkung | Rissarrest (C/C) |
| Gradierte Werkstoffe (FGM) | stetige $\alpha_L$-Änderung |
| Glaskeramiken (Zerodur) | $\alpha_L \approx 0$ konstruiert |

</div>
</div>

---

## Thermische Eigenschaften bei der Wärmebehandlung

<div class="hinweis">

Thermische Eigenschaften sind nicht nur Materialkennwerte – sie steuern auch **Wärmebehandlungsprozesse** wie Härten, Glühen, Sintern.

</div>

<div class="zwei-spalten">

<div>

**Abschreckgeschwindigkeit** beim Härten:

$$\dot{T} \propto \frac{a}{d^2} = \frac{\lambda}{\rho \cdot c_p \cdot d^2}$$

- Stahl: kleine $a$ → langsamer Abschreck → dickere Teile bleiben zäh
- Aluminiumlegierungen: hohe $a$ → muss sehr schnell abgeschreckt werden

</div>

<div>

**Eigenspannungen nach dem Abschrecken:**

- Oberfläche kühlt schneller als Kern
- Abgekühlte Oberfläche zieht sich zusammen → Kern hält sie zurück
- Nach vollständigem Abkühlen: **Druckeigenspannung** an der Oberfläche

→ Druckeigenspannungen wirken Rissöffnung entgegen → günstig für Ermüdungsfestigkeit!

→ Gezielt genutzt: Vorspannglas, Einsatzhärten, Laserschockhärten

</div>
</div>

---

# Teil II: Elektrische Eigenschaften

---

## Elektrische Leitfähigkeit – Grundlagen

Bewegung freier Ladungsträger im elektrischen Feld:

<div class="eq">

$$\vec{j} = \sigma \cdot \vec{E} \qquad \text{(Ohmsches Gesetz – mikroskopisch)}$$

$$R = \rho_W \cdot \frac{l}{A} = \frac{1}{\sigma} \cdot \frac{l}{A}$$

</div>

| Größe | Symbol | Einheit |
|-------|--------|---------|
| Stromdichte | $j$ | A/m² |
| Leitfähigkeit | $\sigma$ | S/m |
| Spez. Widerstand | $\rho_W$ | Ω·m |
| Widerstand | $R$ | Ω |

---

## Bandmodell – vom Atom zum Festkörper

<div class="zwei-spalten">

<div>

**Warum entstehen Bänder?**

Im Festkörper wechselwirken $N \sim 10^{23}$ Atome:
- Isoliertes Atom: diskrete Energieniveaus
- Bei Annäherung: Aufspaltung durch Pauli-Prinzip
- $N$ Atome → $N$ dicht liegende Niveaus → **Energieband**

Breite des Bandes hängt von der **Überlappung der Atomorbitale** ab → starke Wechselwirkung = breites Band

</div>

<div>

- **Valenzband (VB):** höchstes vollbesetztes Band bei $T = 0$
- **Leitungsband (LB):** nächsthöheres Band
- **Bandlücke $E_g$:** verbotene Zone
- **Fermi-Energie $E_F$:** höchster besetzter Zustand bei $T = 0$

```
  ─────────   LB (leer)
  
    E_g
  
  ─────────   VB (voll)
```

</div>
</div>

---

## Klassifikation nach Bandstruktur

<div class="zwei-spalten">

<div>

**Metalle / Leiter:**
- LB und VB überlappen **oder** VB nur halb gefüllt
- $E_g = 0$, $E_F$ liegt im Band
- $\sigma = 10^6 \ldots 10^8$ S/m

**Halbleiter:**
- Kleine Bandlücke
- $E_g = 0{,}1 \ldots 3$ eV
- $\sigma = 10^{-4} \ldots 10^4$ S/m

**Isolatoren:**
- Große Bandlücke
- $E_g > 5$ eV
- $\sigma < 10^{-8}$ S/m

</div>

<div>

| Werkstoff | $E_g$ [eV] | Typ |
|-----------|-----------|-----|
| Cu | 0 | Metall |
| Ge | 0,67 | HL |
| Si | 1,12 | HL |
| GaAs | 1,42 | HL |
| SiC | 3,26 | HL |
| Al₂O₃ | 8,8 | Isolator |
| SiO₂ | 9 | Isolator |
| Diamant | 5,5 | Isolator |

</div>
</div>

---

## Elektrische Leitfähigkeit – Warum leiten Metalle so gut?

<div class="zwei-spalten">

<div>

Im Metallgitter geben Atome ihre Valenzelektronen ab → **delokalisiertes Elektronengas**

Freie Elektronen werden im E-Feld beschleunigt, aber durch Gitterschwingungen und Defekte **gestreut**:

<div class="eq">

$$\sigma = \frac{n \cdot e^2 \cdot \tau}{m_e}$$

</div>

- $n$ – Elektronendichte [m⁻³]
- $\tau$ – mittlere Zeit zwischen zwei Stößen

</div>

<div>

**Temperaturabhängigkeit:**

$$\rho_W(T) = \rho_0 \cdot [1 + \alpha_R (T - T_0)]$$

Mit steigendem $T$:
- Atome schwingen stärker
- Streuquerschnitt für Elektronen steigt
- $\tau$ sinkt → $\sigma$ sinkt

**PTC-Verhalten:** Widerstand steigt mit Temperatur → Kaltleiter

Nutzen: PTC-Elemente als Selbstregelung (z.B. Kfz-Sitzheizung)

</div>
</div>

---

## Matthiessen'sche Regel – Streuquellen addieren sich

Der spezifische Widerstand setzt sich additiv zusammen:

<div class="eq">

$$\rho_W = \rho_{Phonon}(T) + \rho_{Defekt} + \rho_{Legierung}$$

</div>

<div class="zwei-spalten">

<div>

- $\rho_{Phonon}$: Gitterschwingungen, $\propto T$
- $\rho_{Defekt}$: Versetzungen, Leerstellen, Korngrenzen (temperaturunabhängig)
- $\rho_{Legierung}$: Fremdatome stören Gitterperiodizität → Streuung

**Konsequenzen:**
- Kaltverformung → mehr Versetzungen → $\rho_W \uparrow$
- Glühen → Ausheilung → $\rho_W \downarrow$
- Legieren **erhöht immer** den Widerstand (auch wenn Korrosionsschutz besser)

</div>

<div>

| Metall | $\sigma$ [MS/m] | Hinweis |
|--------|----------------|---------|
| Silber | 63 | bestes Reinmetall |
| Kupfer | 59 | Standardleiter |
| Gold | 45 | korrosionsstabil |
| Aluminium | 37 | leicht, günstig |
| Messing | ~15 | Legierung! |
| Stahl | 5–10 | viel Streuung |

</div>
</div>

---

## Elektrische Leitfähigkeit – Einfluss von Gefüge

<div class="hinweis">

Dieselben Mechanismen, die $\lambda_{therm}$ beeinflussen, wirken auch auf $\sigma_{el}$ – wegen des Wiedemann-Franz-Zusammenhangs.

</div>

<div class="zwei-spalten">

<div>

**Kaltverformung:**
Mehr Versetzungen → mehr Streuung → $\sigma \downarrow$

Hartgezogenes Cu: ca. 3–5% höherer Widerstand als geglühtes Cu

**Ausscheidungshärtung:**
Kohärente Ausscheidungen stören Gitter stärker als inkohärente
→ maximaler Widerstand beim Peak-Aging

</div>

<div>

**Korngröße:**
Korngrenzen streuen Elektronen → nanokristalline Metalle haben höheres $\rho_W$

**Anisotropie (Textur):**
Polykristallin isotropisch → $\sigma$ richtungsunabhängig
Einkristall / Textur → anisotrop

→ Kornorientiertes Elektroblech (Si-Stahl): optimierte Textur für Transformatoren (niedrige Ummagnetisierungsverluste durch gezielte Kristallausrichtung)

</div>
</div>

---

## Halbleiter – intrinsisch

<div class="zwei-spalten">

<div>

**Intrinsischer Halbleiter:** reines Material, keine Dotierung

- Bei $T = 0$: VB voll, LB leer → Isolator
- Mit steigendem $T$: Elektronen erhalten thermische Energie $\sim k_BT$ → Anregung in LB
- Jedes Elektron im LB hinterlässt ein **Loch** im VB – beide tragen zum Strom bei

**Ladungsträgerkonzentration:**

$$n_i = C \cdot T^{3/2} \cdot e^{-E_g/(2k_BT)}$$

</div>

<div>

**Leitfähigkeit steigt mit $T$** (Gegensatz zu Metallen!)

$$\sigma = n_i \cdot e \cdot (\mu_e + \mu_h)$$

$\mu$ – Beweglichkeit der Ladungsträger

<div class="hinweis">

NTC-Verhalten: negativer Temperaturkoeffizient des Widerstands → Thermistoren als Temperatursensoren

</div>

</div>
</div>

---

## Halbleiter – Warum ist Si das dominierende Material?

<div class="zwei-spalten">

<div>

**Bandlücke $E_g = 1{,}12$ eV** ist ideal:
- groß genug → kein zu hoher Eigenleitungsstrom bei RT
- klein genug → gut dotierbar und steuerbar

**Bindungsargument:**
Si: diamantische kovalente Bindung (sp³), jedes Si bindet 4 Nachbarn
- Alle Valenzelektronen in Bindungen → bei T=0 Isolator
- Thermische Anregung bricht Bindung → Loch + freies e⁻

**Oxidierbarkeit:** SiO₂ ist hervorragender Isolator → Gate-Oxid im MOSFET

</div>

<div>

**Dotierung mit P (5 Valenzelektronen):**
- 4 Bindungen zu Si-Nachbarn
- 1 überzähliges Elektron → schwach gebunden ($E_D \approx 0{,}05$ eV unterhalb LB)
- Bei RT leicht in LB angeregt → **n-Leitung**

**Dotierung mit B (3 Valenzelektronen):**
- Nur 3 Bindungen → fehlendes Elektron = Loch
- Akzeptorniveau dicht über VB → **p-Leitung**

1 ppm Dotierung kann $\sigma$ um viele Größenordnungen erhöhen!

</div>
</div>

---

## Halbleiter – extrinsisch (Dotierung)

<div class="zwei-spalten">

<div>

**n-Typ (Donator):**
- Fremdatom mit **mehr** Valenzelektronen (z.B. P in Si)
- Donatorenergieniveau dicht unterhalb LB
- Majoritätsträger: Elektronen

**p-Typ (Akzeptor):**
- Fremdatom mit **weniger** Valenzelektronen (z.B. B in Si)
- Akzeptorenergieniveau dicht oberhalb VB
- Majoritätsträger: Löcher

</div>

<div>

```
LB  ─────────────────
    ─ ─ Donor-Niveau (n)


    ─ ─ Akzeptor-Niveau (p)
VB  ─────────────────
```

<div class="hinweis">

Das überzählige Elektron des Donators ist nur schwach gebunden – wegen der hohen Dielektrizitätszahl des Si ($\varepsilon_r \approx 12$) und der effektiven Masse wird der Bohr-Radius sehr groß → sehr kleine Bindungsenergie

</div>

</div>
</div>

---

## p-n-Übergang und Diode

Kontakt zwischen p- und n-Typ-Halbleiter:

- Diffusion von Ladungsträgern → **Raumladungszone** (verarmte Zone, kein freier Träger)
- Eingebautes elektrisches Feld gleicht Diffusion aus → Gleichgewicht
- **Durchlassrichtung:** äußeres Feld kompensiert inneres → Barriere sinkt → Strom fließt
- **Sperrrichtung:** äußeres Feld verstärkt Barriere → kein Strom

**Anwendungen:**
- Gleichrichterdioden
- Solarzellen (Photon erzeugt e⁻-Loch-Paar, internes Feld trennt sie)
- LEDs (Rekombination → Photonenemission, $E_{Photon} \approx E_g$, Farbe einstellbar!)
- Transistoren (MOSFET, BJT)

---

## Supraleitung

Unterhalb der **kritischen Temperatur** $T_c$: $\rho_W = 0$ (exakt!)

<div class="zwei-spalten">

<div>

**BCS-Theorie (vereinfacht):**
Elektronen bilden Cooper-Paare über Phononenaustausch → kohärenter Quantenzustand → kein Impulsübertrag an Gitter → kein Widerstand

**Typ-I:** abrupter Übergang bei $B_c$, Meissner-Effekt

**Typ-II:** zwei kritische Felder $B_{c1}$, $B_{c2}$, gemischter Zustand (Flussfäden) → technisch relevant: YBCO, NbTi

</div>

<div>

| Material | $T_c$ [K] |
|----------|----------|
| Al | 1,2 |
| Nb | 9,3 |
| NbTi | 9,6 |
| YBCO | 92 |
| HgBaCuO | 133 |

**Anwendungen:**
- MRT-Magnete (NbTi in flüssigem He)
- Maglev-Züge
- Quantencomputer (Al, Nb bei ~15 mK)
- Verlustfreie Energieübertragung (Forschung)

</div>
</div>

---

## Dielektrische Eigenschaften

Isolatoren im elektrischen Feld → **Polarisation** (keine freien Ladungsträger, aber Ladungsverschiebung)

<div class="zwei-spalten">

<div>

**Polarisationsarten und Ursachen:**

1. **Elektronenpolarisation:** E-Feld verschiebt Elektronenwolke → in allen Materialien, sehr schnell (UV)
2. **Ionenpolarisation:** Kationen und Anionen verschieben sich gegeneinander → ionische Kristalle (IR)
3. **Orientierungspolarisation:** permanente Dipole richten sich aus (z.B. H₂O) → träge, stark T-abhängig (Mikrowelle!)
4. **Raumladungspolarisation:** Ladungen an Grenzflächen → sehr träge

</div>

<div>

**Dielektrizitätszahl** $\varepsilon_r$:

$$C = \varepsilon_0 \cdot \varepsilon_r \cdot \frac{A}{d}$$

| Material | $\varepsilon_r$ | Dominanter Mechanismus |
|----------|--------------|----------------------|
| SiO₂ | 3,9 | Elektronenpolar. |
| Al₂O₃ | 9 | Ion. + Elektron. |
| BaTiO₃ | 1.000–10.000 | Ferroelektrisch |
| Wasser | 80 | Orientierung |

</div>
</div>

---

## Dielektrische Verluste und Durchschlag

<div class="zwei-spalten">

<div>

**Dielektrische Verluste:**
Bei Wechselfeld folgt Polarisation dem Feld mit Phasenverzug (Hysterese) → Energiedissipation

- Verlustwinkel $\delta$, Güte: $\tan(\delta)$
- Orientierungspolarisation ist träge → phasenverschoben → frequenz- und temperaturabhängig
- Relevant bei: Kondensatoren, Kabel, Hochfrequenzbauteile

</div>

<div>

**Elektrischer Durchschlag:**
Überschreitung der Durchschlagfeldstärke $E_D$:
- Elektronen stark beschleunigt → Ionisation → Lawineneffekt → irreversibel

| Material | $E_D$ [MV/m] |
|----------|-------------|
| Luft | 3 |
| Al₂O₃ | 400–600 |
| SiO₂ | 500 |
| PTFE | 60–170 |

<div class="warnung">

⚠️ Poren und Risse reduzieren $E_D$ drastisch – Qualitätssicherung kritisch!

</div>

</div>
</div>

---

## Ferroelektrizität und Piezoelektrizität

<div class="zwei-spalten">

<div>

**Piezoelektrizität:**
- Mechanische Spannung → elektrische Polarisation (Direkteffekt)
- Elektrisches Feld → Dehnung (indirekter Effekt)
- **Voraussetzung:** kein Inversionszentrum im Kristall → strukturelle Asymmetrie!
- Beispiele: Quarz, BaTiO₃, PZT

**Anwendungen:**
- Sensoren (Druck, Beschleunigung, Ultraschall-NDT)
- Aktuatoren (Ultraschall, Nanopositioning)
- Zünder, Mikrofone, Tintenstrahlköpfe

</div>

<div>

**Ferroelektrizität:**
- Spontane Polarisation durch strukturelle Verzerrung unterhalb $T_C$ (Curie-Temperatur)

**Warum BaTiO₃?**
- Oberhalb $T_C$: kubische Perowskitstruktur → kein Dipol
- Unterhalb $T_C$: tetragonal verzerrte Struktur → Ti⁴⁺ verschoben → spontanes Dipolmoment

**Anwendungen:**
- FeRAM, Hochkapazitätskondensatoren
- Elektrokalorische Kühlung

</div>
</div>

---

## Magnetische Eigenschaften – Überblick

*(Kurzeinblick, da Bindungsarten bekannt)*

<div class="zwei-spalten">

<div>

**Klassifikation nach Suszeptibilität $\chi$:**

| Typ | $\chi$ | Beispiel |
|-----|--------|---------|
| Diamagnetisch | $< 0$ | Cu, Bi, H₂O |
| Paramagnetisch | $> 0$ (klein) | Al, Pt |
| Ferromagnetisch | $\gg 0$ | Fe, Ni, Co |
| Antiferromagnetisch | $\approx 0$ | Mn, Cr |

</div>

<div>

**Curie-Weiss-Gesetz:**

$$\chi = \frac{C}{T - T_C}$$

Oberhalb $T_C$: ferromagnetisch → paramagnetisch

**Magnetisierung:**
$$\vec{B} = \mu_0 \cdot (1 + \chi) \cdot \vec{H} = \mu_0 \mu_r \vec{H}$$

</div>
</div>

---

## Zusammenfassung: Thermische Eigenschaften

| Eigenschaft | Symbol | Einheit | Bestimmt durch |
|-------------|--------|---------|----------------|
| Wärmekapazität | $c_p$ | J/(kg·K) | Atommasse, Schwingungsfreiheitsgrade |
| Ausdehnung | $\alpha_L$ | 10⁻⁶ K⁻¹ | Anharmonizität des Bindungspotentials |
| Wärmeleitfähigkeit | $\lambda$ | W/(m·K) | freie Elektronen (Metalle), Phononen |
| Diffusivität | $a$ | m²/s | $\lambda / (\rho c_p)$ |

**Faustregeln:**
- **Stärkere Bindung** → kleineres $\alpha_L$, höherer $T_{Schmelz}$, höhere $\Theta_D$
- **Freie Elektronen** → hohe $\lambda$ und $\sigma$ (Wiedemann-Franz)
- **Amorphe Struktur / Legierung** → $\lambda \downarrow$, $\sigma \downarrow$
- **Polymere:** hohe $c_p$, großes $\alpha_L$, sehr schlechte Wärmeleitung

---

## Zusammenfassung: Elektrische Eigenschaften

| Werkstoffklasse | $\sigma$ [S/m] | Bandlücke | Mechanismus |
|-----------------|--------------|-----------|-------------|
| Metalle | $10^6$–$10^8$ | keine | freie e⁻, Streuung begrenzt |
| Halbleiter (intrinsisch) | $10^{-4}$–$10^4$ | 0,1–3 eV | thermische Anregung über $E_g$ |
| Halbleiter (dotiert) | $10^{-2}$–$10^5$ | 0,1–3 eV | Donator-/Akzeptorniveaus |
| Isolatoren | $< 10^{-8}$ | > 5 eV | keine thermische Anregung bei RT |

**Merksätze:**
- Bandlücke bestimmt den Typ – Dotierung steuert den Halbleiter
- Metalle: $\rho_W \uparrow$ mit T (PTC) | Halbleiter: $\sigma \uparrow$ mit T (NTC)
- Defekte, Legierungen, Kaltverformung → immer $\sigma \downarrow$

---

## Literatur & Weiterführendes

- **Callister & Rethwisch:** *Materials Science and Engineering*, Wiley
- **Bergmann/Schäfer:** *Festkörperphysik*, de Gruyter
- **Askeland:** *Materialwissenschaften*, Spektrum

<div class="hinweis">

Formelsammlung und Übungsaufgaben auf dem Kursserver verfügbar.

</div>

---

## Fragen?

Prof. Dr.-Ing. Christian Willberg
Hochschule Magdeburg-Stendal
christian.willberg@h2.de