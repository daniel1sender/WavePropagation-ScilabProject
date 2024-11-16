//ajuste polinomial

xi=1:8; xi=xi(:);
yi=[3.9,2.7,1.8,2.5,3.8,6.5,10.0,14.1]; yi=yi(:);
xint=0:0.1:9
n=3

vand= ones(length(xi),1);

for i=1:n
    vand=[vand,xi.^i]; 
end

a=(vand'*vand)\(vand'*yi);

p=a(1);
for i=1:n
p=p+a(i+1)*xint.^i    
end

plot(xint,p,"r",xi,yi,".k")
