//interpolação polinomial de vandermonde
clear
close
//Pontos
Xi = [0,15,30,45,60,75,90];
Yi = [1.0000,0.9659,0.8660,0.7071,0.5000,0.2588,0.0000]';

//Matriz de Vandermonde:

//length(x)= n pontos conhecidos (xi,yi)

Xv=[];//matriz vandermonde pra receber as linhas
Xl=[];//matriz de linhas

for i=1:length(Xi)
    for j=1:length(Xi)
        Xl=[Xl,Xi(i)^(j-1)];
    end
    Xv=[Xv;Xl];
    Xl=[];
end

//Para achar os coeficientes da equação x*a=y temos que I*a=(x^-1)*y

a=inv(Xv)*Yi;

//O polinômio único que queremos interpolar é:
//Pn(x)=a0+a1*x^0+a2x^2+a3x^3+a4x^4+...+an*x^n

function z=f(t)
    z=0;
    for k=1:length(Xi);
        z=z+a(k)*t^(k-1);
    end
endfunction

plot(Xi,Yi,"kx");
plot([0:1:100],f([0:1:100]),'r--')
