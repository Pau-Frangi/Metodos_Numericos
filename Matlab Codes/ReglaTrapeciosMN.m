%% APROXIMACIÓN DE INTEGRAL: Regla de los Trapecios
% Integral de 0 a 1 de e^(-x^2) con error < 1e-4

% 1. Definición simbólica de la función
syms x
f = exp(-x^2);

% 2. Cálculo de derivadas para acotar el error
df2 = simplify(diff(f,2)); % Segunda derivada (factorizada)
df3 = simplify(diff(f,3)); % Tercera derivada para buscar los extremos de la 2ª

% Buscar puntos críticos de la segunda derivada
x0 = solve(df3 == 0); 
% eval(x0) mostraría el valor numérico (ej. 1.2247), pero está fuera de [0,1]

% 3. Determinación de la cota máxima del error en el intervalo [0,1]
% Evaluamos la segunda derivada en los extremos del intervalo para encontrar el máximo absoluto
norm_df2 = max(abs(subs(df2, [0, 1])));

% 4. Cálculo del número de subintervalos (n)
TOL = 1e-4;
% Despejamos 'n' de la fórmula del error del trapecio y redondeamos hacia arriba
n = ceil(eval(sqrt(norm_df2 / (12 * TOL))));

% 5. Aplicación de la Regla del Trapecio Compuesta
h = 1/n;                     % Tamaño del paso
vect = linspace(h, 1-h, n-1); % Vector con los puntos interiores x_i
suma_interior = 0;

% Sumatorio de los puntos interiores
for i = 1:n-1
    suma_interior = suma_interior + subs(f, vect(i));
end

% Fórmula final del trapecio
Integral = eval((h/2) * (subs(f, 0) + subs(f, 1) + 2 * suma_interior));

% Mostrar resultado por pantalla
fprintf('El número de subintervalos necesarios es: %d\n', n);
fprintf('El valor aproximado de la integral es: %.6f\n', Integral);