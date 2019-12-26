function [ind] = trapped (Z,d,prey,pred)
%Given that, there is at least one predator in the prey's ngbd, is it
%trapped?
ind=0;
z=sum(Z(:,pred),2)>0;

z(pred)=1;
if Z(prey,:)*z==d(prey)
    ind=1;
end
end