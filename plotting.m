%{
Z=grid2d(10,10);
g1=graph(Z);
d=degree(g1);
%A1=configs3(Z,g,65,d,[]);

subplot(2,2,1);

plot(g1,'XData',X,'YData',Y);

subplot(2,2,2);

plot(g2);

subplot(3,1,3);

plot(g);

%}



%
%square configs
Z=grid2d(10,10);
g=graph(Z);
d=degree(g);
A1=configs3(Z,g,65,d,[]);

subplot(2,2,1);
A2=A1(4,:);
A=zeros(100,1);
A(A2)=1; A(65)=2;

p=plot(g,'XData',X,'YData',Y);
g.Nodes.NodeColors = A;
p.NodeCData = g.Nodes.NodeColors;



subplot(2,2,2); 

A2=A1(12,:);
A=zeros(100,1);
A(A2)=1; A(65)=2;

p=plot(g,'XData',X,'YData',Y);
g.Nodes.NodeColors = A;
p.NodeCData = g.Nodes.NodeColors;
subplot(2,2,3);
A2=A1(16,:);
A=zeros(100,1);
A(A2)=1; A(65)=2;

p=plot(g,'XData',X,'YData',Y);
g.Nodes.NodeColors = A;
p.NodeCData = g.Nodes.NodeColors;



subplot(2,2,3); 

A2=A1(5,:);
A=zeros(100,1);
A(A2)=1; A(65)=2;

p=plot(g,'XData',X,'YData',Y);
g.Nodes.NodeColors = A;
p.NodeCData = g.Nodes.NodeColors;


subplot(2,2,4); 

A2=A1(1,:);
A=zeros(100,1);
A(A2)=1; A(65)=2;

p=plot(g,'XData',X,'YData',Y);
g.Nodes.NodeColors = A;
p.NodeCData = g.Nodes.NodeColors;
%