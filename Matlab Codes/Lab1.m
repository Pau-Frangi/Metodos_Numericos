% PRACTICA 1 - Diego Rodriguez Cubero - MN 3ºDG

% Definimos los valores iniciales
% TAMANO n
n = 5;
% Matriz inicial aleatoria M
M = randn(n);
% K maximo
Kmax = 30;
% 1e-5
% TOLERANCIA
TOL = 0.00001;

function Res = practica(M, Kmax, TOL, n)
    % M es la matriz de entrada A, definamos A0
    % La matriz A llevara la cuenta de Ak (la primera Ak es A0, que se
    % define segun el enunciado)
    A = M' / trace(M * M');
    k = 1;
    % Seguimos hasta que k haya superado el valor establecido, o hasta que
    % la norma de la diferencia de AAk (MA en nuestro caso por notacion)
    % con la identidad sea menor que TOL
    while (k < Kmax && ( norm((M*A), 1) >= TOL) )
        % Definimos Ek
        E = eye(n) - M * A;
        % Definimos Ak
        A = A*(eye(n) + E + E*E);
        % Aumentamos k en 1
        k = k + 1;
    end
    % El resultado As es la actual Ak 
    Res = A;
end

% Calculamos la matriz inversa Res
Res = practica(M, Kmax, TOL, n);

% RESULTADO

% Calculo del error relativo dividiendo la norma de la diferencia de
% nuestra inversa Res con la inversa de MATLAB inv, por la norma de la
% propia inversa
Er = norm(Res - inv(M),1) / norm(inv(M), 1);

disp('La matriz generada aleatoriamente es M:');
disp(M);
disp('Y su inversa es la matriz Res:');
disp(Res);
disp(['Ambas de dimension: ', int2str(size(M, 1))]);
disp(['Y el error relativo en su calculo es el siguiente: ', int2str(Er)]);
disp('Sin redondeo es:')
disp(Er);
disp('Notese que como el error relativo Er es 0 (o muy cercano a 0) significa que la diferencia entre Res y la inversa de M es practicamente nula, es decir, son muy similares, es decir, nuestra funcion efectivamente hace un buen calculo de la inversa');
disp('Se puede observar como el producto es la identidad (o muy similar):');
disp(M * Res);