N=100
M=100
T=2
X=%pi
h=X/N
d=T/M
t=0:d:T
x=0:h:X
u(1:N,1)=0
u(1,1:M)=0
u(N,1:M)=0
A=d/(h^2)
B=d/(h^2)
C=2/(h^2)+1
a(2)=0
b(2)=0
for m=1:(M-1)
    for n=2:(N-1)
        F(n)=d*t(m)*sin(x(n))+u(n,m)
        a(n+1)=b(n)/(C-a(n)*A)
        b(n+1)=(F(n)+b(n)*A)/(C-a(n)*A)
    end
    
    for n=(N-1):(-1):1
        u(n,m+1)=a(n+1)*u(n+1,m+1)+b(n+1)
    end
end

surf(u)
