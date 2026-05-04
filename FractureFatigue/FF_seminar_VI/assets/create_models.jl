# SPDX-FileCopyrightText: 2025 Christian Willberg <christian.willberg@dlr.de>
#
# SPDX-License-Identifier: BSD-3-Clause

using Printf

# ─────────────────────────────────────────────────────────────────────────────
# Configuration – alle Parameter hier anpassen
# ─────────────────────────────────────────────────────────────────────────────

const LX           = 0.01    # Plattenbreite [m]
const LY           = 0.01    # Plattenhöhe   [m]
const DX           = 0.0002  # Gitterabstand [m]
const HORIZON_MULT = 3.01    # Horizont = HORIZON_MULT * DX
const BC_ROWS      = 3       # Anzahl Knotenreihen für oben/unten BC

# Material
const MATERIAL_NAME  = "mat_elastic"
const YOUNGS_MODULUS = 200000.0  # [MPa]
const POISSON_RATIO  = 0.3
const DENSITY        = 1.95e-8   # [t/mm³]

# Solver
const FINAL_TIME = 1.0
const N_STEPS    = 3

# Ausgabe
const OUTPUT_FREQ = 1

# Randbedingungen
const BC1_VALUE = 0.001   # uy oben  [m]  (auf alle 3 Reihen aufgeprägt)
const BC2_VALUE = 0       # uy unten
const BC3_VALUE = 0       # ux rechts-unten (einzelner Knoten)

# Bond Filter – Rissgeometrie
# Beide Filter: Länge 0.002 m, zentriert auf Plattenmitte (0.005, 0.005)
const CRACK_HALF_LENGTH = 0.001   # [m]  → ± 1 mm von der Mitte

# Modell 1: horizontaler Bond Filter  (Normal y, Linie bei y=LY/2)
#   x: 0.004 .. 0.006
const BF_H_Y         = LY / 2
const BF_H_X_START   = LX / 2 - CRACK_HALF_LENGTH   # 0.004
const BF_H_X_END     = LX / 2 + CRACK_HALF_LENGTH   # 0.006

# Modell 2: vertikaler Bond Filter  (Normal x, Linie bei x=LX/2)
#   y: 0.004 .. 0.006
const BF_V_X         = LX / 2
const BF_V_Y_START   = LY / 2 - CRACK_HALF_LENGTH   # 0.004
const BF_V_Y_END     = LY / 2 + CRACK_HALF_LENGTH   # 0.006

# ─────────────────────────────────────────────────────────────────────────────
# Cell-centred Layout: Knoten bei DX/2, 3DX/2, ...
# Mit DX=0.0002: y-Werte 0.0001, 0.0003, ..., 0.0099  → kein Knoten bei 0.005 ✓
#                x-Werte 0.0001, 0.0003, ..., 0.0099  → kein Knoten bei 0.004/0.006 ✓
# ─────────────────────────────────────────────────────────────────────────────

function generate_mesh()
    offset = DX / 2
    nx = Int(round(LX / DX))
    ny = Int(round(LY / DX))

    xs = [offset + i * DX for i in 0:nx-1]
    ys = [offset + j * DX for j in 0:ny-1]

    # Sicherheitschecks
    tol = 1e-10
    for y in ys
        isapprox(y, BF_H_Y;       atol=tol) && error("Knoten auf horizontaler Risslinie y=$y!")
        isapprox(y, BF_V_Y_START; atol=tol) && error("Knoten auf vertikaler Rissgrenze y=$y!")
        isapprox(y, BF_V_Y_END;   atol=tol) && error("Knoten auf vertikaler Rissgrenze y=$y!")
    end
    for x in xs
        isapprox(x, BF_V_X;       atol=tol) && error("Knoten auf vertikaler Risslinie x=$x!")
        isapprox(x, BF_H_X_START; atol=tol) && error("Knoten auf horizontaler Rissgrenze x=$x!")
        isapprox(x, BF_H_X_END;   atol=tol) && error("Knoten auf horizontaler Rissgrenze x=$x!")
    end

    n_total  = nx * ny
    nodes    = zeros(n_total, 2)
    block_id = ones(Int, n_total)

    idx = 1
    for y in ys, x in xs
        nodes[idx, 1] = x
        nodes[idx, 2] = y
        idx += 1
    end

    # ── Nodesets ──────────────────────────────────────────────────────────────
    # top/bottom: jeweils BC_ROWS Reihen
    top_ys    = ys[end-BC_ROWS+1:end]
    bottom_ys = ys[1:BC_ROWS]

    nodesets = Dict{String, Vector{Int}}()
    nodesets["top"]    = [j for j in 1:n_total if any(isapprox(nodes[j,2], y; atol=tol) for y in top_ys)]
    nodesets["bottom"] = [j for j in 1:n_total if any(isapprox(nodes[j,2], y; atol=tol) for y in bottom_ys)]

    # einzelner Knoten rechts-unten (x=xs[end], y=ys[1]) → ux=0
    nodesets["bottom_right"] = [j for j in 1:n_total
                                   if nodes[j,1] ≈ xs[end] && nodes[j,2] ≈ ys[1]]

    return nodes, block_id, nodesets, nx, ny
