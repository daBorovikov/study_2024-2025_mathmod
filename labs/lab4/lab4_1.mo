model lab4_1
  //case1: x''+ 7x = 0
  //x'' + g* x' + w^2* x = f(t)
  //w - частота
  //g - затухание
  parameter Real w = sqrt(7);
  parameter Real g = 0;
  parameter Real x0 = -1.0;
  parameter Real y0 = -1.0;
  Real x(start = x0);
  Real y(start = y0);
  // f(t)

  function f
    input Real t;
    output Real res;
  algorithm
    res := 0;
  end f;
equation
  der(x) = y;
  der(y) = -w*w*x - g*y + f(time);
  annotation(
    experiment(StartTime = 0, StopTime = 80, Tolerance = 1e-06, Interval = 0.05));
end lab4_1;
