function [indicate,con,la] = surv(Z,g,iterations,predators,init)
tic
%Given a graph, location of prey, number of predators and iterations, indicator=0 if prey not caught 
%1 if caught.
%Initialise prey at node init
n=numnodes(g);
d=degree(g);
indicate=0;
la=0;
D=distances(g); Z2=Z^2;
RW=randi(n,predators,1);

for i=1:predators
    while RW(i)==init
        RW(i)=randi(n);
    end
end

while min(abs(RW-init))==0
    init=randi(n);
end

con=0;
for j=1:iterations
    %
    if min(abs(D(init,RW)-2))==0
        %if Z2(init,RW)==1
            la=la+1;
        %end
    end
    %}
    
    z=sum(Z(:,RW),2)>0; 
    
    while z(init)==1
        
        if trapped(Z,d,init,RW)==1 
            con=j;
            indicate=1; 
            return
        else
            ini=rw(Z,RW(i),d,n);
            while z(ini)==1
                ini=rw(Z,init,d,n);
            end
        end
        init=ini;
        
        if min(abs(D(init,RW)-2))==0
        %if Z2(init,RW)==1
            la=la+1;
        %end
    end
        
        
    end  
    
    for i=1:predators
        RW(i)=rw(Z,RW(i),d,n); 
    end

end
toc
end
