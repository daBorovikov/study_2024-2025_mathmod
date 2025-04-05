model lab4_2
  //case2: x'' + 2x' + 6x = 0
  parameter Real w = sqrt(6.00);
  parameter Real g = sqrt(2.00);
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
    experiment(StartTime = 0, StopTime = 80, Tolerance = 1e-06, Interval = 0.05),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STDOUT,LOG_ASSERT,LOG_STATS", s = "dassl", variableFilter = ".*"));
end lab4_2;
