%% 

% matriz de complejos entre 1 -1 y i -i
A = 2*rand(4, "like",1i) - (1 + 1i)

A' 

%% a

A = 2*rand(4, "like",1i) - (1 + 1i);
B = 2*rand(4, "like",1i) - (1 + 1i);



%calculamos el error
abs(det(A*B) - det(B*A))

%% b
A = 2*rand(4, "like",1i) - (1 + 1i);
B = 2*rand(4, "like",1i) - (1 + 1i);

L = rand(1, "like", 1i);




n = size(A, 1);

%calculamos el error
abs(det(L*A) - L^n*det(A))

%% c
A = 2*rand(6, "like",1i) - (1 + 1i);
B = 2*rand(3, "like",1i) - (1 + 1i);

det(A') - conj(det(A))

%% d
A = 2*rand(6, "like",1i) - (1 + 1i);
B = 2*rand(3, "like",1i) - (1 + 1i);

spA = eig(A);

prod(spA) - det(A)

%% Gram - Schmidt  

n = 4;

A = rand(n, "like", 1i);

function [Q, R] = QRmia(A)

n = size(A, 1);
%Q unitaria (ortogonal) y A no degenerada
Q = zeros(n);

Q(:, 1) = A(:,1)/sqrt(A(:, 1)' * A(:,1)); % qi = ui / norma de ui

for k = 2:n
    u = A(:, k);
    for i = 1:k-1
        u = u - Q(:, i)' * A(:, k) * Q(:,i); % sum i = 1 hasta k-1 de p(ui, ak) ya que (ui / norma de ui) = qi
    end
    Q(:, k) = u/sqrt(u' * u);
end

% R triangular superior
R = Q' * A
end