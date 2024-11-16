//ajuste de curvas polinomial

xi=1:8; xi=xi(:);
yi=[1.7,2.5,2.8,3.7,3.5,4.4,4.7,5.3]; yi=yi(:);

a=(sum(xi.*yi)-(sum(yi)*sum(xi))/length(xi))/(sum(xi.*xi)-((sum(xi))^2)/length(xi));

b=(sum(yi)-a*(sum(xi)))/length(xi);

plot(xi,yi,".k",xi,a*xi+b)
