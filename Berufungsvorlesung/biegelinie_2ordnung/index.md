---
marp: true
header: 'Berufungsvorlesung - Die Biegelinie 2. Ordnung'
theme: h2
paginate: true
math: katex
style: |
  section, section.title-slide {
    background-image: url("./assets/background_nologo.png");
  }
---

<!-- _class: lead -->
# Die Differentialgleichung der Biegelinie 2. Ordnung
## Herleitung, Lösung und Anwendung


Prof. Dr.-Ing. Christian Willberg
28.10.2026

<img src="https://quickchart.io/qr?text=https://cwillberg.github.io/Lectures/Berufungsvorlesung/biegelinie_2ordnung/&light=0000&size=220" style="height:150px;width:auto;margin-top:20px;">

---

## Auslegung eines Bauteils

- bisher Momentenverläufe und daraus abgeleitet Spannungen und Dehnungen
- Fokus auf Materialversagen und Bewertung nach Festigkeit
- **immer** für das statisch bestimmte System

![bg right fit](../../assets/Figures/Stress_strain_ductile.svg)



---


# Warum interessiert uns die Durchbiegung eines Balkens?



---

## Beispiel 1: Windturbine

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/c/c8/GE_5.3-158_Beckum.jpg?utm_source=de.wikipedia.org&utm_campaign=imageinfo&utm_content=original)

- Rotorblätter biegen sich unter Windlast zum Turm hin durch
- **Turmfreigang** (Tower Clearance) begrenzt die zulässige Durchbiegung
- Zu weiche Auslegung $\Rightarrow$ Kollisionsgefahr Blatt/Turm - unabhängig von Festigkeit des Blattes

<!-- _footer: 'Bild: Vinaceus, Wikimedia Commons (CC BY-SA 4.0)' -->

---

## Beispiel 2: Blattfeder

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/6/63/Leafs1.jpg?utm_source=www.wikidata.org&utm_campaign=imageinfo&utm_content=original)

- Fahrzeugfederung: großer Federweg bei moderater Kraft
- Hier ist **geringe** Steifigkeit die gewünschte Funktion
- $\Rightarrow$ Steifigkeit ist in allen drei Fällen ein eigenständiges, von Festigkeit & Ermüdung unabhängiges Auslegungskriterium

<!-- _footer: 'Bild: Jim Gill, Wikimedia Commons (public domain)' -->

---

## Warum die Biegelinie? Quantitativ

- Durchbiegungen sind beispielsweise durch Normen begrenzt 
- Funktionen werden durch Durchbiegung beeinträchtigt 
- Frage: Wie groß ist $w(x)$ an jeder Stelle des Balkens - nicht nur der Maximalwert?

<!-- _footer: 'Diese Vorlesung: lineare Elastizität, kleine Verformungen, ebene Biegung' -->

---

## Verformung im 1D-Fall: Zugstab

![bg right fit](./assets/biegelinie_zugstab.png)

- Kraft $F$, Querschnittsfläche $A$ $\Rightarrow$ Spannung $\sigma = F/A$
- Hookesches Gesetz: $\varepsilon = \sigma/E$
- Verlängerung: $u = \varepsilon L = \dfrac{FL}{EA}$


---

<!-- _class: cols-2 -->
## Was ist der Unterschied beim Balken?

<div class="ldiv">

- Beim Balken wirkt am Querschnitt ein **Biegemoment** $M(x)$ statt nur einer Normalkraft
- Schnittgrößen: $F_q(x)$ (Querkraft), $M_b(x)$ (Biegemoment)
- Gleichgewicht am Element: 
$\dfrac{dF_q}{dx} = -q(x) \qquad\dfrac{dM_b}{dx} = F_q(x)$
- Die Biegespannung und Dehnung ist **nicht** konstant über den Querschnitt$\sigma(x,z)$

$$\sigma(x,z) = \frac{M_b(x)}{I}\,z$$

</div>
<div class="rimg">

![w:420](./assets/biegelinie_element.png)

</div>

---

## Die Biegelinie $w(x)$

![bg right fit](./assets/biegelinie_konzept.png)

- Beim Balken variiert die Dehnung über $z$ $\Rightarrow$ der Balken **krümmt sich**
- $x$ - Balkenachse (unverformt), $w(x)$ - Durchbiegung in $z$-Richtung
- $w'(x) = \tan\varphi$ - Neigung der Tangente, $\rho$ - Krümmungsradius an der Stelle $x$

---




![bg right fit](./assets/biegelinie_kruemmung.png)

**Krümmung**
$$\rho = \dfrac{ds}{d\varphi}$$

