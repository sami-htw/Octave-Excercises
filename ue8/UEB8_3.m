%8_3_a
disp("Aufgabe (3.A)")
a_polynom = [1 0 0 0 0 0 -1 0]; % a) z^7 – z = 0
ns_a = roots(a_polynom)% Nullstellen bestimmen
figure(1),compass(ns_a)

%8_3_b
disp("Aufgabe (3.B)")
b_polynom = [1 1 1 1 1 1]; %b) z^5 + z^4 + z^3 + z^2 + z + 1 = 0
ns_b = roots(b_polynom)% Nullstellen bestimmen
figure(2),compass(ns_b)

%8_3_c
disp("Aufgabe (3.C)")
c_polynom = [1 0 0 -j]; % c) z^3 – j = 0.
ns_c = roots(c_polynom) % Nullstellen bestimmen
figure(3),compass(ns_c) % compa ---> grafische Darstellung in der komplexen Ebene