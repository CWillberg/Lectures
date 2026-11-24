"""Erzeugt em_s07_figs.tex: Stabmodell (Klausur WS 2026, Aufgabe 5) in 5 Varianten.
Knoten: A(0,0) B(0,h) C(b,h) D(b/2,h/2); Staebe 1=AD 2=AB 3=BD 4=DC 5=BC."""
import math

HEAD = r"""\documentclass[tikz,border=8pt,multi=tikzpicture]{standalone}
\usepackage{amsmath}
\usepackage{xcolor}
\usetikzlibrary{arrows.meta, calc, patterns}
\definecolor{mainblue}{HTML}{001158}
\definecolor{accent}{HTML}{8592bc}
\definecolor{loadcol}{HTML}{1f6a8a}
\definecolor{numcol}{HTML}{c0504d}
\tikzset{
  force/.style={-{Stealth[length=3.2mm]}, line width=1.5pt, color=loadcol},
  dim/.style={{Stealth[length=2mm]}-{Stealth[length=2mm]}, line width=0.7pt, color=accent},
  member/.style={line width=1.6pt, color=mainblue},
  every node/.append style={font=\sffamily}
}
\newcommand{\festlager}{%
  \draw[line width=1pt] (0,0) -- (-0.3,-0.5) -- (0.3,-0.5) -- cycle;
  \draw[line width=1pt] (-0.42,-0.5) -- (0.42,-0.5);
  \foreach \x in {-0.42,-0.24,...,0.42} {\draw[line width=0.4pt] (\x,-0.5) -- (\x-0.13,-0.68);}
}
\newcommand{\loslager}{%
  \draw[line width=1pt] (0,0) -- (-0.3,-0.5) -- (0.3,-0.5) -- cycle;
  \foreach \x in {-0.18,0,0.18} {\draw[fill=white, line width=0.7pt] (\x,-0.6) circle (0.1);}
  \draw[line width=1pt] (-0.42,-0.72) -- (0.42,-0.72);
  \foreach \x in {-0.42,-0.24,...,0.42} {\draw[line width=0.4pt] (\x,-0.72) -- (\x-0.13,-0.9);}
}
\newcommand{\joint}[1]{\fill[mainblue] #1 circle (2.8pt);}
\begin{document}
"""

def num(v):  # deutsche Dezimalschreibweise vermeiden -> englisch (Vorlesung ist englisch)
    return f"{v:g}"

