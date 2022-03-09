function Aufgabe10_01
aufgabe01();
endfunction

function erg = f(x)
  erg = (9 - x).^2;
endfunction

function aufgabe01
	disp("Aufgabe 1");
	x = [0:0.5:9];
  
% die Wahrscheinlichkeit, dass eine stetige Zufallsvariable X
% einen bestimmten Wert x annimmt, ist stets Null
% Grund dafür ist, dass die Fläche über einem Punkt x gleich Null ist
  
	% a)
	disp("a)");
	q = quad (@f, 0, 9) % Integral von 0 bis 9
	c = 1/q % weil Flächeninhalt unter der Dichtefunktionj (x) genau den Wert Eins besitzt (c*integral=1), 
	disp("")
	
	% b)	
  disp("b)");
  % (9-x)^2 ---> binomische Formel (81-18x+x^2)----integriert---> 81x - 9x^2 + 1/3X^3
  G = c * (81 * x -9 * x.^2 + 1 / 3 * x.^3); % verteilungsfunktion, Kubische Parabel.

	% c) zeige Plot
  
  % Ableitung von G (verteilungsfunktion) ist g (dichteF)
	disp("c)");
  disp("siehe Plot");
	subplot(1,2,2), plot(x, G), title('Auf1-c-Ve) Verteilungsfunktion.'), axis([0 9 0 1])
	disp("");
  % das Integral der Dichtefunktion ist die Verteilungsfunktion.(Die erste Ableitung der Verteilungsfunktion ist DF)
  % Verteilungsfunktionen der Zufallsvariable x werden F(x) gekennzeichnet. Sie geben an, wie groß ist die Wahrscheinlichkeit , 
  % dass die Zufallsvariable einen Wert gleich oder kleiner als x annimmt. Verteilungsfunktionen müssen Werte zwischen 0 und 1 annehmen
  
  g = c*(9 - x).^2;
	subplot(1,2,1), plot(x, g), title('Auf1-c-Di) Dichtefunktion.'), axis([0 9 0 1])% lower und upper axis 
  % Wahrscheinlichkeit entspricht der Fläche unter der Dichtefunktion

	% d)
	disp("d)");
  % Erwartungswert (Papula3 S. 341 unten)
	erw_wert = quad(@(x) x*c*(9-x)^2,0,9)
  
  % Standardabweichung (Papula3 S. 344f)
  % die Varianz beschreibt die erwartete quadratische Abweichung der Zufallsvariablen von ihrem Erwartungswert
  % da Quadrat Stunden keine vergleichbare Einheit ist, wird die Standardabweichung heran gezogen
  % Maß dafür, wie stark im Mittel die Zufallsgröße von ihrem Erwartungswert streut
	varianz = quad(@(x) (x-erw_wert)^2*c*(9-x)^2,0,9)
	standabweichung = sqrt(varianz)
	disp("");

	% e)
	disp("e)");
	Erwartungswert_Rechnung = 30 + (erw_wert * 80)
	Standardabweichung_Rechnung = 80 * standabweichung
	disp("");
	disp("");
  endfunction