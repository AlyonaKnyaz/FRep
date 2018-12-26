M=100
N=100
c=1
L=1
T=10
h=2*L/M
d=T/N
x=-L:h:L
t=0:d:T
u(1,1:M)=exp(-1)
u(N,1:M)=exp(-1)
for i=1:N
    u(i,1)=exp(-(x(i)^2))
end
u(:,2)=u(:,1)
for m=2:(M-1)
    for n=2:(N-1)
        u(n,m+1)=2*u(n,m)+u(n,m-1)+((c*c*d*d)/(h*h))*(u(n+1,m)-2*u(n,m)+u(n-1,m))
    end
end

plot(u(:,100))








