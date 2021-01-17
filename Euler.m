function [X,Y]=Euler(F_xy,y0,h,a,b)
n=floor((b-a)/h);
X(1)=a;
Y(:,1)=y0;
for k=1:n
    X(k+1)=X(k)+h;
    Y(:,k+1)=Y(:,k)+h*F_xy(X(k),Y(:,k));
end


