AA=zeros(10000,8);
Z=grid2dtr(45,45);
g=graph(Z);
N=numnodes(g);
Predators=[8 9 10 11 12 13 14 15];
for j=1:8
	parfor i=1:10000
    		[~,AA(i,j)]=surv(Z,g,10^7,15,randi(2025)); 
    		disp(i); 
	end
end

