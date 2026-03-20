%L triangular inferior: nuestro objetivo es resolver numéricamente un sistema Lx=b.
% l_11=x1;
% l_21x1+l_22x2=b2
%-> x1= b1/l_11
%-> x_k= bk-Sum(i=1->k-1) [l_ki *xi]/l_kk

n=4;
b= randn(n,1);
A= randn(n,n)
%la matriz L tiene que ser triangular inferior, existe el comando tril
L=tril(A); %Esta será nuestra matriz triangular

function x =RemonteInferior(L,b)
x=[] %elemento vacío que "luego puede crecer" (palabras textuales del profesor)
%comprobamos que la matriz tiene determinante no-nulo.
if any(diag(L)==0) %comando para saber si algun elemento del vector cumple la propiedad indicada
    error('La matriz no es invertible')
end
%%podriamos también sacar un warning, el cual sólo saca por pantalla un
%%mensaje y continúa ejecutando el programa
n= size(L,1);
x= zeros(n,1);
x(1)= b(1)/L(1,1);
for k=2:n
    %S=0;
    %for i=1:k-1
    %S= S+L(k,i)*x(i);
    %end
S= (b(k)-L(k,1:k-1)*x(1:k-1))/L(k,k);
x(k)=(b(k)-S)/L(k,k);
end

end

%Aqui el profesor explica LU. Suponemos que LU existe
%->L_n-1U_n-1=A_n-1 -(alfa/a_11)beta^T =B (variable auxiliar)
n=4;
A= randn(n);
[LUCasero(A)]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function [L,U]=LUCasero(A)
n=size(A,1);
L= zeros(n); U=zeros(n);
L(:,1)=A(:,1)/A(1,1);
U(1,:)= A(1,:);
B= A(2: end, 2:end)-L(2:end,1)*U(1,2:end);
L(2:end,2)=B(:,1)/B(1,1);
U(2, 2:end)= B(1,:);
end