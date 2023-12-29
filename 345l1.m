% Michael Dang - 16257750, MATH345L lab 1

% Question 1

syms y(t) %Define the symbolic function y(t)

eqn = diff(y,t) == y^2 + t^2; %Set the DE for y under the variable eqn
 
dsolve(eqn) %Solving the DE using dsolve function

%Question 2

syms y(t) %Define the symbolic function y(t)

ode = diff(y,t,2) == cos(2*x)^2- y; %Define the ODE and 2nd order

Dy = diff(y,t); 
conditions = [y(0) == 1, Dy(0) == 0]; %Define the IV

dsolve(ode,conditions) %Using dsolve function to solve the IVP

%Question 3

syms y(x) %Define the symbolic function y(x)

%Follow from the lab to plot the graph

[x,y] = meshgrid(0:.3:10,-5:.3:5);
dy = 3*y - 10*sin(x);
dx = ones(size(dy));
quiver(x,y,dx,dy)

dyu = dy./sqrt(dy.^2+dx.^2);
dxu = dx./sqrt(dy.^2+dx.^2);
quiver(x,y,dxu,dyu)


