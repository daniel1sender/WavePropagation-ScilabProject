//Método EDO  diferenças finitas

//condições iniciais:
//y(x,0)=exp(-x^2)
//y'(x,0)=0

//condições contorno:
//y(-3)=y(3)=0

//setar as variáveis 
dx=0.01;dt=0.01;
x=0:dx:6;
t=0:dt:6;
v=ones(1,length(x));
v(1:int(length(x)/2))=2*ones(1:int(length(x)/2));
y2=zeros(1:length(x));
y3=y2;
y1=exp(-(x-1.5).^2/0.5)
//y1=cos(1*x*%pi/3-%pi/2);
y1(1)=0;y1($)=0;

for i=2:length(x)-1
    y2(i)=y1(i)+(1/2)*((dt/dx/v(i))^2)*(y1(i+1)-2*y1(i)+y1(i-1))
end

for j=3:length(t)
for i=2:length(x)-1
   y3(i)=2*y2(i)-y1(i)+((dt/dx/v(i))^2)*(y2(i+1)-2*y2(i)+y2(i-1))
end

if pmodulo(j,5)==1 then
xset("window",1)
//clf(1)
//plot(x,y1,"w")
plot(x(int(length(x)/2)+1:$),y2(int(length(x)/2)+1:$))
plot(x(1:int(length(x)/2)),y2(1:int(length(x)/2)),"r")
end

y1=y2;y2=y3
end
//equação de recorrência
for n=1:length(x)-1
    for i=1:length(t)-1
        
    end
end
    
