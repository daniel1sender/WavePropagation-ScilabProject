//método runge kuta

//setar as variáveis 
h=0.01;
x=0:h:5;
y(1)=1;


//criar uma função f com entrada x,y
function z=f(x,y)
    z=exp(x)
endfunction

//equação de recorrência
for i=1:length(x)-1
y(i+1)=y(i)+(h/2)*(f(x(i),y(i))+f(x(i)+h,y(i)+h*f(x(i),y(i))))
end

xset("window",1);//atribui a janela do gráfico o nome 1
clf(1);//vai limpar o gráfco quando mudar o código
plot (x,y)
