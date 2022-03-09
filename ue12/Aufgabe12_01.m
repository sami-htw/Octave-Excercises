clear all;  
% Die Entropie ist ein Maß für den mittleren Informationsgehalt einer Nachricht und beschreibt den durchschnittlichen 
% Informationsgehalt pro Zeichen einer Quelle
% Uebungsblatt 12  Aufgabe 1
disp("Aufgabe 1:")
disp("")

%           A   B    C   D    E    F
Haeufigkeit1 = [0.5 0.25 0.1 0.08 0.05 0.02];
FanoCode1= [ 0 10 110 1110 11110 11111 ] % Jeder der beiden Teilmengen 0 bzw. 1 zuordnen
BitAnzahl1 =  [ 1 2 3 4 5 5 ]  

function y = ErwWertFun(x,n) % Erwartungswert der Anzahl N der Bits pro kodiertes Zeichen zu berechnen
  y = x.*n; % Elementarweise wird mit n multipliziert
endfunction

function y = EntropyFunc(u) % EntropyFunction
  y = u.*log2(u);
endfunction

ErwWert1 = sum(ErwWertFun(Haeufigkeit1, BitAnzahl1)) % Gewichtungs des Informationsgehalt

EntropyIdeal1 = -sum(EntropyFunc(Haeufigkeit1)) % Shannon's Entropie

EffektivitaetReal1 = EntropyIdeal1 /  ErwWert1 % Effektivität der Kodierung wird gemessen, je näher an 1 umso besser