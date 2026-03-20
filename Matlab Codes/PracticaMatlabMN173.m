
n=100;
h=1/(n+1);
m=zeros(n,1);
g=zeros(n,1);
u= zeros(n,1);

x=h*(1:n)';
d=h^2*cos(2*x);
m(1)=-2;
for k= 2:n 
m(k)= -2 -1/m(k-1);
end
g(1)=d(1)/m(1)
for k=2:n
    g(k)=(d(k)-g(k-1))/m(k);
end
u(n)=g(n);
for k=n-1:-1:1
    u(k)=g(k)-(u(k+1)/m(k));
end
xexc=linspace(0,1,1000);
uexc=0.25*(1-cos(2*xexc)-(1-cos(2))*xexc);
xsim=[0;x;1];
usim=[0;u;0];
uex=0.25*(1-cos(2*xsim)-(1-cos(2))*xsim);
E= sqrt(h*sum((uex-usim).^2));
disp(['El error= ' num2str(E)])
clf
plot(xsim,usim,'bo')
hold on
plot(xexc, uexc,'r-')