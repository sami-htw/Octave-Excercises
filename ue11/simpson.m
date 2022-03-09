% simpson Regel zur berechnung die Näherungen zu einem Integral der Funktion f(x) im bestimmten Intervall [a,b]
function y = simpson(funk, a, b)
  n = 10; % Die gewünschte Anzahl an Doppel-Streifen, umso höher und genauer
  h = (b - a) / (2 * n); % Schrittweite der einfachen Streifen
  st_stellen = [a : h : b]; % Stützstellen
  st_werte = feval(funk, st_stellen); % Stützwerte
  
  Eps_0 = st_werte(1) + st_werte((2 * n) + 1);
  
  Eps_1 = 0;
  i = 2;
  while (i <= (2*n)+1)
    Eps_1 = Eps_1 + st_werte(i);
    i = i + 2;
  endwhile
  
  Eps_2 = 0;
  i = 3;
  while (i <= 2*n)
    Eps_2 = Eps_2 + st_werte(i);
    i = i + 2;
  endwhile
  
  y = (Eps_0 + 4*Eps_1 + 2*Eps_2) * h / 3;
endfunction 