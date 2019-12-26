function [Z] = grid2dper(n,m)
%Function to create an adjacency matrix for a square lattice. 
Z=zeros(n*m);
for i=1:n*m
    if mod(i,m)~=0
        Z(i,i+1)=1; Z(i+1,i)=1;
    end
end

for i=1:n*(m-1)
    Z(i,i+m)=1; Z(i+m,i)=1;
end

for i=1:n*(m)
    Z(i,i)=0;
end

for i=1:n
    Z((i-1)*m+1,i*m)=1; 
    Z(i*m,(i-1)*m+1)=1;
end

for i=1:m
    Z((n-1)*m+i,i)=1; 
    Z(i,(n-1)*m+i)=1;
end

for i=1:n*(m)
    Z(i,i)=0;
end
end
