using Plots
using Plots.PlotMeasures
using LaTeXStrings

u = range(0, 1, length=100)

y1 = @. 15*u
y2 = @. 10*u
y3 = @. 5 + 0*u
y4 = @. 3 + 0*u
y = [y1 y2 y3 y4]
plot(u, y, xticks = -10:20:10,yticks = -10:30:20, linewidth=2,label=[L"Elastisch $E_1$" L"Elastisch $E_2$" L"Viskos $\eta\dot{\epsilon}_1$" L"Viskos $\eta\dot{\epsilon}_2$"], bottom_margin=50*mm)
# Labeling the axes
xlabel!("Dehnung [-]")
ylabel!(L"Spannung [$N/m^2$]")
savefig("Spannung-Dehnung.png") 
# Removing numbers from the axes
#xticks!([])
#yticks!([])


y1 = @. 15 + 0*u
y2 = @. 10 + 0*u
y3 = @. 6*u
y4 = @. 8*u
y = [y1 y2 y3 y4]
plot(u, y, xticks = -10:20:10,yticks = -10:30:20, linewidth=2,label=[L"Elastisch $E_1$" L"Elastisch $E_2$" L"Viskos $\eta\dot{\epsilon}_1$" L"Viskos $\eta\dot{\epsilon}_2$"])
# Labeling the axes
xlabel!(L"Dehnrate [$1/s$]")
ylabel!(L"Spannung [$N/m^2$]")
savefig("Spannung-Dehnrate.png") 


y1 = @. 15 + 0*u
y2 = @. 10 + 0*u
#y3 = @. 3*exp^(-u*3)
#y4 = @. 3*exp^(-u*4)
y = [y1 y2 y3 y4]
plot(u, y, xticks = -10:20:10,yticks = -10:30:20, linewidth=2,label=[L"Elastisch $E_1$" L"Elastisch $E_2$" L"Viskos $\eta\dot{\epsilon}_1$" L"Viskos $\eta\dot{\epsilon}_2$"])
# Labeling the axes
xlabel!(L"Zeit [$s$]")
ylabel!(L"Spannung [$N/m^2$]")
savefig("Spannung-Zeit.png") 