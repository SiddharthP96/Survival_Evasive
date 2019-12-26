function [A] = configs2(Z,g,node,d)
%Function to find the trapping configurations involving 2 predators.
%As sighting radius is set to one, nodes more than two edges away from i are irrelevant.
L=nearest(g,node,2);
A=[]; 
z=Z(L,L);
z=z(1:d(node),:);
for i=1:d(node)
    z(i,i)=1;
end
%A=matrix of size nx2 indicating stalemate configurations with 2 pred
%C=probability associated with each configuration
for i=1:d(node)
    for j=i+1:length(L)
        if min(z(:,i)+z(:,j))~=0
            A=[A ; [L(i) L(j)]]; 
        end
    end
end
A=sort(A,2);
end