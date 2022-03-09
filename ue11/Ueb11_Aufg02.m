disp("");
disp("*** A ***");
ug_A = 0; % untere Grenze
og_A = pi; % obere Grenze
AX_Werte = [ug_A:0.01:og_A]; % X Werte, wird für Trapez benötigt
A_Func = sin(AX_Werte); % Funktion, wird für Trapez benötigt
A_Anonym = @(x) sin(x); % anonyme Funktion, für Simpson und Quad

A_Simp = simpson(A_Anonym, ug_A, og_A) % Simpson
A_Quadr = quad(A_Anonym, ug_A, og_A) % adaptive Simpson quadrature
Trap_A = trapz(AX_Werte, A_Func) % Trapezoidal numerical integration

disp("");
disp("*** B ***");
ug_B = 0; % untere Grenze
og_B = pi/2; % obere Grenze
BX_Werte = [ug_B:0.01:og_B]; % X Werte, wird für Trapez benötigt
B_Func = cos(BX_Werte); % Funktion, wird für Trapez benötigt
B_Anonym = @(x) cos(x); % anonyme Funktion, für Simpson und Quad

B_Simp = simpson(B_Anonym, ug_B, og_B) % Simpson
B_Quadr = quad(B_Anonym, ug_B, og_B) % adaptive Simpson quadrature
Trap_B = trapz(BX_Werte, B_Func) % Trapezoidal numerical integration

disp("");
disp("*** C ***");
ug_C = 1; % untere Grenze
ob_C = 2.6; % obere Grenze
CX_Werte = [ug_C:0.01:ob_C]; % X Werte, wird für Trapez benötigt
C_Func = sqrt(1+exp(0.5*CX_Werte.^2)); % Funktion, wird für Trapez benötigt
C_Anonym = @(x) sqrt(1+exp(0.5*x.^2)); % anonyme Funktion, für Simpson und Quad

C_Simp = simpson(C_Anonym, ug_C, ob_C) % Simpson
C_Quadr = quad(C_Anonym, ug_C, ob_C) % adaptive Simpson quadrature
Trap_C = trapz(CX_Werte, C_Func) % Trapezoidal numerical integration

disp("");
disp("*** D ***");
ug_D = -1; % untere Grenze
og_D = 0; % obere Grenze
DX_Werte = [ug_D:0.01:og_D]; % X Werte, wird für Trapez benötigt
D_Func = tan(DX_Werte); % Funktion, wird für Trapez benötigt
D_Anonym = @(x) tan(x); % anonyme Funktion, für Simpson und Quad

D_Simp = (simpson(D_Anonym, ug_D, og_D)) % Simpson
D_Quadr = (quad(D_Anonym, ug_D, og_D)) % adaptive Simpson quadrature
Trap_D = (trapz(DX_Werte, D_Func)) % Trapezoidal numerical integration

% Ergebnisse waren negativ, daher abs

disp("");
disp("*** E ***");
ug_E = 1; % untere Grenze
og_E = 2; % obere Grenze
EX_Werte = [ug_E:0.01:og_E]; % X Werte, wird für Trapez benötigt
E_Func = (1-exp(-EX_Werte))./EX_Werte; % Funktion, wird für Trapez benötigt
E_Anonym = @(x) (1-exp(-x))./x; % anonyme Funktion, für Simpson und Quad

E_Simp = simpson(E_Anonym, ug_E, og_E) % Simpson
E_Quadr = quad(E_Anonym, ug_E, og_E) % adaptive Simpson quadrature
Trap_E = trapz(EX_Werte, E_Func) % Trapezoidal numerical integration

disp("");
disp("*** F ***");
ug_F = 1; % untere Grenze
og_F = 4; % obere Grenze
FX_Werte = [ug_F:0.01:og_F]; % X Werte, wird für Trapez benötigt
F_Func = sqrt(1+(2*FX_Werte.^4)); % Funktion, wird für Trapez benötigt
F_Anonym = @(x) sqrt(1+(2*x.^4)); % anonyme Funktion, für Simpson und Quad

F_Simp = simpson(F_Anonym, ug_F, og_F) % Simpson
F_Quadr = quad(F_Anonym, ug_F, og_F) % adaptive Simpson quadrature
Trap_F = trapz(FX_Werte, F_Func) % Trapezoidal numerical integration

disp("");
disp("*** G ***");
ug_G = 0.5; % untere Grenze
og_G = 1; % obere Grenze
GX_Werte = [ug_G:0.01:og_G]; % X Werte, wird für Trapez benötigt
G_Func = GX_Werte.^3 ./ (exp(GX_Werte) - 1); % Die G_Funktion, wird für Trapez benötigt
G_Anonym = @(x) x.^3 ./ (exp(x) - 1); % anonyme Gunktion, für Simpson und Quad

G_Simp = simpson(G_Anonym, ug_G, og_G) % Simpson
G_Quadr = quad(G_Anonym, ug_G, og_G) % adaptive Simpson quadrature
Trap_G = trapz(GX_Werte, G_Func) % Trapezoidal numerical integration


disp("");
disp("*** H ***");
ug_H = 1; % untere Hrenze
og_H = 3; % obere Hrenze
HX_Werte = [ug_H:0.01:og_H]; % X Werte, wird für Trapez benötigt
H_Func = exp(HX_Werte) ./ HX_Werte.^2; % Die H_Funktion, wird für Trapez benötigt
H_Anonym = @(x) exp(x) ./ x.^2; % anonyme Funktion, für Simpson und Quad

H_Simp = simpson(H_Anonym, ug_H, og_H) % Simpson
H_Quadr = quad(H_Anonym, ug_H, og_H) % adaptive Simpson quadrature
Trap_H = trapz(HX_Werte, H_Func) % Trapezoidal numerical integration