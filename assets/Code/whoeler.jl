using Plots

x = -5:0.1:5


y = -x.^2

plot(x.+10,y.+20)
plot!(x.+20,y.+15)
plot!(x.+25,y.+8)
plot!(x.+30,y.+3)
