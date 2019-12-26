function [Z] = grid2ddg(n,m)
%Function to create a MATLAB graph object for a square lattice with connected diagonals. 
%The function grid2per is used to generate the lattice which creates a square lattice graph object.

g=graph(grid2dper(n,m));
Z=full(adjacency(g));
Z2=Z^2;
for i=1:n*m
	Z2(i,i)=0;
end
Z2=Z2>1.5;
Z=Z+Z2;

end
