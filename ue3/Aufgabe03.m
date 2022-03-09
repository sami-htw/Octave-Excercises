% s0567074, Osama Ahmad
        
    %a)
    A=[2 3 -1; 2 1 -1;-4 2 1];
    b=[0;2;-9];
    
    
    %b)
    %A=[1 1 0 3;2 1 -1 1;3 -1 -1 2;-1 2 3 -1];
    %b=[4;1;-3;4];
    
    
    %c)
    A=[0 3 -5 1;-1 -3 0 -1;-2 1 2 2;-3 4 2 2];
    b=[0;-5;2;8];
    
    
    %d)
    %A=[5  -3 0 2;2 6 -3 0;-1 2 4 -1;-2 -3 2 7];
    %b=[13;16;-11;10];
    
  
    format long;
    
    relA = 5e-6; % Fehler(5*10^-6)
    relB = relA;
    x = (A\b);
    %x = A^(-1)*b;
    
    %  standard Abweichung delta(x)
    deltaX= cond(A) * (relA+relB)* norm(x);
    
    relativer_Fehler= deltaX\norm(x);
    
    % max absoluter Fehler als intervall
    intervall=[(x-deltaX) x (x+deltaX)];
    
    disp("Loesung des Gleichungssystems = "), disp(x)
    disp("Norm A = "), disp(norm(A))
    disp("Norm x = "), disp(norm(x))
    disp("Konditionierung der Matrix (A) = "), disp (cond(A))
    disp("delta_x (Abweichung) = "), disp(deltaX)
    relativer_Fehler
    disp("Intervalle: "), disp(intervall)%Intervall für die Werte aus x (Max absoluter Fehler x)
    
    
    
        

    
    
