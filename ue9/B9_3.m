% Binomial Verteilung

n1 = 250;
n2 = 500;
n3 = 1000;
n4 = 2000;

% Ausschlußanteil
p = 0.02;

% Erwartungswert
E1 = n1 * p
E2 = n2 * p
E3 = n3 * p
E4 = n4 * p

% Standardabweichung = die wurzel von Varianz
b1 = sqrt(E1 * (1-p))
b2 = sqrt(E2 * (1-p))
b3 = sqrt(E3 * (1-p))
b4 = sqrt(E4 * (1-p))

