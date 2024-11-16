//achar pi através do método dos trapézios

//achar a área A. Depois fazer pi=4*A
t1=0;
t2=1;
h=0.0001;
x=t1:h:t2;
function y=caio(x)
y=sqrt(1-x.^2);
endfunction

integral=0.0;
y1=caio(x);

for i=1:length(x)-1;
    
    integral= integral+((y1(i)+y1(i+1))/2)*h;
    
end

pi=4*integral;
disp(pi)
