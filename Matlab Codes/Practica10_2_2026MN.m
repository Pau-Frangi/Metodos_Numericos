%%
A= rand(3);
norm(A,1);
[Norma1Mat(A);]
[NormaINFMat(A);]
[Norma2Mat(A);]
function nrm =Norma1Mat(A)
nrm=0;
[~,nc]=size(A);
for k=1: nc
nrm=max(nrm,sum(abs(A(:,k))));
end
end

function nrm =NormaINFMat(A)
nrm=0;
[~,nc]=size(A);
for k=1: nc
nrm=max(nrm,sum(abs(A(k,:))));
end
end


function nrm =Norma2Mat(A)
C=A'*A;
nrm= sqrt(max(eig(C)));
end

Potencia=100;
C=A;
for k=1:Potencia-1
C=C*A;
end
disp(A);

for k=1: 100
A= rand(3);
minima= min([Norma1Mat(A), NormaINFMat(A),Norma2Mat(A)]);
if(minima<1)
    disp("EXITO");
    break;
end
end
