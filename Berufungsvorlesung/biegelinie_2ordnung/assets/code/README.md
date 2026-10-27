# Interaktives Pluto-Notebook: Einfeldträger mit verschiebbarer Einzellast

Begleitmaterial zur Vorlesung "Die Biegelinie 2. Ordnung" - lässt sich lokal als
Web-Interface starten. Zwei Schieber (Kraft F links, Position a unten) verändern
die Last live; die Biegelinie wird sofort neu berechnet und geplottet.

Die Herleitung (Momentenverlauf -> DGL -> zweifache Integration -> Rand-/
Übergangsbedingungen -> lösen) ist nicht als fertige Formel hinterlegt, sondern
wird bei jeder Schieberbewegung tatsächlich in Code ausgeführt (`solve_beam` in
`einfeldtraeger_interactive.jl`).

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
   Pluto.run(notebook = "$path*einfeldtraeger_interactive.jl")
   ```
   (Pfad ggf. anpassen, falls nicht aus diesem `assets`-Ordner heraus gestartet.)
4. Es öffnet sich automatisch ein Browser-Tab mit dem Notebook
   (Standard: `http://localhost:1234/...`). Falls nicht: die im Terminal
   ausgegebene URL manuell öffnen.
5. Benötigte Pakete (PlutoUI, CairoMakie, Polynomials) installiert Pluto beim
   ersten Öffnen automatisch in eine eigene, notebook-spezifische Umgebung -
   das kann beim allerersten Start 1-2 Minuten dauern.

## Bedienung

- **Schieber links:** Kraft F [N]
- **Schieber unten:** Position der Kraft a [m] entlang des Balkens
- Die Grafik in der Mitte aktualisiert sich automatisch bei jeder Änderung.
- Feste Parameter (Spannweite ℓ, Biegesteifigkeit EI) stehen in der Zelle
  "Feste Parameter" im Notebook und können dort direkt angepasst werden.

## Beenden

Im Terminal, in dem `Pluto.run()` läuft, `Strg+C` drücken, oder den
Browser-Tab schließen und den Julia-Prozess beenden.
