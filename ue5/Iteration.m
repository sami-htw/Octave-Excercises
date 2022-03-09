% a) (cos x = x)

xa = -2 : 0.01 : 2.0;% Erzeugen des Intervalls [-2; 2]

A_nullstelleBisektion = fzero(@func_a,1) % Nullstelle Bisektion
A_nullstelleOptimiert = fsolve(@func_a,1) % Nullstelle Newton

y1a = cos(xa)-xa; % Funktion

hold on
figure(1),plot(xa, y1a, 'b') % Zeichnen beider Grafiken, b für blau
grid % Gitter und Beschriftung
title( ' Aufgabe 5a ')
xlabel( 'x')
ylabel( 'y')
legend( 'cos(x)=x') % Legende in Reihenfolge y1, y2, ...
hold off

axis square % Ausgabe im Quadrat
axis equal % und im gleichen Maßstab

% b) sin x + 2 x1/2 = 1

xb = 0 : 0.01 : 5.0;% Erzeugen des Intervalls [0; 2]

B_nullstelleBisektion = fzero(@func_b,1) % Nullstelle Bisektion
B_nullstelleOptimiert = fsolve(@func_b,1) % Nullstelle Newton

y1b = sin(xb)+(2*xb.^0.5)-1; % Funktion

hold on
figure(2),plot(xb, y1b, 'b') % Zeichnen beider Grafiken, b für blau
grid % Gitter und Beschriftung
title( ' Aufgabe 5b ')
xlabel( 'x')
ylabel( 'y')
legend( 'sin(x)+2x^(1/2)+1') % Legende 
hold off

axis square % Ausgabe im Quadrat
axis equal % und im gleichen Maßstab

% c)  x ex = 1

xc = -2 : 0.01 : 2.0;% Erzeugen des Intervalls [-2; 2]

C_nullstelleBisektion = fzero(@func_c,1) % Nullstelle Bisektion
C_nullstelleOptimiert = fsolve(@func_c,1) % Nullstelle Newton

y1c = xc.*exp(xc)-1;% Funktion

hold on
figure(3),plot(xc, y1c, 'b') % Zeichnen beider Grafiken
grid % Gitter und Beschriftung
title( ' Aufgabe 5c ')
xlabel( 'x')
ylabel( 'y')
legend( 'y=x.*exp(x)-1') % Legende
axis square % Ausgabe im Quadrat
%axis equal % und im gleichen Maßstab
hold off

% d) 1 + cos x cosh x = 0.

xd = -20 : 0.01 : 20;% Erzeugen des Intervalls [-20; 20]

% Nullstelle Bisektion, für die weiteren Nullstellen mal 
% Werte wie 3 oder 8 probieren
D_nullstelleBisektion = fzero(@func_d,5) 
D_nullstelleOptimiert = fsolve(@func_d,5) % Nullstelle Newton


y1d = 1+cos(xd).*cosh(xd); % Funktion
hold on
figure(4),plot(xd, y1d, 'b') % Zeichnen beider Grafiken
grid % Gitter und Beschriftung
title( ' Aufgabe 5d ')
xlabel( 'x')
ylabel( 'y')
legend( 'y=1+cos(x)*cosh(x);') % Legende in Reihenfolge y1, y2, ...
axis([-20 20 -10 10])
hold off

%axis square % Ausgabe im Quadrat
%axis equal % und im gleichen Maßstab
