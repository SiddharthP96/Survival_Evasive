function [Z] = grid2dtr(n,m)
%Function to create the adjacency matrix for a triangular lattice. 
g=graph(grid2dper(n,m));
Z=full(adjacency(g));

for i=1:n*m
	Z(i,i)=0;
end

for i=1:n*m
    xx=mod(i+m+1,n*m);
    if xx==0
        xx=m*n;
    end
    if mod(i,n)~=0
        Z(i,xx)=1; Z(xx,i)=1;
    else
        Z(i,mod(i+1,n*m))=1; Z(mod(i+1,n*m),i)=1;
    end
end


end
