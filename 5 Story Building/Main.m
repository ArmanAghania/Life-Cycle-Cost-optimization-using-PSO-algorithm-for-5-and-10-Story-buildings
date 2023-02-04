clear;
close;
clc;


NS = 5; %Number of Stairs
NB = 3; %Number of Bays
Ls = 3; %Length of Stairs
Lb = 5; %Length of Bays
Lt = sqrt(Ls^2+Lb^2);
np = 100;    %Number of Particles
nvc = 6;    %Comlumn Groups
nvb = NS;   %Beam Groups
nvBr = NS;  %Brace Groups
nvp1 = NS;
nvp2 = NS;
nv   = nvc + nvb + nvBr + nvp1 + nvp2;
dt_incr = 0.002;


xlbC  = 1;
xubC  = 10;

xlbB  = 1;
xubB  = 24;

xlbBr = 1;
xubBr = 23;

Plb1  = 0;
Pub1  = 3;

Plb2  = 0;
Pub2  = 1;

Maxiter  = 200;
Maxcycle = 10;

fitness  = [];

wmax = 0.5;
wmin = 0.0;

c1 = 1.75;
c2 = 2.25;

E  = 20394323844;  %kgf/m^2
Fy = 35153481.31;  %kgf/m^2
Fu = 45699526;
Ry = 1.1;
Gamma = 7850;

% Pnlty = 1e6;
% RPG   = 1e3;
% RPS   = 1e3;
% RPPF  = 1e3;
Pnlty = 1e6;
RPG   = 1e3;
RPS   = 1e3;
RPPF  = 1e3;
incr  = 0;.002;
CH    = zeros(Maxiter,Maxcycle);


CSection    = load('Input/CSection.txt');            %Column Sections, n, w, A, d, bf, tw, tf, bf/2tf, h, tw
BSection    = load('Input/BSection.txt');              %Beam   Sections, n, w, A, d, bf, tw, tf, bf/2tf, h, tw
BrSection   = load('Input/BrSection.txt');             %Brace  Sections, n, w, A, d, tf

flag1 = 0;
flag2 = 0;
WF = 1e6;
LC = 1e6;
PF   = zeros(np,1);
WW   = zeros(np,1);
SOFW = zeros(np,1);

Generation;

T = zeros(Maxiter,Maxcycle);

for ic = 1:Maxcycle
    IXV;
    for iter = 1:Maxiter
        tic
        for is = 1:np
            if flag2 == 1
                dFiles;
            end
            flag2 = 0;            
%             clc;
%             Iteration = is
%             if is == 1
%                 for iii = 1:NS
%                     for jjj = 1:nvc
%                         WF = WF + Gamma * Ls * (Nb + 1) * (CSection(XpsoC(jjj,is),5))
%                  WF =     Gamma*(Ls*(4*(CSection(XpsoC(1,is),5) + CSection(XpsoC(2,is),5) + CSection(XpsoC(4,is),5) + CSection(XpsoC(5,is),5)) + 2*(CSection(XpsoC(3,is),5) + CSection(XpsoC(6,is),5))) + ...
%                             Lb*(3*(BSection(XpsoB(1,is),1) + BSection(XpsoB(2,is),1) + BSection(XpsoB(3,is),1) + BSection(XpsoB(4,is),1) + BSection(XpsoB(5,is),1))) + ...
%                              6*Lt*(BrSection(XpsoBr(1,is),1) + BrSection(XpsoBr(2,is),1) + BrSection(XpsoBr(3,is),1) + BrSection(XpsoBr(4,is),1) + BrSection(XpsoBr(5,is),1)));
%             elseif CorEE == ture
%                 for iii = 1:size(CorEE,1)
%                     WF = Gamma* (Ls*(4*(CSection(XpsoC(1,is),5) + CSection(XpsoC(2,is),5) + CSection(XpsoC(4,is),5) + CSection(XpsoC(5,is),5)) + 2*(CSection(XpsoC(3,is),5) + CSection(XpsoC(6,is),5))) + ...
%                                  Lb*(3*(BSection(XpsoB(1,is),1) + BSection(XpsoB(2,is),1) + BSection(XpsoB(3,is),1) + BSection(XpsoB(4,is),1) + BSection(XpsoB(5,is),1))));
%                     WF = WF + Lt*CorEE(iii,4);
%                 end
%             end
            Srvc_Const;
            if PFG > 0
%                 disp('Constructability Problem')
                PFS = Pnlty;
                PFP = Pnlty;
%                 break
            elseif PFG == 0
                Input_Service;
                BrNS;
                    if iter > 1 && flag1 == 1
                        if WF >= Gb
                           continue
                        end
                    end
                [status,~] = system('opensees SCBF53.txt');
                Strng_Const;
                if PFS > 0
                    disp('Strength Problem')
                    PFP = Pnlty;
%                     break

                elseif PFS == 0
                    Input_PBD;
                    [status,~] = system('opensees PushoverSCBF53.txt');
                    PBD_Const;
                    flag2 = 1;
                    LCC;
                    if PFP >0
                        disp('PBD Problem')
                    else
                        disp('Alright')
                        flag1 = 1;
%                         Plotit;
%                         break
                    end
                end
            end
            PF(is,1) = PFG + PFS + PFP;
            WW(is,1)  = WF + LC;
            SOFW(is,1) = WW(is,1)*(1+PF(is,1));

        end
     PBest;
     GBest;
     VUpdate;
     XUpdate;
     minn = find(SOFW == Gb);
     [nmin mmin] = size(minn);
%      if mmin >round(0.8*np)
%         Xgbest;
%         break
%      end
     clc
     Gb
     CH(iter,ic) = Gb;
     Monitor = [iter,ic]
     T(iter,ic) = toc;
    end
    GB(ic) = Gb;
    XGB(1:size(Xpso,1),ic) = Xgbest(:,1);
    XGB(size(Xpso,1) + 1,ic) = GB(ic);
end

