//Solução de EDO método derivadas
//dy/dx=exp(x) ou qualquer função
//condição inicial y(0)=1
//h=0.1

//setar as variáveis 
x=0:0.1:7;
y(1)=1;
h=0.1;

//a função f já é a derivada de y. f(x,y)=y'
function z=f(x,y)
    z=cos(x);        
endfunction
//a função g é a deriv. segunda g(x,y)=y''
function w=g(x,y)
    w=-sin(x);
    
endfunction

//equação de recorrência
for i=1:length(x)-1
    y(i+1)=y(i)+h*f(x(i),y(i))+((h^2)/2)*g(x(i),y(i));
end

plot (x,y)
