disp("Aufgabe 3:");

n = 10; % Umfang der Stichprobe = 10

% die gesuchte Konstante/Schranke c ist das Quantil u0,975 = 1,96 der Standardnormalverteiling
c3 = 1.96 % Tabelle Papula s.736
Var = 4; % gegebene Varianz = 4
st_Abw = sqrt(Var) % standard Abweichung
Mittel_wert = (10 + 8 + 9 + 10 + 11 + 11 + 9 + 12 + 8 + 12) / n 
k = (c3*st_Abw)/sqrt(Mittel_wert)

UntereGrenze = Mittel_wert - k
ObereGrenze = Mittel_wert + k
lnge = ObereGrenze-UntereGrenze % Die Länge