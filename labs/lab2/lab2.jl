using DifferentialEquations, Plots

# Константы
k = 6.4
r0 = k/3.4    # Начальный радиус для первого случая
r0_2 = k/1.4  # Начальный радиус для второго случая
theta0 = (0.0, 2*pi)    # Диапазон углов для первого случая
theta0_2 = (-pi, pi)    # Диапазон углов для второго случая
fi = 3*pi/4    # Угол направления лодки
t = (0, 50)    # Временной диапазон

# Функция траектории лодки
x(t) = tan(fi)*t

# Дифференциальное уравнение для катера
f(r, p, t) = r/sqrt(4.76)  # Исправлен синтаксис sqrt

# Первый случай
prob = ODEProblem(f, r0, theta0)
sol = solve(prob, saveat=0.01)

# Создание первого графика
p1 = plot(sol.t, sol.u, 
    proj=:polar, 
    lims=(0, 15), 
    label="Траектория движения катера 1",
    title="Случай 1")

# Добавление траектории лодки к первому графику
t_range = range(0, 15, length=100)
ugol = [fi for _ in t_range]
x_lims = [x(i) for i in t_range]
plot!(p1, ugol, x_lims, 
    proj=:polar, 
    lims=(0,15), 
    label="Траектория движения лодки")

# Второй случай
prob_2 = ODEProblem(f, r0_2, theta0_2)
sol_2 = solve(prob_2, saveat=0.01)

# Создание второго графика
p2 = plot(sol_2.t, sol_2.u, 
    proj=:polar, 
    lims=(0, 15), 
    label="Траектория движения катера 2",
    title="Случай 2")

# Добавление траектории лодки ко второму графику
plot!(p2, ugol, x_lims, 
    proj=:polar, 
    lims=(0,15), 
    label="Траектория движения лодки")

# Расчет точек пересечения
y(x) = (640 * exp(10*x)/sqrt(476))/14
y2(x) = (64 * exp((10*x)/sqrt(476)) + (10*pi/sqrt(476)))/34

intersect_point_1 = y(fi)
intersect_point_2 = y2(fi)

println("Точка пересечения для 1 случая: ", intersect_point_1)
println("Точка пересечения для 2 случая: ", intersect_point_2)

# Отображение обоих графиков рядом
plot(p1, p2, layout=(1,2), size=(1000,500))