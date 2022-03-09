clear all; clc;
% ueb 12 Auf.4
function y = ErwWertFunction(x,n)
  y = x.*n;
endfunction

function y = EntropyFunction(u)
  y = u.*log2(u);
endfunction

disp("")
disp("Aufgabe 4:")
disp("b)")

Haeufigkeit4 = [ 0.30 0.28 0.12 0.12 0.10 0.08 ];

% Übertragungsmatrix
T4 = [ 0.6 0.35 0.03 0.02 0 0;
       0.1 0.45 0.2 0.15 0.1 0;
       0.1 0.15 0.5 0.15 0.05 0.05;
       0 0.05 0.15 0.6 0.15 0.05;
       0 0 0.07 0.18 0.55 0.2;
       0 0 0.08 0.12 0.25 0.55;];

VertXY4 = T4.*Haeufigkeit4' %zweidimensionale Verteilung des Vektors (X,Y);

disp("a)") % Randverteilung der ZG Y
VertZGy4 = sum(VertXY4, 1)

disp("c)")
Q_temp4 =  VertXY4 ./ VertZGy4; % elementarweise dividiert
Q4 = Q_temp4' % Matrix Q der bedingten Wahrscheinlichkeiten

disp("d)")

% Erwartungswert X ("Gesendet")
EntropyX4 = -sum(EntropyFunction(Haeufigkeit4))

ErwartXY4_Z1 = -((EntropyFunction(Q4(1,1)))+(EntropyFunction(Q4(1,2)))+(EntropyFunction(Q4(1,3))));
ErwartXY4_Z2 = -((EntropyFunction(Q4(2,1)))+(EntropyFunction(Q4(2,2)))+(EntropyFunction(Q4(2,3)))+(EntropyFunction(Q4(2,4))));
ErwartXY4_Z3 = -((EntropyFunction(Q4(3,1)))+(EntropyFunction(Q4(3,2)))+(EntropyFunction(Q4(3,3)))+(EntropyFunction(Q4(3,4)))+(EntropyFunction(Q4(3,5)))+(EntropyFunction(Q4(3,6))));
ErwartXY4_Z4 = -((EntropyFunction(Q4(4,1)))+(EntropyFunction(Q4(4,2)))+(EntropyFunction(Q4(4,3)))+(EntropyFunction(Q4(4,4)))+(EntropyFunction(Q4(4,5)))+(EntropyFunction(Q4(4,6))));
ErwartXY4_Z5 = -((EntropyFunction(Q4(5,2)))+(EntropyFunction(Q4(5,3)))+(EntropyFunction(Q4(5,4)))+(EntropyFunction(Q4(5,5)))+(EntropyFunction(Q4(5,6))));
ErwartXY4_Z6 = -((EntropyFunction(Q4(6,3)))+(EntropyFunction(Q4(6,4)))+(EntropyFunction(Q4(6,5)))+(EntropyFunction(Q4(6,6))));

% Erwartungswert X unter der Bedingung Y (Informationsverlust)
ErwartXY4 = ErwartXY4_Z1*VertZGy4(1) + ErwartXY4_Z2*VertZGy4(2) + ErwartXY4_Z3*VertZGy4(3) + ErwartXY4_Z4*VertZGy4(4) + ErwartXY4_Z5*VertZGy4(5) + ErwartXY4_Z6*VertZGy4(6)

% Info-Gehalt 
InfoXY4_Gehalt = EntropyX4 - ErwartXY4