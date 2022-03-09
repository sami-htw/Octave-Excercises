%clear all; clf;


disp("Aufgabe 4)");
x_i = [ 1, 2, 3, 4, 5 ]';
y_i = [ 1.8395, 0.6765, 0.2490, 0.0915, 0.0335 ]';
y_i2 = log(y_i); % Logarithmus

n = size(x_i); % Größe vom X Vektor (10 Werte, 1 Spalte)

A = ones(n, 2); % 10 Zeilen, 2 Spalten, 1. Spalte beinhaltet 1
A(:,2) = x_i % in 2. Spalte kommen die x_i Werte

p = A \ y_i2 % Punkt 6, Orthogonalisierung nach Householder (QR Zerlegung der Matrix) mit Y Werten

a = exp(p(1)) % man rechnet quasi linear den Exponenten von Euler aus. 
b = p(2)

plot(x_i, y_i, 'b+', 'Markersize', 9)
% b = blau
% + = kreuz zeichen
% Markersize 9, wie groß die Kreuze sind

x_intervall = [0:0.1:5.5]; % X Intervall bis 50
f = a.*exp(b.*x_intervall); % Funktion mit der Funktion im Intervall
hold on
plot(x_intervall, f)
hold off

disp("");