//Método EDO diferenças finitas
//condições iniciais:
//y(x,0)=exp(-x^2)
//y'(x,0)=0
//condições contorno:
//y(-3)=y(3)=0
dx=0.01;dt=0.01; //define o número de courant
x=0:dx:6; //tamanho do intervalo espacial
t=0:dt:6; //tamanho do intervalo temporal
v=2*ones(1,length(x)); //matriz do tamanho de x com todos os elementos igual a 1
v(1:int(length(x)/2))=ones(1:int(length(x)/2)); //v(1)=2*1=2; v(2)=2*1=2; v(3)=2*1=2
y2=zeros(1:length(x)); //matriz do tamanho de x zerada
y3=y2; //y3=matriz do tamanho de x zerada
y1=exp(-(x-1.5).^2/0.5) //distribuição gaussiana
//y1=cos(1*x*%pi/3-%pi/2);
y1(1)=0;y1($)=0; //condições de contorno ($=ultimo indice)
for i=2:length(x)-1
y2(i)=y1(i)+(1/2)*((dt/dx/v(i))^2)*(y1(i+1)-2*y1(i)+y1(i-1))

end
for j=3:length(t)
for i=2:length(x)-1
y3(i)=2*y2(i)-y1(i)+((dt/dx/v(i))^2)*(y2(i+1)-2*y2(i)+y2(i-1))
end
if pmodulo(j,25)==1 then
xset("window",1)
clf(1)
//plot(x,y1,"w")
plot(x(int(length(x)/2)+1:$),y2(int(length(x)/2)+1:$))
plot(x(1:int(length(x)/2)),y2(1:int(length(x)/2)),"r")
a=gca()
//a.auto_scale("off")
//a.tight_limits(["on","on"])
a.data_bounds=[0,-1;6,1]
xs2png(1,"~/Documentos/Scilab/Figuras"+string(j))
end
y1=y2;y2=y3
end