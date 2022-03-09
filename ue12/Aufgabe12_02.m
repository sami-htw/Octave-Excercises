clear all;

% Uebungsblatt 12  Aufgabe 2
disp("")
disp("Aufgabe 2:")
disp("")

% Für eine symmetrische digitale Übertragung , p = q = 0.5
Haeufigkeit2 =  [0.3 0.28 0.12 0.12 0.1 0.08];
FanoCode2 = [ 0 10 010 110 111 011] % Jeder der beiden Teilmengen 0 bzw. 1 zuordnen
BitAnzahl2 =   [ 2 2 3 3 3 3]   % durchgeführt bis alle Zeichen kodiert sind 


function y = ErwWertFun(x,n)
  y = x.*n;
endfunction

function y = EntropyFun(u)
  y = u.*log2(u);
endfunction

ErwWert2 = sum(ErwWertFun(Haeufigkeit2, BitAnzahl2)) % Gewichtungs des Informationsgehalt

EntropyIdeal2 = -sum(EntropyFun(Haeufigkeit2)) % Shannon's Entropie

EffektivitaetReal2 = EntropyIdeal2 /  ErwWert2 % Effektivität des Codes, Je näher das Verhältnis an der 1 ist, desto besser ist die Kodierung.
