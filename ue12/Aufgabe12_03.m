clear all; clc;
% Uebungsblatt 12  Aufgabe 3
function y = ErwWertFunction(x,n)
  y = x.*n;
endfunction

function y = EntropyFunction(u)
  y = u.*log2(u);
endfunction

disp("")
disp("Aufgabe 3:")
disp("b)")

Haeufigkeit3 = [ 0.1 0.2 0.3 0.4 ];

T3 = [0.5 0 0.5; 
      0.2 0.4 0.4; 
      0.5 0.25 0.25; 
      0 0.5 0.5];      
VertXY3 = T3.*Haeufigkeit3' %transponiert, zweidimensionale Verteilung des Vektors (X,Y);

% Matrix der zweidim. Verteilung, hat die Randverteilung von X und Y

disp("a)")
% Randverteilung der ZG Y 
VertZGy3 = sum(VertXY3, 1)

disp("c)")
Q_temp3 =  VertXY3 ./ VertZGy3;
Q3 = Q_temp3' % transponiert
% MAtrix der bedingte Wahrscheinlichkeit

disp("d)")

disp("Erwartungswert X (Gesendet)")
EntropyX3 = -sum(EntropyFunction(Haeufigkeit3))
disp("")

% Erwartungswerte X|Y berechnen
%-((Q3(1,1)*log2(Q3(1,1)))+(Q3(1,2)*log2(Q3(1,2)))+(Q3(1,3)*log2(Q3(1,3))))

ErwartXY3_Z1 = -((EntropyFunction(Q3(1,1)))+(EntropyFunction(Q3(1,2)))+(EntropyFunction(Q3(1,3))));
ErwartXY3_Z2 = -((EntropyFunction(Q3(2,2)))+(EntropyFunction(Q3(2,3)))+(EntropyFunction(Q3(2,4))));
ErwartXY3_Z3 = -((EntropyFunction(Q3(3,1)))+(EntropyFunction(Q3(3,2)))+(EntropyFunction(Q3(3,3)))+(EntropyFunction(Q3(3,4))));

disp("Erwartungswert X unter der Bedingung Y (Informationsverlust)")
ErwartXY3 = ErwartXY3_Z1*VertZGy3(1) + ErwartXY3_Z2*VertZGy3(2) + ErwartXY3_Z3*VertZGy3(3)
disp("")

disp("Info-Gehalt:")
InfoXY3_Gehalt = EntropyX3 - ErwartXY3 % viel, weil vierter Wert fehlt

