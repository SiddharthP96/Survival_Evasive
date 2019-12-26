function [v] = randwalk(g,N)
A=full(adjacency(g));
n=numnodes(g);
init=80;
v=zeros(N,1);
v(1)=init;
deg=degree(g);
for i=2:N
    c=randi(deg(v(i-1)));
    count=0;
    for j=1:n
        if A(v(i-1),j)==1
            count=count+1;
            if count==c
                next=j; 
            end
        end
    end            
    v(i)=next;
end
end
