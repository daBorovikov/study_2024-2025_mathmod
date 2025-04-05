//case3: x'' + 5x' + x = 0.9cos(10t)
model lab4_3

parameter Real w = sqrt(1.0);  
parameter Real g = sqrt(5.0);  

parameter Real x0 = -1.0; 
parameter Real y0 = -1.0; 

Real x(start=x0); 
Real y(start=y0); 

// f(t) 
function f 
input Real t ; 
output Real res; 
algorithm  
res := cos(3*t); // 3 случай 
end f; 

equation 
der(x) = y; 
der(y) = -w*w*x - g*y - f(time); 
end lab4_3;

