function [ind] = trapped (Z,d,prey,pred)
%Code to determine whether the prey is trapped at node 'prey', given that there is at least one predator in the prey's ngbd.
ind=0;
z=sum(Z(:,pred),2)>0;

z(pred)=1;
if Z(prey,:)*z==d(prey)
    ind=1;
end
end
