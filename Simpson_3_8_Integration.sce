//achar pi através da regra 2/3 de simpson

//achar a área de 1/4 do círculo Depois fazer pi=4*A

function y=f(x)
    y= sqrt(1-x.^2);//circunferência(y positivo)
endfunction

function integral38= rick(t0,t1,n);
    //t0 e t1 limites do intervalo de integração
 h=(t1-t0)/3/n; //precisão
 x=t0:h:t1;
 y=f(x);

summer=0;
   for i=1:n
       summer=summer+y(3*i-2)+3*y(3*i-1)+3*y(3*i)+y(3*i+1)
    end
   integral38 = (3*h/8)*summer;
   
    pi=4*integral38;//multiplica por 4 pois pegamos 1/4 da circunferência
    disp(pi,"pi é igual a:")
endfunction