end

# ─────────────────────────────────────────────────────────────────────────────
# File writers
# ─────────────────────────────────────────────────────────────────────────────

function header_comment(io)
    println(io, "# SPDX-FileCopyrightText: 2025 Christian Willberg <christian.willberg@dlr.de>")
    println(io, "#")
    println(io, "# SPDX-License-Identifier: BSD-3-Clause")
    println(io, "")
end

function write_mesh_file(filename::String, nodes::Matrix{Float64}, block_id::Vector{Int})
    volume = DX * DX
    open(filename, "w") do io
        header_comment(io)
        println(io, "header: x y block_id volume")
        for i in 1:size(nodes, 1)
            @printf(io, "%.6E %.6E %d %.6E\n",
                    nodes[i,1], nodes[i,2], block_id[i], volume)
        end
    end
end

function write_nodeset_file(filename::String, ids::Vector{Int})
    open(filename, "w") do io
        header_comment(io)
        println(io, "header: global_id")
        for id in ids
            println(io, id)
        end
    end
end

# ─────────────────────────────────────────────────────────────────────────────
# YAML writer
# ─────────────────────────────────────────────────────────────────────────────

"""
bond_filter_lines: Vector von NamedTuples mit den Bond-Filter-Parametern.
Jeder Eintrag: (name, normal_x, normal_y, llc_x, llc_y, llc_z,
                bvec_x, bvec_y, bvec_z, bottom_length, side_length)
"""
function write_yaml(filename::String, output_filename::String,
                    bond_filters::Vector)
    horizon = HORIZON_MULT * DX

    open(filename, "w") do io
        println(io, "PeriLab:")

        # ── Discretization ────────────────────────────────────────────────────
        println(io, "  Discretization:")
        println(io, "    \"Input Mesh File\": \"mesh.txt\"")
        println(io, "    \"Node Sets\":")
        println(io, "      \"Node Set 1\": \"ns_top.txt\"")
        println(io, "      \"Node Set 2\": \"ns_bottom.txt\"")
        println(io, "      \"Node Set 3\": \"ns_bottom_right.txt\"")
        println(io, "    Type: \"Text File\"")
        println(io, "    Bond Filters:")
        for bf in bond_filters
            println(io, "      $(bf.name):")
            println(io, "        Type: \"Rectangular_Plane\"")
            @printf(io,  "        Normal X: %.1f\n", bf.normal_x)
            @printf(io,  "        Normal Y: %.1f\n", bf.normal_y)
            println(io, "        Normal Z: 0.0")
            @printf(io,  "        Lower Left Corner X: %.4f\n", bf.llc_x)
            @printf(io,  "        Lower Left Corner Y: %.4f\n", bf.llc_y)
            @printf(io,  "        Lower Left Corner Z: %.1f\n", bf.llc_z)
            @printf(io,  "        Bottom Unit Vector X: %.1f\n", bf.bvec_x)
            @printf(io,  "        Bottom Unit Vector Y: %.1f\n", bf.bvec_y)
            println(io, "        Bottom Unit Vector Z: 0.0")
            @printf(io,  "        Bottom Length: %.4f\n", bf.bottom_length)
            @printf(io,  "        Side Length: %.1f\n",   bf.side_length)
            println(io, "        Allow Contact: false")
        end

        # ── Multistep Solver ──────────────────────────────────────────────────
        println(io, "  Multistep Solver:")
        println(io, "    \"Step 1\":")
        println(io, "      \"Material Models\": true")
        @printf(io,  "      \"Final Time\": %.1f\n", FINAL_TIME)
        println(io, "      \"Step ID\": 1")
        println(io, "      \"Linear Static Matrix Based\":")
        println(io, "        \"Safety Factor\": 1.0")
        @printf(io,  "      \"Initial Time\": %.1f\n", 0.0)
        println(io, "      \"Number of Steps\": $N_STEPS")

        # ── Blocks ────────────────────────────────────────────────────────────
        println(io, "  Blocks:")
        println(io, "    block_1:")
        println(io, "      \"Block ID\": 1")
        @printf(io,  "      Horizon: %.4g\n", horizon)
        println(io, "      \"Material Model\": \"$MATERIAL_NAME\"")
        @printf(io,  "      Density: %.2e\n", DENSITY)

        # ── Outputs ───────────────────────────────────────────────────────────
        println(io, "  Outputs:")
        println(io, "    Output1:")
        println(io, "      \"Output Frequency\": $OUTPUT_FREQ")
        println(io, "      \"Output Variables\":")
        println(io, "        Displacements: true")
        println(io, "        \"Number of Neighbors\": true")
        println(io, "        Damage: true")
        println(io, "        Strain: true")
        println(io, "        \"Cauchy Stress\": true")
        println(io, "        Velocity: true")
        println(io, "        Forces: true")
        println(io, "      \"Output File Type\": \"Exodus\"")
        println(io, "      \"Output Filename\": \"$output_filename\"")

        # ── Models ────────────────────────────────────────────────────────────
        println(io, "  Models:")
        println(io, "    Material Models:")
        println(io, "      $MATERIAL_NAME:")
        @printf(io,  "        \"Poisson's Ratio\": %.1f\n", POISSON_RATIO)
        println(io, "        \"Material Model\": \"Correspondence Elastic\"")
        @printf(io,  "        \"Young's Modulus\": %.1f\n", YOUNGS_MODULUS)
        println(io, "        Symmetry: \"isotropic plane stress\"")
        println(io, "        \"Zero Energy Control\": \"Global\"")
        println(io, "    Pre Calculation Global:")
        println(io, "      \"Deformed Bond Geometry\": true")
        println(io, "      \"Shape Tensor\": false")
        println(io, "      \"Bond Associated Deformation Gradient\": false")
        println(io, "      \"Deformation Gradient\": false")

        # ── Boundary Conditions ───────────────────────────────────────────────
        println(io, "  Boundary Conditions:")
        println(io, "    BC_1:")
        println(io, "      Value: $BC1_VALUE")
        println(io, "      Coordinate: \"y\"")
        println(io, "      Variable: \"Displacements\"")
        println(io, "      Type: \"Dirichlet\"")
        println(io, "      Node Set: \"Node Set 1\"")
        println(io, "    BC_2:")
        println(io, "      Value: $BC2_VALUE")
        println(io, "      Coordinate: \"y\"")
        println(io, "      Variable: \"Displacements\"")
        println(io, "      Type: \"Dirichlet\"")
        println(io, "      Node Set: \"Node Set 2\"")
        println(io, "    BC_3:")
        println(io, "      Value: $BC3_VALUE")
        println(io, "      Coordinate: \"x\"")
        println(io, "      Variable: \"Displacements\"")
        println(io, "      Type: \"Dirichlet\"")
        println(io, "      Node Set: \"Node Set 3\"")
    end
