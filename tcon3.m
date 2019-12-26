function [A] = tcon3(Z,g,node,d,AA)
L=nearest(g,node,2);
A=[];
z=Z(L,L);
z=z(1:d(node),:);
for i=1:d(node)
    z(i,i)=1;
end
if isempty(AA)
    AA=[0 0];
end
%A=matrix of size nx2 indicating stalemate configurations with 2 pred
%C=probability associated with each configuration
for i=1:d(node)
    for j=i+1:length(L)
        for k=j+1:length(L)
            if min(sum((abs(AA-[L(i) L(j)])),2))~=0
                if min(z(:,i)+z(:,j)+z(:,k))~=0
                    A=1;
                    return;
                end
            end
        end
    end
end
%A=sort(A,2);
end