%CORRECT THE FUNCTION USING INTERSECT
function [A] = configs4(Z,g,node,d,AA,BB)
%Function to find the trapping configurations involving 4 predators
%As sighting radius is set to one, nodes more than two edges away from i are irrelevant.
L=nearest(g,node,2);
A=[];
z=Z(L,L);
z=z(1:d(node),:);
for i=1:d(node)
    z(i,i)=1;
end
if isempty(AA)
    AA=[0 0; 0 0];
end

if isempty(BB)
    BB=[0 0 0; 0 0 0; 0 0 0];
end
[m1,~]=size(AA);
[m2,~]=size(BB);
%A=matrix of size nx2 indicating stalemate configurations with 2 pred
%C=probability associated with each configuration
for i=1:d(node)
    for j=i+1:length(L)-2
        for k=j+1:length(L)-1
            for l=k+1:length(L)
                if min(z(:,i)+z(:,j)+z(:,k)+z(:,l))~=0
                   Q=0;
                    for ii=1:m1
                       if length(intersect(AA(ii,:),[L(i) L(j) L(k) L(l)]))==2
                           Q=1; break;
                       end
                    end
                    for ii=1:m2
                       if length(intersect(BB(ii,:),[L(i) L(j) L(k) L(l)]))==3
                           Q=1; break;
                       end
                    end
                  if Q==0     
                       A=[A ; [L(i) L(j) L(k) L(l)]];
                  end
               end   
            end
        end
    end
end
end