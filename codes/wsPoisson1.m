function [] = wsPoisson1(n)
[D,x]=chebD(n); D2=D*D;   % Differentiation matrix and nodes
f=1000*cos(5*pi*x).*exp(-x.^2); % Source term
u=zeros(n,1); u([1,n])=[-1,2];  % Impose boundary conditions
% Solve and plot
u(2:n-1)=D2(2:n-1,2:n-1)\(f(2:n-1)-D2(2:n-1,[1,n])*u([1,n]));
plot(x,u);
end