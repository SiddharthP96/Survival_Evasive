%To generate Figure 3, 5, and 6 in the paper. 
v2ker=zeros(50,8);
xa=linspace(0,.25*10^6,50);
for k=1:8
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
        hold on;
end
xlim([0 .25*10^6]); ylim([10^-2 1]);
xlabel('t','FontSize',20,'FontWeight','bold'); ylabel('P_{sur}','FontSize',20,'FontWeight','bold')

