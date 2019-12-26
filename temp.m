v2ker=zeros(50,8);
xa=linspace(0,.25*10^6,50);
for k=1:8
    %xa=linspace(0,.5*10^7-k*.09*10^7,1000);
    for i=1:50
        x=a(:,k);
        x=x<xa(i);
        v2ker(i,k)=1-sum(x)/10000;
    end
    
        P=k+7;
    if P~=150
        semilogy(xa,v2ker(:,k),'.','MarkerSize',10);
    end
        hold on;
        semilogy(xa,exp(-11.5*(1*(P-1)*(P)/(2*numedges(g))^2+120*(P-2)*(P-1)*(P)/(2*numedges(g))^3+0*(P-3)*(P-2)*(P-1)*(P)/(2025)^4)*xa),'k');
        %semilogy(xa,(1-Dg1(k)).^(.35*xa),'k');
        hold on;
end
xlim([0 .25*10^6]); ylim([10^-2 1]);
xlabel('t','FontSize',20,'FontWeight','bold'); ylabel('P_{sur}','FontSize',20,'FontWeight','bold')
%title('E-R Network with n=2045 and d_{avg}=4')
%plot(xa,v1000n3pr3,xa,v1000n8pr3,xa,v1000n4pr3,xa,v1000n5pr3,xa,v1000n6pr3,xa,v1000n7pr3,xa,v1000n9pr3,xa,v1000n10pr3)
%{
Z=grid2dper(35,35);
g=graph(Z);
n=numnodes(g);
d=degree(g);
M=zeros(n);

for i=1:n
    M(:,i)=Z(i,:)/d(i);
end

T=zeros(1000,1);
M2=eye(n);
for i=1:1000
    M2=M2*M;
    T(i)=M2(35*18+17,35*18+1);
    i
end
%
g=graph(grid2dper(25,25));
v=[];

for i=1:625
    v=[v ; randwalk(g,200,i)];
end
a=zeros(100,1);
%
parfor i=1:100
    T=tabulate(v(1:i*10^4));
    T=T(:,2);
    a(i)=std(T)/(i*10^4);
end
%
ab=1; d=10^-4;
for i=1:24*10^6
    ab=ab*(1-720*(1/5000+genprob(d))*(1/5000+genprob(d))*(1/5000+genprob(d)));
end
ab
function [r] = genprob(d)
r=(2*randi([0,1])-1)*d;
end

n=10000; 
k=((n-1)/n);
a=zeros(8,50);
for i=1:8
    for j=1:50
        p=(1+i)*10;
        t=j*10^5;
        P=p/n;
        a(i,j)=(k^p+k^(p-1)*(P)+(k^(p-2))*p*(p-1)/n^2)^(2*24*t);
    end
end
%}
