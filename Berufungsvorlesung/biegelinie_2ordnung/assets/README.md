# Interaktives Pluto-Notebook: Einfeldträger mit verschiebbarer Einzellast

`einfeldtraeger_interactive.jl` ist Begleitmaterial zur Vorlesung
**"Die Biegelinie 2. Ordnung"** (Beispiel 2: Der Einfeldträger) - ein
[Pluto.jl](https://plutojl.org/)-Notebook, das sich lokal als Web-Interface
starten lässt. Zwei Schieber (Kraft links, Position unten) verändern die
Last live; die Biegelinie wird sofort neu berechnet und geplottet.

Anders als in der Vorlesung steht die Last nicht fest in Feldmitte, sondern
an einer frei wählbaren Stelle `a` - so lässt sich zeigen, was mit der
Biegelinie passiert, wenn man die Kraft vergrößert oder entlang des
Balkens verschiebt.

## Was genau passiert im Code

Die Herleitung ist exakt die aus der Vorlesung und wird **nicht als fertige
Formel hinterlegt**, sondern bei jeder Schieberbewegung tatsächlich
durchgerechnet (Funktion `solve_beam` im Notebook):

1. Momentenverlauf je Bereich (Gleichgewicht)
2. Differentialgleichung `EI w'' = -M`
3. Zweifache Integration pro Bereich (`Polynomials.jl`)
4. Rand- und Übergangsbedingungen als lineares 4×4-Gleichungssystem,
   gelöst mit `A \ rhs`

Die Markdown-Zelle "Herleitung" im Notebook zeigt dieselben vier Schritte
als Formeln daneben, zum direkten Abgleich mit dem Code.

## Starten

Voraussetzung: [Julia](https://julialang.org/downloads/) ist installiert (einmalig).

1. Julia öffnen (Terminal: `julia`)
2. Darin einmalig Pluto installieren (nur beim allerersten Mal nötig):
   ```julia
   using Pkg
   Pkg.add("Pluto")
   ```
3. Pluto starten und das Notebook öffnen:
   ```julia
   using Pluto
   Pluto.run(notebook = "einfeldtraeger_interactive.jl")
   ```
   (Im Terminal vorher in diesen `assets`-Ordner wechseln, oder den vollen
   Pfad zur Datei angeben.)
4. Es öffnet sich automatisch ein Browser-Tab mit dem Notebook
   (Standard: `http://localhost:1234/...`). Öffnet sich kein Tab: die im
   Terminal ausgegebene URL manuell in den Browser kopieren.
5. **Erster Start:** Pluto installiert die benötigten Pakete (PlutoUI,
   CairoMakie, Polynomials) automatisch in eine eigene, notebook-eigene
   Umgebung - das kann beim allerersten Öffnen 1-2 Minuten dauern. Danach
   ist es sofort schnell.

## Bedienung

| Element | Wirkung |
|---|---|
| Schieber **links**: Kraft F [N] | ändert die Lastgröße |
| Schieber **unten**: Position a [m] | verschiebt die Last entlang des Balkens |
| Grafik in der Mitte | aktualisiert sich automatisch bei jeder Änderung |

Unter der Grafik steht zusätzlich der Zahlenwert der maximalen Durchbiegung
und der Vergleich mit der Vorlesungsformel $F\ell^3/48EI$ für den Fall
"Last in Feldmitte".

Feste Parameter (Spannweite `ℓ`, Biegesteifigkeit `EI`) stehen in der Zelle
"Feste Parameter" im Notebook und lassen sich dort direkt ändern.

## Fehlerbehebung

- **Port 1234 schon belegt:** Pluto meldet das im Terminal und nutzt
  automatisch den nächstfreien Port - einfach die ausgegebene URL verwenden.
- **Notebook hängt beim ersten Start:** normal, siehe Punkt 5 oben
  (Paketinstallation). Terminal-Ausgabe beobachten, es läuft im Hintergrund.
- **Notebook beenden:** im Terminal, in dem `Pluto.run()` läuft, `Strg+C`
  drücken, oder den Browser-Tab schließen und den Julia-Prozess beenden.

## Dateien in diesem Ordner

- `einfeldtraeger_interactive.jl` - das Pluto-Notebook (ausführbarer Code,
  keine separate Umgebungsdatei nötig)
- übrige Dateien (`*.tex`, `*.png`, `*.svg`) - die statischen Abbildungen
  der Vorlesungsfolien `index.md`, unabhängig vom Notebook