end

# ─────────────────────────────────────────────────────────────────────────────
# Bond Filter definitions
# ─────────────────────────────────────────────────────────────────────────────

# Modell 1: horizontaler Riss — Normal in y-Richtung
# Ebene liegt bei y=BF_H_Y, erstreckt sich in x von BF_H_X_START bis BF_H_X_END
# Lower Left Corner: (X_START, Y_CRACK, -1), Bottom-Vektor: x-Richtung
const BF_HORIZONTAL = [(
    name          = "bf_horizontal",
    normal_x      = 0.0,
    normal_y      = 1.0,
    llc_x         = BF_H_X_START,
    llc_y         = BF_H_Y,
    llc_z         = -1.0,
    bvec_x        = 1.0,
    bvec_y        = 0.0,
    bottom_length = BF_H_X_END - BF_H_X_START,
    side_length   = 2.0,
)]

# Modell 2: vertikaler Riss — Normal in x-Richtung
# Ebene liegt bei x=BF_V_X, erstreckt sich in y von BF_V_Y_START bis BF_V_Y_END
# Lower Left Corner: (X_CRACK, Y_START, -1), Bottom-Vektor: y-Richtung
const BF_VERTICAL = [(
    name          = "bf_vertical",
    normal_x      = 1.0,
    normal_y      = 0.0,
    llc_x         = BF_V_X,
    llc_y         = BF_V_Y_START,
    llc_z         = -1.0,
    bvec_x        = 0.0,
    bvec_y        = 1.0,
    bottom_length = BF_V_Y_END - BF_V_Y_START,
    side_length   = 2.0,
)]

# ─────────────────────────────────────────────────────────────────────────────
# Main
# ─────────────────────────────────────────────────────────────────────────────

function main()
    nodes, block_id, nodesets, nx, ny = generate_mesh()

    println("Mesh: $(nx)×$(ny) = $(size(nodes,1)) Knoten")
    println("Horizont: $(round(HORIZON_MULT*DX; digits=6)) m")
    println("BC Reihen: $BC_ROWS oben + $BC_ROWS unten " *
            "($(length(nodesets["top"])) + $(length(nodesets["bottom"])) Knoten)")
    println()

    models = [
        (outdir="model_horizontal_crack", bf=BF_HORIZONTAL, outfile="result_h"),
        (outdir="model_vertical_crack",   bf=BF_VERTICAL,   outfile="result_v"),
    ]

    for m in models
        mkpath(m.outdir)

        write_mesh_file(joinpath(m.outdir, "mesh.txt"), nodes, block_id)
        write_nodeset_file(joinpath(m.outdir, "ns_top.txt"),          nodesets["top"])
        write_nodeset_file(joinpath(m.outdir, "ns_bottom.txt"),       nodesets["bottom"])
        write_nodeset_file(joinpath(m.outdir, "ns_bottom_right.txt"), nodesets["bottom_right"])
        write_yaml(joinpath(m.outdir, "model.yaml"), m.outfile, m.bf)

        println("Erstellt: $(m.outdir)/  [Bond Filter: $(m.bf[1].name)]")
    end

    println("\nFertig.")
end

if abspath(PROGRAM_FILE) == @__FILE__
    main()
end