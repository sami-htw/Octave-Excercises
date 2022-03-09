clear all, clc;
% ueb 12 Auf.5

disp("")
disp("Aufgabe 5:")
disp("Hamming-Code (linear digital) Einfach:")

% Pruefmatrix
    H = [0, 0, 0, 1, 1, 1, 1;
         0, 1, 1, 0, 0, 1, 1;
         1, 0, 1, 0, 1, 0, 1]

% Informationsmatrix
    G = [1, 1, 1, 0, 0, 0, 0;
         1, 0, 0, 1, 1, 0, 0;
         0, 1, 0, 1, 0, 1, 0;
         1, 1, 0, 1, 0, 0, 1]

a = [1 0 0 1] 

c = mod(a*G, 2) % Hiweis s.25
w = c;
w(5)= 1; % Fehlerhafter Wert
w
checking_c = mod(H*c', 2) 
checking_w = mod(H*w', 2) %  (binaer zu dezimal) 101 = 5


disp("")
disp("Hamming-Code (linear digital) Zweifach:")


% Pruefmatrix
H = [0, 0, 0, 0, 1, 1, 1, 1;
     0, 0, 1, 1, 0, 0, 1, 1;
     0, 1, 0, 1, 0, 1, 0, 1;
     1, 1, 1, 1, 1, 1, 1, 1]
  
% Informationsmatrix
G = [1, 1, 1, 1, 0, 0, 0, 0;
     1, 1, 0, 0, 1, 1, 0, 0;
     1, 0, 1, 0, 1, 0, 1, 0;
     1, 1, 1, 1, 1, 1, 1, 1]

a = [1 0 1 1]
c = mod(a*G, 2)
w = c;
w(4)= 1; w(2)=1;
w
checking_c = mod(H*c', 2)
checking_w = mod(H*w', 2) % zweifacher Fehler, s>0 und vierte Bit=0

