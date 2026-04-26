% PRACTICA 2 - Diego Rodriguez Cubero - MN 3ºDG

% Definimos los valores iniciales
% TAMANO n
n = 4;
% Matriz inicial aleatoria A
C = randn(100, n);
A = C'*C;
% Vector aleatorio b
b = randn(n,1);
% K maximo
Kmax = 200;
% 1e-5
% TOLERANCIA
TOL = 0.00001;
% W
w = 0.1;

% X
xi = randn(n, 1);

% Despejando queda:
% 1/wDx_k = -Ax_k-1 + b = - r_k-1
% 1/wDx_k = -r_k-1 + 1/wDx_k-1 
% x_k =  x_k-1 - w*D^-1*r_k-1
function [xRes, kRes] = Jacobi(Kmax, TOL, A, b, xi, w)
    x = xi;
    % Calculamos el r y E iniciales
    r = A*x - b;
    E = norm(r,2) / norm(b,2);
    % Iteracion 0
    k = 0;
    % Obtenemos D
    Daux = diag(A);
    D = diag(Daux);
    % Criterios de parada (k >= Kmax y E < TOL)
    while (k < Kmax && E >= TOL)
        % Calculamos x_k a partir de r_k-1 y x_k-1
        x =  x - D\r*w;
        % Calculamos r_k
        r = A*x - b;
        % Calculamos el nuevo error
        E = norm(r,2) / norm(b,2);
        % Actualizamos k
        k = k + 1;
    end
    % Devolvemos los resultados
    xRes = x;
    kRes = k;
end

% Definimos los valores de W para la grafica
Wgrafica = 0.1:0.05:1.9;
Kresultados = zeros(37, 1);
Wwhile = 0.1;
kw = 1;
% Calculamos las iteraciones
while (kw <= 37)
    % Usamos la funcion
    [xRes, kRes] = Jacobi(Kmax, TOL, A, b, xi, Wwhile);
    % Guardamos las iteraciones
    Kresultados(kw, 1) = kRes;
    % Pasamos al siguiente caso
    Wwhile = Wwhile + 0.05;
    kw = kw + 1;
end

% Dibujamos la grafica
plot(Wgrafica, Kresultados);
xlabel('Valores de W');
ylabel('Nº de iteraciones');