%Fluid Laboratory
%Gauge Pressure
%Carlos I Medina

%Data

d = 0.029; %Diameter %m
V = 5:5:20; %Volume %ml
densityw = 1000; %Density of Water %kg/m^3
g = 9.8; %Gravity %m/s^2
A = pi*d^2/4;
Steps = 1:1:4;

%No. 1: Pressurization of the System
%5ml

Deltah1 = (295-221)/1000; %Height Difference %m

Pgauge1 = densityw*g*Deltah1; %Pressure %Pa
Force1 = Pgauge1*A; %Force %N

%No. 2: Pressurization of the System
%10ml

Deltah2 = (296-155)/1000; %Height Difference %m

Pgauge2 = densityw*g*Deltah2; %Pressure %Pa
Force2 = Pgauge2*A; %Force %N

%No. 3: Pressurization of the System
%15ml

Deltah3 = (293-86)/1000; %Height Difference %m

Pgauge3 = densityw*g*Deltah3; %Pressure %Pa
Force3 = Pgauge3*A; %Force %N

%No. 4: Pressurization of the System
%20ml

Deltah4 = (295-17)/1000; %Height Difference %m

Pgauge4 = densityw*g*Deltah4; %Pressure %Pa
Force4 = Pgauge4*A; %Force %N

%Vectors

Pgauge = [Pgauge1, Pgauge2, Pgauge3, Pgauge4];
Force = [Force1, Force2, Force3, Force4];

%Graph

figure
plot(Force, Pgauge, 'LineStyle','-','LineWidth',1.5,'Color',"b")
xlabel('Pressure Force (N)')
ylabel('Gauge Pressure (Pa)')
title('Gauge Pressure vs. Pressure Force')
grid on

%Table

T = table(Steps', V', Pgauge', Force', 'VariableNames',{'No.', 'Injected Volume (ml)', 'Pressure Gauge (Pa)', 'Pressure Force (N)'});
T.Properties.Description = 'Experimental Data: Strokes, Injected Volume, Gauge Pressure, and Pressure Force:';

disp(T.Properties.Description)
disp(T)