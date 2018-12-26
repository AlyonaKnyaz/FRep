N=100
M=100
T=2
L=10
c=1
tau=T/M
h=L/N
x=0:h:L
t=0:tau:T
for i=1:(N+1)
    u(1,i)=exp(-x(i))
end

for j=1:(M+1)
    u(j,1)=exp(t(j))
end 

for m=1:M
    for n=1:N
        u(n+1,m+1)=(h/(h+c*tau))*u(n+1,m)+(c*tau/(h+c*tau))*u(n,m+1)
    end
end

surf(x,t,u)

