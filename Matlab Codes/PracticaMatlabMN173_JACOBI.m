n=4;
B=randn(n,100);
A=B*B';
b=randn(n,1);

%%Kmax = input('Introduce el valor de Kmax: ')
Kmax = 100;

TOL=1e-5;
x=Jacobi_Metodo(A,b,TOL,Kmax);
E=norm(A*x-b)/norm(b);
disp(['El error= ' num2str(E)])

%%
function x= Jacobi_Metodo(A,b,TOL,Kmax)
n= size(A,1);
x=zeros(n,1);
E=TOL*norm(b);
d=diag(A);
for k= 1:Kmax
    r= A*x-b;
 if norm(r)<E
 break;
 end
x=x-r./d;
end 
end