def pic(b, h, blab, hlab, supports, loads, alpha_lab, halflab=None, dpos="left", mirror=False):
    halflab = halflab or (blab + "/2")
    k = 4.2 / max(b, h)
    W, H = b * k, h * k
    A, B, C, D = (0, 0), (0, H), (W, H), (W / 2, H / 2)
    al = math.degrees(math.atan2(H, W))
    o = [r"\begin{tikzpicture}"]
    P = lambda p: f"({p[0]:.3f},{p[1]:.3f})"
    # supports
    for node, kind, orient in supports:
        pt = {'A': A, 'B': B}[node]
        macro = r"\festlager" if kind == 'pin' else r"\loslager"
        rot = 0 if orient == 'down' else -90
        o.append(rf"\begin{{scope}}[shift={{{P(pt)}}}, rotate={rot}] {macro} \end{{scope}}")
    # members
    for p, q in [(A, D), (A, B), (B, D), (D, C), (B, C)]:
        o.append(rf"\draw[member] {P(p)} -- {P(q)};")
    for p in (A, B, C, D):
        o.append(rf"\joint{{{P(p)}}}")
    # node labels
    a_lab_pos = "below right" if supports[0][2] == 'down' else "below right"
    o.append(rf"\node[{a_lab_pos}] at ($({A[0]},{A[1]})+(0.25,-0.05)$) {{$A$}};")
    o.append(rf"\node[above left] at ($({B[0]},{B[1]})+(0.0,0.12)$) {{$B$}};")
    o.append(rf"\node[above right] at ($({C[0]},{C[1]})+(0.05,0.05)$) {{$C$}};")
    doff = {"left": "(-0.12,0)", "below right": "(0.1,-0.1)"}[dpos]
    o.append(rf"\node[{dpos}] at ($({D[0]},{D[1]})+{doff}$) {{$D$}};")
    # member numbers (red), offset perpendicular
    def mlab(p, q, n, side=1, t=0.5):
        mx, my = p[0] + t * (q[0] - p[0]), p[1] + t * (q[1] - p[1])
        dx, dy = q[0] - p[0], q[1] - p[1]; L = math.hypot(dx, dy)
        nx, ny = -dy / L * side, dx / L * side
        o.append(rf"\node[numcol] at ({mx + 0.28*nx:.3f},{my + 0.28*ny:.3f}) {{\small \textbf{{{n}}}}};")
    mlab(A, D, 1, -1, 0.62); mlab(A, B, 2, 1); mlab(B, D, 3, -1); mlab(D, C, 4, -1); mlab(B, C, 5, 1)
    # angles alpha at A (to horizontal), B (between BC and BD), C (between CB and CD)
    r = 0.75
    o.append(rf"\draw[accent, dashed, line width=0.6pt] {P(A)} -- ({A[0]+1.1:.3f},{A[1]:.3f});")
    o.append(rf"\draw[accent, line width=0.8pt] ({r:.3f},0) arc (0:{al:.3f}:{r});")
    o.append(rf"\node[accent] at ({(r+0.35)*math.cos(math.radians(al/2)):.3f},{(r+0.35)*math.sin(math.radians(al/2)):.3f}) {{\small ${alpha_lab}$}};")
    o.append(rf"\draw[accent, line width=0.8pt] ($({B[0]},{B[1]})+(0:{r})$) arc (0:{-al:.3f}:{r});")
    o.append(rf"\node[accent] at ($({B[0]},{B[1]})+({-al/2:.3f}:{r+0.35})$) {{\small ${alpha_lab}$}};")
    o.append(rf"\draw[accent, line width=0.8pt] ($({C[0]},{C[1]})+(180:{r})$) arc (180:{180+al:.3f}:{r});")
    o.append(rf"\node[accent] at ($({C[0]},{C[1]})+({180+al/2:.3f}:{r+0.35})$) {{\small ${alpha_lab}$}};")
    # dimensions: bottom b/2 + b/2, right h
    y0 = -1.35
    o.append(rf"\draw[dim] (0,{y0}) -- ({W/2:.3f},{y0});")
    o.append(rf"\draw[dim] ({W/2:.3f},{y0}) -- ({W:.3f},{y0});")
    o.append(rf"\node[below, accent] at ({W/4:.3f},{y0-0.05}) {{\small ${halflab}$}};")
    o.append(rf"\node[below, accent] at ({3*W/4:.3f},{y0-0.05}) {{\small ${halflab}$}};")
    for x in (0, W/2, W):
        o.append(rf"\draw[accent, line width=0.4pt] ({x:.3f},{y0-0.15}) -- ({x:.3f},{y0+0.15});")
    xr = -1.55
    o.append(rf"\draw[dim] ({xr:.3f},0) -- ({xr:.3f},{H:.3f});")
    o.append(rf"\node[left, accent] at ({xr-0.05:.3f},{H/2:.3f}) {{\small ${hlab}$}};")
    o.append(rf"\draw[accent, line width=0.4pt, dotted] (-0.95,0) -- ({xr-0.15:.3f},0);")
    o.append(rf"\draw[accent, line width=0.4pt, dotted] (-0.95,{H:.3f}) -- ({xr-0.15:.3f},{H:.3f});")
    # loads: (node, magnitude label, direction deg, show angle-to-horizontal)
    for node, lab, ang, show in loads:
        p = {'C': C, 'D': D}[node]
        Lf = 1.5
        ex, ey = p[0] + Lf*math.cos(math.radians(ang)), p[1] + Lf*math.sin(math.radians(ang))
        o.append(rf"\draw[force] {P(p)} -- ({ex:.3f},{ey:.3f});")
        lx, ly = p[0] + (Lf+0.3)*math.cos(math.radians(ang)), p[1] + (Lf+0.3)*math.sin(math.radians(ang))
        anchor = "right" if math.cos(math.radians(ang)) > 0.3 else ("left" if math.cos(math.radians(ang)) < -0.3 else ("below" if ang % 360 > 180 else "above"))
        anchor = {"right":"right","left":"left","below":"below","above":"above"}[anchor]
        lx, ly = (ex, ey)
        if abs(math.sin(math.radians(ang))) < 0.01:
            if node == "C" and math.cos(math.radians(ang)) > 0:
                anchor = "right"; lx, ly = ex, ey
            else:
                anchor = "above"; lx, ly = (p[0]+ex)/2, ey
        o.append(rf"\node[loadcol, {anchor}] at ({lx:.3f},{ly:.3f}) {{\small ${lab}$}};")
        if show:
            ref = 0 if math.cos(math.radians(ang)) >= 0 else 180
            o.append(rf"\draw[loadcol, dashed, line width=0.5pt] {P(p)} -- ($({p[0]:.3f},{p[1]:.3f})+({ref}:1.2)$);")
            o.append(rf"\draw[loadcol, line width=0.7pt] ($({p[0]:.3f},{p[1]:.3f})+({ref}:0.85)$) arc ({ref}:{ang}:0.85);")
            mid = (ref + ang) / 2
            o.append(rf"\node[loadcol] at ($({p[0]:.3f},{p[1]:.3f})+({mid}:1.25)$) {{\scriptsize ${show}$}};")
    o.append(r"\end{tikzpicture}")
    if mirror:  # an der Senkrechten spiegeln: Wand rechts; Texte bleiben lesbar, left/right der Labels tauschen
        import re
        sw = lambda m: m.group(0).replace("left", "#L#").replace("right", "left").replace("#L#", "right")
        o = [re.sub(r"\\node\[[^\]]*\]", sw, line) for line in o]
        o[0] = r"\begin{tikzpicture}[xscale=-1]"
    return "\n".join(o)

