clc
clear 
close

//Dados experimentais:

x = [1:8];
y = [3.9 2.7 1.8 2.5 3.8 6.5 10.0 14.1];

grau = 2; //grau do polinômio
alfa = 0.0001;//parâmetro
v = zeros(1,grau+1); //aproximação inicial dos coeficientes do polinômio

function y=f(x,a)//criação do polinomio f
    y = 0
    for i=1:length(a)
        y = y + a(i)*x.^(i-1)
    end
endfunction
//no final terei y=a(1)+a(2)+a(3)*x^2

//Fazendo a recorrência:

cont=0;//número de iterações
cont_max = 45000;//número de iterações máxima
printf("Processando...")
while sqrt(sum((y-f(x,v)).^2))/length(x) > 0.06 & cont < cont_max//critério de convergência

cont = cont + 1 //contador de iterações
aux = zeros(1,length(x)) //vetor pra auxiliar a calcular as derivadas

for k=1:length(v)
    for j=1:length(v)
        aux = aux + v(j)*x.^(j-1)//recorrência do auxiliar
    end
    D(1,k) = 2*sum((x.^(k-1)).*(aux-y)) //derivadas parciais
    aux = zeros(1,length(x)) //zerando o vetor auxiliar para próxima iteração
end

v = v - alfa*D //equação de iteração

end 

printf("\n Chegamos na precisão desejada com %i iterações",cont)

plot(x,y,'r.')
plot(x,f(x,v),'b-.')
