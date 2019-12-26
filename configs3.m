function [A] = configs3(Z,g,node,d,AA)
%Function to find the trapping configurations involving 3 predators
%As sighting radius is set to one, nodes more than two edges away from i are irrelevant.
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
[m1,~]=size(AA);
%A=matrix of size nx2 indicating stalemate configurations with 2 pred
%C=probability associated with each configuration
for i=1:d(node)
    for j=i+1:length(L)
        for k=j+1:length(L)
            if min(z(:,i)+z(:,j)+z(:,k))~=0
            Q=0;
            for ii=1:m1
                if length(intersect(AA(ii,:),[L(i) L(j) L(k)]))==2
                    Q=1; break;
                end
            end
            if Q==0
                A=[A ; [L(i) L(j) L(k)]];
            end
            end
        end
    end
end
A=sort(A,2);
end