std = [('A', 'pin', 'down'), ('B', 'roller', 'wall')]
swp = [('A', 'roller', 'wall'), ('B', 'pin', 'wall')]
pics = [
    # 0: allgemeines Modell
    pic(2, 2, "b", "h", std, [], r"\alpha"),
    # 1..5: Aufgaben 7.1-7.5
    pic(2, 2, r"2\,\text{m}", r"2\,\text{m}", std, [('C', r"F_1 = 10\,\text{kN}", 0, None), ('C', r"F_2 = 30\,\text{kN}", 90, None)], r"45^\circ", r"1\,\text{m}"),
    pic(1.5, 1.5, r"1.5\,\text{m}", r"1.5\,\text{m}", std, [('C', r"F_1 = 20\,\text{kN}", 270, None), ('D', r"F_2 = 10\,\text{kN}", 180, None)], r"45^\circ", r"0.75\,\text{m}", "below right"),
    pic(2, 2, r"2\,\text{m}", r"2\,\text{m}", std, [('D', r"F = 15\,\text{kN}", -30, r"30^\circ")], r"45^\circ", r"1\,\text{m}"),
    pic(2, 2, r"2\,\text{m}", r"2\,\text{m}", swp, [('C', r"F_1 = 12\,\text{kN}", 0, None), ('C', r"F_2 = 24\,\text{kN}", 270, None)], r"45^\circ", r"1\,\text{m}", mirror=True),
    pic(3, 2, r"3\,\text{m}", r"2\,\text{m}", std, [('C', r"F = 20\,\text{kN}", -60, r"60^\circ")], r"33.7^\circ", r"1.5\,\text{m}", mirror=True),
]
open('em_s07_figs.tex', 'w').write(HEAD + "\n\n".join(pics) + "\n\\end{document}\n")
