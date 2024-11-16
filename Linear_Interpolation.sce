//interpolação linear
x= [0,15,30,45,60,75,90]
y= [1.000,0.9659,0.8660,0.7071,0.5000,0.2588,0.0000]
i=[1,2,3,4,5,6]

Xi=82.5;//Ponto que eu quero calcular a interpolação

for i=1:(length(x)-1)
    if (Xi>= x(i) & Xi<x(i+1))
        Yi= y(i) + ((y(i+1)-y(i))/(x(i+1)-x(i)))*(Xi-x(i))
    end    
end

plot(x,y,'k-o')
disp(Yi)
