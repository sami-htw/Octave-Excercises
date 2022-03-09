disp('##### n = 1 #####')
s1=[1:6] % intervall 1 bis 6
n=1 % Wurf
p1=repmat(1/6, 1, 6) %  Vektor initialisiert mit 6 relisationen, haben jeweils die Wahrscheinlichkeit von 1/6
E1=3.5 % Erwartungswert (1*1/6 + 2*1/6 + 3*1/6.....) = 3.5, das Beispiel s 334 papula
V1=2.9167 % Varianz, standardtisiert E(x^2) -(E(x))^2

% Erwartungswert subtrahiert
% geteilt durch die Standardabweichung (Wurzel Anzahl, Wurzel Varianz)
% kommt immer eine Vertielung, die näher an die Standardabweichung ist
Z1=(s1-n*E1)/(sqrt(V1)) 

% bar (X Wert, Y Wert)
% X Wert
% Y Werte von p1, hier nur 1/6
% axis ([x_lo x_hi y_lo y_hi])
subplot(2,3,1), bar(Z1,p1), axis ([-3 3 0 0.2]) %subplot (ROWS, COLS, INDEX)


disp('##### n = 2 #####')
s2=[2:12]
n=2 % zweiter Wurf
p2=conv(p1,p1) % produkt der Vektoren
E2=E1*n
V2=V1*n
Z2=(s2-E2)/sqrt(V2) % Normierter ZG 

subplot(2,3,2), bar(Z2,p2), axis ([-3 3 0 0.2])

disp('##### n = 3 #####')
s3=[3:18]
n=3
p3=conv(p1,p2)
E3=E1*n
V3=V1*n
Z3=(s3-E3)/sqrt(V3)

subplot(2,3,3), bar(Z3,p3), axis ([-3 3 0 0.2])

disp('##### n = 4 #####')
s4=[4:24]
n=4
p4=conv(p1,p3)
E4=E1*n
V4=V1*n
Z4=(s4-E4)/(sqrt(V4))

subplot(2,3,4), bar(Z4,p4), axis ([-4 4 0 0.2])

disp('##### n = 5 #####')
s5=[5:30]
n=5
p5=conv(p1,p4)
E5=E1*n
V5=V1*n
Z5=(s5-E5)/(sqrt(V5))

subplot(2,3,5), bar(Z5,p5), axis ([-4 4 0 0.2])

disp('##### n = 6 #####')
s6=[6:36]
n=6
p6=conv(p1,p5)
E6=E1*n
V6=V1*n
Z6=(s6-E6)/(sqrt(V6))

subplot(2,3,6), bar(Z6,p6), axis ([-4 4 0 0.2])

% Grenzwert
% Grenzwertsatz: je größer die Stichprobe wird, 
% desto näher wird die Stichprobenverteilung normalverteilt sein.
% der Mittelwert der Stichprobe näherungsweise dem Mittelwert der Grundgesamtheit entsprechen
% Zusätzlich werden alle Stichproben annähernd normalverteilt sein,
% mit einer Varianz, die der der Grundgesamtheit geteilt durch die Größe der Stichprobe entspricht.