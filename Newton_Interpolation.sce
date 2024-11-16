clear
clc
//método interpolação de newton

//dados experimentais:

x=[0,15,30,45,60,75,90];
y = [1.0000,0.9659,0.8660,0.7071,0.5000,0.2588,0.0000];
//pontos quaisquer dados para interpolar:

xi=[3,9,13,20,25,27,50,55,57,80,85,87];

//fórmula de recorrência para o polinomio interpolador de newton de grau 1:
dff=y; //diferença dividida tem mesma ordem do número de pontos
poli=y(1);//valor constante do polinomio interpolador
termo=1;//diferença que vai multiplicando
for k=1:length(x)-1
    
    dff=(dff(2:$)-dff(1:$-1))./(x(1+k:$)-x(1:$-k))
    termo=termo.*(xi-x(k))
    poli= poli+ dff(1)*termo
end
plot(x,y,'b.')
plot(xi,poli,'k^')

