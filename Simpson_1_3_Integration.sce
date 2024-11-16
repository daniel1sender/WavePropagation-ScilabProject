//achar pi através da regra 1/3 de simpson

//achar a área de 1/4 do círculo Depois fazer pi=4*A
function y=f(x)
    y= sqrt(1-x.^2);//circunferência(y positivo)
endfunction

function integral13= homer(t0,t1,n)
    //n número de intervalos que eu quero
    //t0 e t1 são os limites de integração
    
    h=(t1-t0)/(2*n);//intervalo todo dividido pelo número de espaços que eu quero me dá a precisão
    x= t0:h:t1;
    y= f(x);
    
    marge=0;
    
    for i=1:n
        marge=marge+ y(2*i-1)+4*y(2*i)+y(2*i+1);
    end
    integral13=(h/3)*marge;
    pi=4*integral13;//multiplica por 4 pois pegamos 1/4 da circunferência
    disp(pi,"pi é igual a:")
endfunction
