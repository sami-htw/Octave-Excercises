zp= [4 0 0 0 -4]; % Zaehlerpolynom
np1= [1 -2]; % Nennerpolynom1
np2= [1 2]; % Nennerpolynom2

disp("Nennerpolynom = ")
np= conv(np1,np2) % Nennerpolynom, Produkt beider Polynome

disp("Nullstellen des ZählerPolynom = ")
r=roots(zp) % Spaltenvektor der Nullstellen

disp("qp = ganzrational") % ganzrationale funktion qp
disp("rp = Divisionsrest")
[qp,rp]=deconv(zp,np) 
% Deconvolutin, qp = ganzrationale Funktion , rp = Divisionsrest(echt gebrochen-rationale Funktion )
% Partialbruch ergibt sich aus Rest: 60/x^2-4

disp("Partialbruchzerlegung für rp: ")
[r,xP,g]=residue(rp,np) 
% r Zähler Partialbrüche
% xP Polstellen der Partialbrüche 
% g ganzrationaler Teil
% (15/(x-2)) + (-15/(x-(-2)))
