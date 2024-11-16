//Solução de EDO método Euler
//dy/dx=exp(x)
//condição inicial y(0)=1
//h=0.1

//setar as variáveis 
x=0:0.1:7;
y(1)=0;
h=0.1;

//criar uma função f com entrada xi,yi
function z=f(x,y)
    z=sin(x);        
endfunction


//equação de recorrência
for i=1:length(x)-1
    y(i+1)=y(i)+h*f(x(i),y(i))
end

plot (x,y)
