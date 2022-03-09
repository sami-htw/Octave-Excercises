function Ueb11_Aufg01
aufgabe01_a();
aufgabe01_b();
aufgabe01_c();
aufgabe01_d();
aufgabe01_e();
endfunction




% Aufgabe 1. a)
function aufgabe01_a
  x = [-pi:0.01:pi]; % Definition des Intervalls
  y =  cos(x); % Definition der Funktion
  subplot(6,3,1);
  plot(x, y);
  title("cos(x)");
  
  % 1. Ableitung
  dyx_a = diff(y) ./ diff(x); % numerische Differenziation, erste Näherung der Ableitung
  xr = x; % Klonen des Intervalls
  xr(length(x)) = []; % Entfernen des letzten Wertes
  subplot(6,3,2);
  plot(xr, dyx_a);
  title("f'(x)");
  
  % 2. Ableitung
  dyxx_a = diff(dyx_a) ./ diff(xr); % Differenzenquotienten bilden
  xrr = xr;
  xrr(length(xr)) = [];
  subplot(6,3,3);
  plot(xrr, dyxx_a);
  title("f''(x)");
endfunction

% Aufgabe 1. b)
function aufgabe01_b
  
  x = [-10:0.01:10]; % Definition des Intervalls
  y =  x ./ (1 + x.^2); % Definition der Funktion
  subplot(6,3,4);
  plot(x, y);
  title("x / (1 + x^2)");
  
  % 1. Ableitung
  dyx_a = diff(y) ./ diff(x); % numerische Differenziation
  xr = x; % Klonen des Intervalls
  xr(length(x)) = []; % Entfernen des letzten Wertes
  subplot(6,3,5);
  plot(xr, dyx_a);
  title("g'(x)");
  
  % 2. Ableitung
  dyxx_a = diff(dyx_a) ./ diff(xr);
  xrr = xr;
  xrr(length(xr)) = [];
  subplot(6,3,6);
  plot(xrr, dyxx_a);
  title("g''(x)");
endfunction

% Aufgabe 1. c)
function aufgabe01_c
  
  x = [-10:0.01:10]; % Definition des Intervalls
  y =  tanh(x); % Definition der Funktion
  subplot(6,3,7);
  plot(x, y);
  title("tanh(x)");
  
  % 1. Ableitung
  dyx_a = diff(y) ./ diff(x); % numerische Differenziation
  xr = x; % Klonen des Intervalls
  xr(length(x)) = []; % Entfernen des letzten Wertes
  subplot(6,3,8);
  plot(xr, dyx_a);
  title("h'(x)");
  
  % 2. Ableitung
  dyxx_a = diff(dyx_a) ./ diff(xr);
  xrr = xr;
  xrr(length(xr)) = [];
  subplot(6,3,9);
  plot(xrr, dyxx_a);
  title("h''(x)");
endfunction

% Aufgabe 1. d)
function aufgabe01_d
  
  x = [-10:0.01:10]; % Definition des Intervalls
  y =  x .* exp(x); % Definition der Funktion
  subplot(6,3,10);
  plot(x, y);
  title("x * e^x");
  
  % 1. Ableitung
  dyx_a = diff(y) ./ diff(x); % numerische Differenziation
  xr = x; % Klonen des Intervalls
  xr(length(x)) = []; % Entfernen der letzten Koordinate
  subplot(6,3,11);
  plot(xr, dyx_a);
  title("k'(x)");
  
  % 2. Ableitung
  dyxx_a = diff(dyx_a) ./ diff(xr);
  xrr = xr;
  xrr(length(xr)) = [];
  subplot(6,3,12);
  plot(xrr, dyxx_a);
  title("k''(x)");
endfunction

% Aufgabe 1. e)
function aufgabe01_e
  
  x = [0.1:0.01:5.1]; % Definition des Intervalls
  y =  x .* log(x); % Definition der Funktion
  subplot(6,3,13);
  plot(x, y);
  title("x * ln(x)");
  
  % 1. Ableitung
  dyx_a = diff(y) ./ diff(x); % numerische Differenziation
  xr = x; % Klonen des Intervalls
  xr(length(x)) = []; % Entfernen der letzten Koordinate
  subplot(6,3,14);
  plot(xr, dyx_a);
  title("l'(x)");
  
  % 2. Ableitung
  dyxx_a = diff(dyx_a) ./ diff(xr);
  xrr = xr;
  xrr(length(xr)) = [];
  subplot(6,3,15);
  plot(xrr, dyxx_a);
  title("l''(x)");
endfunction