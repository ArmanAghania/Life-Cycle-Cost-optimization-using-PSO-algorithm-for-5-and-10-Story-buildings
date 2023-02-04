
A   = 0.35;
Cd  = 1.25;
H   = NS*NB;
Tem = Cd*0.05 * H ^ 0.75;
Ts  = 0.7;
T0  = 0.15;
S   = 1.75;
S0  = 1.1;
I   = 1.2;

T = Te;

for iii = 1: length(T)
    if T(iii) <= Ts
        N(iii) = 1;
    elseif Ts < T(iii) && T(iii) <= 4
        N(iii) = (0.7/(4-Ts))*(T(iii) - Ts) + 1;
    elseif T(iii) > 4
        N(iii) = 1.7;
    end

    if T(iii) <= T0
        B1(iii) = S0 + (S - S0 + 1)*(T(iii)/T0);
    elseif T(iii) > T0 && T(iii) <= Ts
        B1(iii) = S + 1;
    elseif T(iii) > Ts
        B1(iii) = (S + 1)*(Ts/T(iii));
    end
end

BB = B1.*N;
Sa = A * BB * I;
Sa5050 = ((72.134/475)^0.44)*Sa;
Sa1050 = Sa;
Sa250  = 1.5*Sa;

C0 = 1.4;
C1 = 1.0;
C2 = 1.0;

dt5050 = C0*C1*C2*Sa5050 * (Te^2)/(4*pi^2) * 9.80665019982;
dt1050 = C0*C1*C2*Sa1050 * (Te^2)/(4*pi^2) * 9.80665019982;
dt250  = C0*C1*C2*Sa250  * (Te^2)/(4*pi^2) * 9.80665019982;