**Biegelinie als Funktion $w(x)$**
$$\frac{1}{\rho} = \frac{w''(x)}{\left(1+w'(x)^2\right)^{3/2}}$$
Annahme: **kleine Durchbiegungen** $w'(x) \ll 1$ (typisch $< 5°$ Neigung)
$\rightarrow 1 + w'(x)^2 \approx 1$

$$\boxed{\frac{1}{\rho} \approx w''(x)}$$




---

## Spannungsverteilung über die Querschnittshöhe

![bg right fit](./assets/biegelinie_spannungsverteilung.png)

- An jeder Stelle $x$: Spannung linear über $z$, Null an der neutralen Faser
- Zug auf der einen Seite, Druck auf der anderen

---


## Elastizitätsgesetz der Biegung

Drei bekannte Zutaten zusammenführen:

1. **Biegespannung**: $\sigma(x,z) = \dfrac{M_b(x)}{I}\,z$
2. **Hookesches Gesetz:** $\varepsilon = \dfrac{\sigma}{E}$ $\;\Rightarrow\;$ $\varepsilon(x,z) = \dfrac{M_b(x)}{EI}\,z$
3. **Geometrie** (vorige Folie): $\varepsilon(x,z) = \dfrac{z}{\rho(x)}$

Gleichsetzen von (2) und (3):

$$\frac{M_b(x)}{EI}\,z = \frac{z}{\rho(x)} \quad\Rightarrow\quad \boxed{\frac{1}{\rho(x)} = \frac{M_b(x)}{EI}}$$

---




## Die Differentialgleichung der Biegelinie 2. Ordnung

Kombination von Geometrie und Werkstoffgesetz:

$$\frac{1}{\rho(x)} \approx w''(x) \qquad \text{und} \qquad \frac{1}{\rho(x)} = \frac{M_b(x)}{EI}$$

$$\boxed{EI\,w''(x) = -M_b(x)}$$

Das Vorzeichen folgt aus der gewählten Koordinatenkonvention ($z$ nach unten, $M_b$ positiv wenn es die Biegelinie "nach oben" krümmt - hier: Minuszeichen bei $z$ nach unten) $\rightarrow$ $w(x)$ positiv in $z$ für positive $M_b$


---


## Zweifache Integration

$$EI\,w''(x) = -M_b(x)$$

1. Erste Integration: $EI\,w'(x) = -\int M_b(x)\,dx + C_1$ (Neigung)
2. Zweite Integration: $EI\,w(x) = -\int\!\!\int M_b(x)\,dx\,dx + C_1 x + C_2$ (Durchbiegung)

- Zwei Integrationskonstanten $C_1$, $C_2$ **pro Bereich** mit eigener $M_b(x)$-Funktion
- Bestimmung über **Randbedingungen** (an den Lagern) und **Übergangsbedingungen** (zwischen Bereichen)

---

# Beispiel: Der Einfeldträger

---

## Einfeldträger mit Einzellast in Feldmitte

![bg right fit](./assets/biegelinie_einfeldtraeger.png)

- Loslager bei $x=0$, Festlager bei $x=\ell$
- Einzellast $F$ bei $x=\ell/2$
- Zwei Bereiche nötig: I ($0 \le x \le \ell/2$), II ($\ell/2 \le x \le \ell$)
- Randbedingungen an den Lagern **und** Übergangsbedingungen am Lastangriffspunkt $x=\ell/2$ nötig

---

## Schritt 1: Auflagerreaktionen und Momente

![bg right fit](./assets/biegelinie_uebergang.png)

Symmetrie: $A = B = F/2$

$$M_I(x) = \frac{F}{2}\,x \qquad (0 \le x \le \ell/2)$$
$$M_{II}(x) = \frac{F}{2}(\ell - x) \qquad (\ell/2 \le x \le \ell)$$

Maximalmoment in Feldmitte: $M(\ell/2) = F\ell/4$

---

## Lösung: zwei Bereiche, vier Bedingungen

- Integration in **beiden** Bereichen $\Rightarrow$ vier Integrationskonstanten $C_1,\dots,C_4$ (zweifache Integration, s.o.)
- Bestimmt aus $w_I(0)=0$, $w_{II}(\ell)=0$ (Lager) sowie $w_I(\ell/2)=w_{II}(\ell/2)$, $w_I'(\ell/2)=w_{II}'(\ell/2)$ (Stetigkeit am Übergang)

**Ergebnis:**

$$w(x) = \frac{F x}{48\,EI}\left(3\ell^2 - 4x^2\right) \qquad (0 \le x \le \ell/2)$$

$$\boxed{w_{max} = w(\ell/2) = \frac{F\ell^3}{48\,EI}}$$

Beide Bereiche liefern an der Lastposition $x=\ell/2$ denselben Wert und dieselbe Steigung - die Übergangsbedingungen sind erfüllt.

---

## Biegelinie des Einfeldträgers

![bg right fit](./assets/biegelinie_einfeldtraeger_wx.png)

- Symmetrisch, Null an beiden Lagern
- Maximum in Feldmitte: $w(\ell/2)=F\ell^3/48EI$
- Stetiger, glatter Verlauf über den Übergang bei $x=\ell/2$ hinweg - kein Knick

---





## Zusammenfassung und Grenzen der Theorie

- Krümmung $\dfrac{1}{\rho}\approx w''(x)$ + Werkstoffgesetz $\dfrac{1}{\rho}=\dfrac{M}{EI}$ $\Rightarrow$ $\boxed{EI\,w''=-M(x)}$
- Lösung durch zweifache Integration, Konstanten aus Rand-/Übergangsbedingungen
- **Schubverformung** vernachlässigt (Euler-Bernoulli) - bei gedrungenen Balken (Timoshenko-Theorie nötig)
- **Kleine Verformungen** vorausgesetzt - bei großen Durchbiegungen nichtlineare Krümmung nötig
- **Lineare Elastizität** - keine Plastizität, kein Kriechen

---

<!-- _class: lead -->
# Vielen Dank für Ihre Aufmerksamkeit

## Fragen und Diskussion
