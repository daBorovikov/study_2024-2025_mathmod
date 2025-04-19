model lab5_2
Real a = 0.18;
Real b = 0.047;
Real c = 0.38;
Real d = 0.035;
Real x;
Real y;
initial equation
x = c / d;
y = a / b;
equation
der(x) = -a*x + b*x*y;
der(y) = c*y - d*x*y;
end lab5_2;
