### A Pluto.jl notebook ###
# v0.19.45

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local iv = try Base.loaded_modules[Base.PkgId(Base.UUID("6e696c72-6542-2067-7265-42206c756150"), "AbstractPlutoDingetjes")].Bonds.initial_value catch; b -> missing; end
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : iv(el)
        el
    end
end

# ╔═╡ a1a1a1a1-0001-0001-0001-000000000001
begin
	using PlutoUI
	using Plots
end

# ╔═╡ a1a1a1a1-0001-0001-0001-000000000002
md"""
# Biegelinie 2. Ordnung - interaktive Demo

Berufungsvorlesung Prof. Dr.-Ing. Christian Willberg

Parameter ($\ell$, $EI$, Last) mit den Reglern verändern und live sehen, wie sich Momentenverlauf $M(x)$ und Biegelinie $w(x)$ ändern.
"""

# ╔═╡ a1a1a1a1-0001-0001-0001-000000000003
md"""
## Fall wählen
"""

# ╔═╡ a1a1a1a1-0001-0001-0001-000000000004
@bind fall Select([:kragarm => "Kragarm (Einzellast am freien Ende)", :einfeld => "Einfeldträger (Einzellast in Feldmitte)"])

# ╔═╡ a1a1a1a1-0001-0001-0001-000000000005
md"""
## Parameter

| | |
|---|---|
| Länge $\ell$ [m] | $(@bind ell Slider(1.0:0.5:10.0, default=4.0, show_value=true)) |
| Biegesteifigkeit $EI$ [kNm²] | $(@bind EI Slider(500.0:100.0:20000.0, default=5000.0, show_value=true)) |
| Last $P$ bzw. $F$ [kN] | $(@bind Last Slider(1.0:1.0:50.0, default=10.0, show_value=true)) |
"""

# ╔═╡ a1a1a1a1-0001-0001-0001-000000000006
begin
	# Kragarm: M(x) = -P(l-x),  w(x) = P/EI (l x^2/2 - x^3/6)
	Mx_kragarm(x, P, l) = -P * (l - x)
	wx_kragarm(x, P, l, EI_) = P / EI_ * (l * x^2 / 2 - x^3 / 6)

	# Einfeldtraeger, Last F in Feldmitte
	Mx_einfeld(x, F, l) = x <= l / 2 ? (F / 2) * x : (F / 2) * (l - x)
	function wx_einfeld(x, F, l, EI_)
		if x <= l / 2
			F * x / (48EI_) * (3l^2 - 4x^2)
		else
			xx = l - x
			F * xx / (48EI_) * (3l^2 - 4xx^2)
		end
	end
	nothing
end

# ╔═╡ a1a1a1a1-0001-0001-0001-000000000007
begin
	xs = range(0, ell, length = 200)
	if fall == :kragarm
		Ms = Mx_kragarm.(xs, Last, ell)
		ws = wx_kragarm.(xs, Last, ell, EI)
		wmax = wx_kragarm(ell, Last, ell, EI)
		titel = "Kragarm"
	else
		Ms = Mx_einfeld.(xs, Last, ell)
		ws = wx_einfeld.(xs, Last, ell, EI)
		wmax = wx_einfeld(ell / 2, Last, ell, EI)
		titel = "Einfeldträger"
	end

	p1 = plot(xs, Ms, lw = 3, color = :navy, legend = false,
		title = "Momentenverlauf M(x) - $titel", xlabel = "x [m]", ylabel = "M [kNm]",
		fill = (0, 0.15, :navy))
	hline!(p1, [0], color = :gray, lw = 1)

	p2 = plot(xs, -ws, lw = 3, color = :darkred, legend = false,
		title = "Biegelinie w(x) - $titel", xlabel = "x [m]", ylabel = "w [m] (nach unten positiv, gespiegelt dargestellt)")
	hline!(p2, [0], color = :gray, lw = 1)

	plot(p1, p2, layout = (2, 1), size = (720, 560))
end

# ╔═╡ a1a1a1a1-0001-0001-0001-000000000008
md"""
**Maximale Durchbiegung:** $(round(wmax, digits=6)) m
"""

# ╔═╡ Cell order:
# ╟─a1a1a1a1-0001-0001-0001-000000000002
# ╟─a1a1a1a1-0001-0001-0001-000000000003
# ╟─a1a1a1a1-0001-0001-0001-000000000004
# ╟─a1a1a1a1-0001-0001-0001-000000000005
# ╟─a1a1a1a1-0001-0001-0001-000000000006
# ╟─a1a1a1a1-0001-0001-0001-000000000007
# ╟─a1a1a1a1-0001-0001-0001-000000000008
# ╟─a1a1a1a1-0001-0001-0001-000000000001
