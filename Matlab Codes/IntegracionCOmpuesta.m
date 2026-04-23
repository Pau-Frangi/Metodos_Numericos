%% TAREA: FÓRMULAS COMPUESTAS DE INTEGRACIÓN
% Comparación de Regla del Rectángulo y Regla del Trapecio

% --- 1. DEFINICIÓN DE FUNCIONES E INTERVALOS ---
% Integral 1
f1 = @(x) exp(-x);          % Función 1
ab1 = [0, 1];               % Intervalo
Sext1 = 1 - exp(-1);        % Valor exacto de la integral 1

% Integral 2 (Para probarla, puedes cambiar f1, ab1 y Sext1 por f2, ab2 y Sext2)
f2 = @(x) cos(x).^2;        % Función 2
ab2 = [0, pi];              % Intervalo
Sext2 = pi/2;               % Valor exacto de la integral 2

% Configuración del estudio
M_max = 20;                 % Número máximo de subintervalos
S_rect = zeros(M_max, 1);   % Vector para resultados del rectángulo
S_trap = zeros(M_max, 1);   % Vector para resultados del trapecio

% --- 2. EVALUACIÓN DE LAS INTEGRALES ---
% Usaremos la Integral 1 para este ejemplo. 
for m = 1:M_max
    S_rect(m) = RectIntegral(f1, ab1, m);
    S_trap(m) = TrapIntegral(f1, ab1, m);
end

% Cálculos de error absoluto
Error_rect = abs(S_rect - Sext1);
Error_trap = abs(S_trap - Sext1);

% --- 3. REPRESENTACIÓN GRÁFICA ---
figure(1);
% Gráfica 1: Evolución del valor de la integral vs. m
subplot(1,2,1);
plot(1:M_max, S_rect, 'bo-', 'LineWidth', 1.5); hold on;
plot(1:M_max, S_trap, 'rs-', 'LineWidth', 1.5);
plot([1 M_max], Sext1*[1 1], 'k--', 'LineWidth', 2); % Línea del valor exacto
hold off;
title('Valor de la Integral');
xlabel('Número de subintervalos (m)');
ylabel('Aproximación');
legend('Rectángulo', 'Trapecio', 'Exacto');
grid on;

% Gráfica 2: Evolución del error (Escala Logarítmica) vs. m
subplot(1,2,2);
semilogy(1:M_max, Error_rect, 'bo-', 'LineWidth', 1.5); hold on;
semilogy(1:M_max, Error_trap, 'rs-', 'LineWidth', 1.5);
hold off;
title('Error Absoluto');
xlabel('Número de subintervalos (m)');
ylabel('Error');
legend('Rectángulo', 'Trapecio');
grid on;

% ==========================================================
% FUNCIONES LOCALES
% ==========================================================

% a) Fórmula del Rectángulo Compuesta
function S = RectIntegral(f, ab, m)
    % Implementación basada en las fórmulas teóricas
    h = (ab(2) - ab(1)) / (2*m);
    x = ab(1) + h * (2*(1:m) - 1);
    S = 2 * h * sum(f(x));
end

% b) Fórmula del Trapecio Compuesta
function S = TrapIntegral(f, ab, m)
    % Implementación basada en la fórmula teórica: (h/2)*(f(a) + f(b) + 2*sum(f(xi)))
    h = (ab(2) - ab(1)) / m;
    
    % Calculamos los puntos interiores (x1 hasta xm-1)
    % Si m=1, no hay sumatorio intermedio
    if m > 1
        x_int = ab(1) + h * (1:(m-1)); 
        suma_interior = sum(f(x_int));
    else
        suma_interior = 0;
    end
    
    S = (h/2) * (f(ab(1)) + f(ab(2)) + 2*suma_interior);
end