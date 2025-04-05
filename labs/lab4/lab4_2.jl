#case 2
# x'' + 2x' + 6x = 0
using DifferentialEquations

function lorenz!(du, u, p, t)
    a, b = p
    du[1] = u[2]
    du[2] = -a*du[1] - b*u[1] 
end

const x = -1.0
const y = -1.0
u0 = [x, y]

p = (sqrt(2), 6)
tspan = (0.0, 25.0)
prob = ODEProblem(lorenz!, u0, tspan, p)
sol = solve(prob, dtmax = 0.05)

using Plots; gr()

#решение системы уравнений
plot(sol)
savefig("lab4_julia_2.png")

#фазовый портрет
plot(sol, vars=(2,1))
savefig("lab4_julia_2_ph.png")