%% Norma 1

A = randn(3);

norm(A, 1)

function nrm = Norma1Mat(A)

nrm = 0;
[nfil, ncol] = size(A);

for c = 1:nfil
    %nrmProv = 0;
    %for f = 1:ncol
    %    nrmProv = nrmProv + abs(A(f,c));
    %end
    %nrm = max(nrm, nrmProv);
    nrm = max(nrm, sum(abs(A(:,c))));
end

end

res = Norma1Mat(A);

[Norma1Mat(A) norm(A,1)]

function nrm = Norma2Mat(A)

C = A'*A;
spC = eig(C);
rho = max(spC);
nrm = sqrt(rho);

end

Norma2Mat(A)

for k = 1:100000
    A = randn(3);
    nmi = min(Norma1Mat(A), Norma2Mat(A));
    if nmi < 1
        disp(['Iteration ', num2str(k), ': Minimum norm is ', num2str(nmi)]);
        break
    end
end