% Poisson-Verteilung wird vor allem dort eingesetzt, wo die Häufigkeit eines 
% Ereignisses über eine gewisse Zeit betrachtet wird

% Varianz² = Erwartungswert
% Standardabweichung = Wurzel aus Erwartungswert bzw. Varianz

% konvergiert, für Werte, die weit von μ entfernt sind, gegen 0

% Man benutzt die Poisson-Verteilung im allgemeinen zu Annäherung der 
% Binomialverteilung, wenn n groß ist und p klein. 
% Als Erwartungswert μ der Poisson-Verteilung verwenden wir μ = λ = n · p

% Allgemein approximiert die Poisson-Verteilung die Binomialverteilung sehr gut 
% für Werte von n ≥ 100 und λ ≤ 10

disp("Aufgabe 2");

Erwert = 7/2

% Formel für Poisson Verteilung (Papula B3 S.364
function y = f(x)
ew = 7/2;
y = (((ew).^x)./factorial(x)).*(exp(-ew))
end

% -- A --
disp("a)");
xa = [0:1:8];
subplot(2,2,1), bar(xa, f(xa)), title('Aufgabe2-a) X=8'), axis([0 8 0 0.3])

% -- B --
disp("b)");
MehrAlsZWeiMalEinsatz = 1 - f(0) - f(1) - f(2) % mehr als 2 mal pro Woche ausrücken

% -- C --
% Papula S.390
% Exponentialverteilung
disp("c) grafische Darstellung");

% Dichtefunktion
function y = CDichte(x)
Erw = 2; 
Lambda = 1/Erw; % Erwartungswert = 1/Lambda , umstellen
y = (Lambda) * exp(-Lambda*x);
end

% Verteilungsfunktion
function y = CVerteilung(x)
Erw = 2; 
Lambda = 1/Erw; % Erwartungswert = 1/Lambda , umstellen
y = 1 - exp(-Lambda*x);
end

xc = [0:1:10];
subplot(2,2,3), plot(xc, CDichte(xc)), title(' Aufgabe2-c) Dichtefunktion')
subplot(2,2,4), plot(xc, CVerteilung(xc)), title(' Aufgabe2-c) Verteilungsfunktion')

% -- D --
disp("d)");
InnerhalbZweiTage = CVerteilung(2)

% -- E --
disp("e)");
Mind5Tage = 1 - CVerteilung(5)