using Plots, Distributions

xs = 0:1:100
ys = min.(2.5 .* xs, 100)./100

plt = plot()
plot!(plt,xs,ys, label = "Admission Chance")
xlabel!(plt,"exam score")
plot!(plt,[50],seriestype=vline, label = "E(t), mean score", style=:dash)
plot!(plt,xs,10 .* pdf.(Normal(50,10),xs), label = "f(t), avg. score")
savefig(plt,"/Users/akapor/Documents/GitHub/research/TestBlindAdmissions-Discussion/BPplot.pdf")