% Numero de nodos interiores de la malla.
n=100;

% Paso de discretizacion (distancia entre nodos).
h=1/(n+1);

% Reserva de memoria para los coeficientes de la diagonal modificada.
m=zeros(n,1);

% Reserva de memoria para el termino independiente modificado.
g=zeros(n,1);

% Reserva de memoria para la solucion numerica en nodos interiores.
u= zeros(n,1);

% Vector de nodos interiores x_i = i*h, i=1,...,n.
x=h*(1:n)';

% Termino independiente del sistema discreto: d_i = h^2*cos(2*x_i).
d=h^2*cos(2*x);

% Primer valor de la recurrencia para el metodo de Thomas.
m(1)=-2;

% Barrido hacia delante para construir los m(k).
for k= 2:n 
    % Recurrencia de eliminacion para matriz tridiagonal con coeficientes constantes.
    m(k)= -2 -1/m(k-1);
end

% Primer valor del vector transformado g.
g(1)=d(1)/m(1)

% Barrido hacia delante para construir g(k).
for k=2:n
    % Actualizacion del termino independiente tras la eliminacion.
    g(k)=(d(k)-g(k-1))/m(k);
end

% Valor inicial para el barrido hacia atras.
u(n)=g(n);

% Sustitucion hacia atras para recuperar la solucion u.
for k=n-1:-1:1
    % Formula de remonte para sistema tridiagonal.
    u(k)=g(k)-(u(k+1)/m(k));
end

% Malla fina para representar la solucion exacta de forma suave.
xexc=linspace(0,1,1000);

% Solucion exacta evaluada en la malla fina.
uexc=0.25*(1-cos(2*xexc)-(1-cos(2))*xexc);

% Nodos de la simulacion incluyendo condiciones de contorno x=0 y x=1.
xsim=[0;x;1];

% Solucion numerica incluyendo condiciones de contorno homogeneas.
usim=[0;u;0];

% Solucion exacta evaluada en los nodos de simulacion.
uex=0.25*(1-cos(2*xsim)-(1-cos(2))*xsim);

% Error discreto tipo L2 ponderado por h.
E= sqrt(h*sum((uex-usim).^2));

% Muestra en pantalla el valor del error.
disp(['El error= ' num2str(E)])

% Limpia la figura actual.
clf

% Dibuja la solucion numerica en puntos azules.
plot(xsim,usim,'bo')

% Mantiene la figura para superponer otra grafica.
hold on

% Dibuja la solucion exacta como linea roja.
plot(xexc, uexc,'r-')