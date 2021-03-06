function [] = wsPoisson2(n)
[D,x]=chebD(n); D2=D*D; y=x';
[xx, yy]=ndgrid(x);

% Boundary conditions
g=[0.2*sin(3*pi*y); 0*y];
h=[(x<0).*sin(pi*x).^4, 0*x];
uu=zeros(n);
uu([1 n],:)=g;
uu(:,[1 n])=h;

% Solve Laplace's equation
F=zeros(n);
RHS=F-D2(:,[1 n])*g-h*D2(:,[1 n])';
uu(2:n-1, 2:n-1)=sylvester(D2(2:n-1, 2:n-1), ...
D2(2:n-1, 2:n-1)', RHS(2:n-1, 2:n-1));

surfl(xx,yy,uu,'light'); colormap(jet(256));
shading interp; axis square;
end