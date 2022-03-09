% Hypergeometrische Verteilung Papula s. 359
function y = P(x)
  % 20 die Anzahl der Elemente in der Grundgesamtheit
  % 5  die Anzahl der Elemente, die für uns günstig sind 
  % Die Anzahl der Elemente, die wir entnehmen wollen wird durch x representiert
  % nchoosek gibt die binomial koffizient zurück
  y = ((nchoosek(5, x)) * (nchoosek(15, 5-x))) / (nchoosek(20, 5))
end