AA=zeros(1000,8);
Z=grid2dtr(45,45);
g=graph(Z);
N=numnodes(g);
Predators=[6 8 10 12 14 16 18 20];
for j=1:1
	parfor i=1:1000
    		[~,AA(i,j)]=surv(Z,g,10^7,15,randi(2025)); 
    		disp(i); 
	end
end

%save a40d