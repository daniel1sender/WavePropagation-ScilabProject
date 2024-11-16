//Interpolação método Lagrange

// Dados:
//Interpole usando polinomio interpolador de 1 grau
x = [0,15,30,45,60,75,90];
y = [1,0.9659,0.8660,0.7071,0.5000,0.2588,0.0000];

Xi=22.5;//ponto que eu quero saber a interpolação

for i=1:length(x)-1
    if (Xi>=x(i) & Xi<x(i+1)) then
        Yi=y(i)*((Xi-x(i+1))/(x(i)-x(i+1)))+y(i+1)*((Xi-x(i))/(x(i+1)-x(i)))
    end
end
disp(Yi)
plot(x,y,'k-.s');//plotar pontos dados
plot(Xi,Yi,'ro');//plotar ponto interpolado Yi dado um ponto Xi
