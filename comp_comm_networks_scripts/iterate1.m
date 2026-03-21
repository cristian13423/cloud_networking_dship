% assign vectors from costs
A_v = A;
B_v = B;
C_v = C;
D_v = D;
E_v = E;
F_v = F;
G_v = G;
H_v = H;
I_v = I;
J_v = J;
K_v = K;
L_v = L;
M_v = M;
N_v = N;
O_v = O;
P_v = P;

% nodes = {A_v;B_v;C_v;D_v;E_v;F_v;G_v;H_v;I_v;J_v;K_v;L_v;M_v;O_v;P_v};
% 
% iter = 3; % worst case
% 
% for i=1:iter
%     for j=1:numel( [nodes] )
%         bellmanFord( [nodes{j}] );
%     end
% end

% A---x---B---x---C---x---D
% |       |       |       |
% x       x       x       x
% |       |       |       |
% E---x---F---x---G---x---H
% |       |       |       |
% x       x       x       x
% |       |       |       |
% I---x---J---x---K---x---L
% |       |       |       |
% x       x       x       x
% |       |       |       |
% M---x---N---x---O---x---P

%% algorithm
% iteration 1 - use original costs
disp( ["iteration 1"] )

A_v.A = 0;
A_v.B = min( [A.B+B.B; A.E+E.B] );
A_v.C = min( [A.B+B.C; A.E+E.C] );
A_v.D = min( [A.B+B.D; A.E+E.D] );
A_v.E = min( [A.B+B.E; A.E+E.E] );
A_v.F = min( [A.B+B.F; A.E+E.F] );
A_v.G = min( [A.B+B.G; A.E+E.G] );
A_v.H = min( [A.B+B.H; A.E+E.H] );
A_v.I = min( [A.B+B.I; A.E+E.I] );
A_v.J = min( [A.B+B.J; A.E+E.J] );
A_v.K = min( [A.B+B.K; A.E+E.K] );
A_v.L = min( [A.B+B.L; A.E+E.L] );
A_v.M = min( [A.B+B.M; A.E+E.M] );
A_v.N = min( [A.B+B.N; A.E+E.N] );
A_v.O = min( [A.B+B.O; A.E+E.O] );
A_v.P = min( [A.B+B.P; A.E+E.P] );

B_v.A = min( [B.A+A.A; B.C+C.A; B.F+F.A] );
B_v.B = 0;
B_v.C = min( [B.A+A.C; B.C+C.C; B.F+F.C] );
B_v.D = min( [B.A+A.D; B.C+C.D; B.F+F.D] );
B_v.E = min( [B.A+A.E; B.C+C.E; B.F+F.E] );
B_v.F = min( [B.A+A.F; B.C+C.F; B.F+F.F] );
B_v.G = min( [B.A+A.G; B.C+C.G; B.F+F.G] );
B_v.H = min( [B.A+A.H; B.C+C.H; B.F+F.H] );
B_v.I = min( [B.A+A.I; B.C+C.I; B.F+F.I] );
B_v.J = min( [B.A+A.J; B.C+C.J; B.F+F.J] );
B_v.K = min( [B.A+A.K; B.C+C.K; B.F+F.K] );
B_v.L = min( [B.A+A.L; B.C+C.L; B.F+F.L] );
B_v.M = min( [B.A+A.M; B.C+C.M; B.F+F.M] );
B_v.N = min( [B.A+A.N; B.C+C.N; B.F+F.N] );
B_v.O = min( [B.A+A.O; B.C+C.O; B.F+F.O] );
B_v.P = min( [B.A+A.P; B.C+C.P; B.F+F.P] );

C_v.A = min( [C.B+B.A; C.D+D.A; C.G+G.A] );
C_v.B = min( [C.B+B.B; C.D+D.B; C.G+G.B] );
C_v.C = 0;
C_v.D = min( [C.B+B.D; C.D+D.D; C.G+G.D] );
C_v.E = min( [C.B+B.E; C.D+D.E; C.G+G.E] );
C_v.F = min( [C.B+B.F; C.D+D.F; C.G+G.F] );
C_v.G = min( [C.B+B.G; C.D+D.G; C.G+G.G] );
C_v.H = min( [C.B+B.H; C.D+D.H; C.G+G.H] );
C_v.I = min( [C.B+B.I; C.D+D.I; C.G+G.I] );
C_v.J = min( [C.B+B.J; C.D+D.J; C.G+G.J] );
C_v.K = min( [C.B+B.K; C.D+D.K; C.G+G.K] );
C_v.L = min( [C.B+B.L; C.D+D.L; C.G+G.L] );
C_v.M = min( [C.B+B.M; C.D+D.M; C.G+G.M] );
C_v.N = min( [C.B+B.N; C.D+D.N; C.G+G.N] );
C_v.O = min( [C.B+B.O; C.D+D.O; C.G+G.O] );
C_v.P = min( [C.B+B.P; C.D+D.P; C.G+G.P] );

D_v.A = min( [D.C+C.A; D.H+H.A] );
D_v.B = min( [D.C+C.B; D.H+H.B] );
D_v.C = min( [D.C+C.C; D.H+H.C] );
D_v.D = 0;
D_v.E = min( [D.C+C.E; D.H+H.E] );
D_v.F = min( [D.C+C.F; D.H+H.F] );
D_v.G = min( [D.C+C.G; D.H+H.G] );
D_v.H = min( [D.C+C.H; D.H+H.H] );
D_v.I = min( [D.C+C.I; D.H+H.I] );
D_v.J = min( [D.C+C.J; D.H+H.J] );
D_v.K = min( [D.C+C.K; D.H+H.K] );
D_v.L = min( [D.C+C.L; D.H+H.L] );
D_v.M = min( [D.C+C.M; D.H+H.M] );
D_v.N = min( [D.C+C.N; D.H+H.N] );
D_v.O = min( [D.C+C.O; D.H+H.O] );
D_v.P = min( [D.C+C.P; D.H+H.P] );

E_v.A = min( [E.A+A.A; E.F+F.A; E.I+I.A] );
E_v.B = min( [E.A+A.B; E.F+F.B; E.I+I.B] );
E_v.C = min( [E.A+A.C; E.F+F.C; E.I+I.C] );
E_v.D = min( [E.A+A.D; E.F+F.D; E.I+I.D] );
E_v.E = 0;
E_v.F = min( [E.A+A.F; E.F+F.F; E.I+I.F] );
E_v.G = min( [E.A+A.G; E.F+F.G; E.I+I.G] );
E_v.H = min( [E.A+A.H; E.F+F.H; E.I+I.H] );
E_v.I = min( [E.A+A.I; E.F+F.I; E.I+I.I] );
E_v.J = min( [E.A+A.J; E.F+F.J; E.I+I.J] );
E_v.K = min( [E.A+A.K; E.F+F.K; E.I+I.K] );
E_v.L = min( [E.A+A.L; E.F+F.L; E.I+I.L] );
E_v.M = min( [E.A+A.M; E.F+F.M; E.I+I.M] );
E_v.N = min( [E.A+A.N; E.F+F.N; E.I+I.N] );
E_v.O = min( [E.A+A.O; E.F+F.O; E.I+I.O] );
E_v.P = min( [E.A+A.P; E.F+F.P; E.I+I.P] );

F_v.A = min( [F.B+B.A; F.E+E.A; F.G+G.A; F.J+J.A] );
F_v.B = min( [F.B+B.B; F.E+E.B; F.G+G.B; F.J+J.B] );
F_v.C = min( [F.B+B.C; F.E+E.C; F.G+G.C; F.J+J.C] );
F_v.D = min( [F.B+B.D; F.E+E.D; F.G+G.D; F.J+J.D] );
F_v.E = min( [F.B+B.E; F.E+E.E; F.G+G.E; F.J+J.E] );
F_v.F = 0;
F_v.G = min( [F.B+B.G; F.E+E.G; F.G+G.G; F.J+J.G] );
F_v.H = min( [F.B+B.H; F.E+E.H; F.G+G.H; F.J+J.H] );
F_v.I = min( [F.B+B.I; F.E+E.I; F.G+G.I; F.J+J.I] );
F_v.J = min( [F.B+B.J; F.E+E.J; F.G+G.J; F.J+J.J] );
F_v.K = min( [F.B+B.K; F.E+E.K; F.G+G.K; F.J+J.K] );
F_v.L = min( [F.B+B.L; F.E+E.L; F.G+G.L; F.J+J.L] );
F_v.M = min( [F.B+B.M; F.E+E.M; F.G+G.M; F.J+J.M] );
F_v.N = min( [F.B+B.N; F.E+E.N; F.G+G.N; F.J+J.N] );
F_v.O = min( [F.B+B.O; F.E+E.O; F.G+G.O; F.J+J.O] );
F_v.P = min( [F.B+B.P; F.E+E.P; F.G+G.P; F.J+J.P] );

G_v.A = min( [G.C+C.A; G.F+F.A; G.H+H.A; G.K+K.A] );
G_v.B = min( [G.C+C.B; G.F+F.B; G.H+H.B; G.K+K.B] );
G_v.C = min( [G.C+C.C; G.F+F.C; G.H+H.C; G.K+K.C] );
G_v.D = min( [G.C+C.D; G.F+F.D; G.H+H.D; G.K+K.D] );
G_v.E = min( [G.C+C.E; G.F+F.E; G.H+H.E; G.K+K.E] );
G_v.F = min( [G.C+C.F; G.F+F.F; G.H+H.F; G.K+K.F] );
G_v.G = 0;
G_v.H = min( [G.C+C.H; G.F+F.H; G.H+H.H; G.K+K.H] );
G_v.I = min( [G.C+C.I; G.F+F.I; G.H+H.I; G.K+K.I] );
G_v.J = min( [G.C+C.J; G.F+F.J; G.H+H.J; G.K+K.J] );
G_v.K = min( [G.C+C.K; G.F+F.K; G.H+H.K; G.K+K.K] );
G_v.L = min( [G.C+C.L; G.F+F.L; G.H+H.L; G.K+K.L] );
G_v.M = min( [G.C+C.M; G.F+F.M; G.H+H.M; G.K+K.M] );
G_v.N = min( [G.C+C.N; G.F+F.N; G.H+H.N; G.K+K.N] );
G_v.O = min( [G.C+C.O; G.F+F.O; G.H+H.O; G.K+K.O] );
G_v.P = min( [G.C+C.P; G.F+F.P; G.H+H.P; G.K+K.P] );

H_v.A = min( [H.D+D.A; H.G+G.A; H.L+L.A] );
H_v.B = min( [H.D+D.B; H.G+G.B; H.L+L.B] );
H_v.C = min( [H.D+D.C; H.G+G.C; H.L+L.C] );
H_v.D = min( [H.D+D.D; H.G+G.D; H.L+L.D] );
H_v.E = min( [H.D+D.E; H.G+G.E; H.L+L.E] );
H_v.F = min( [H.D+D.F; H.G+G.F; H.L+L.F] );
H_v.G = min( [H.D+D.G; H.G+G.G; H.L+L.G] );
H_v.H = 0;
H_v.I = min( [H.D+D.I; H.G+G.I; H.L+L.I] );
H_v.J = min( [H.D+D.J; H.G+G.J; H.L+L.J] );
H_v.K = min( [H.D+D.K; H.G+G.K; H.L+L.K] );
H_v.L = min( [H.D+D.L; H.G+G.L; H.L+L.L] );
H_v.M = min( [H.D+D.M; H.G+G.M; H.L+L.M] );
H_v.N = min( [H.D+D.N; H.G+G.N; H.L+L.N] );
H_v.O = min( [H.D+D.O; H.G+G.O; H.L+L.O] );
H_v.P = min( [H.D+D.P; H.G+G.P; H.L+L.P] );

I_v.A = min( [I.E+E.A; I.J+J.A; I.M+M.A] );
I_v.B = min( [I.E+E.B; I.J+J.B; I.M+M.B] );
I_v.C = min( [I.E+E.C; I.J+J.C; I.M+M.C] );
I_v.D = min( [I.E+E.D; I.J+J.D; I.M+M.D] );
I_v.E = min( [I.E+E.E; I.J+J.E; I.M+M.E] );
I_v.F = min( [I.E+E.F; I.J+J.F; I.M+M.F] );
I_v.G = min( [I.E+E.G; I.J+J.G; I.M+M.G] );
I_v.H = min( [I.E+E.H; I.J+J.H; I.M+M.H] );
I_v.I = 0;
I_v.J = min( [I.E+E.J; I.J+J.J; I.M+M.J] );
I_v.K = min( [I.E+E.K; I.J+J.K; I.M+M.K] );
I_v.L = min( [I.E+E.L; I.J+J.L; I.M+M.L] );
I_v.M = min( [I.E+E.M; I.J+J.M; I.M+M.M] );
I_v.N = min( [I.E+E.N; I.J+J.N; I.M+M.N] );
I_v.O = min( [I.E+E.O; I.J+J.O; I.M+M.O] );
I_v.P = min( [I.E+E.P; I.J+J.P; I.M+M.P] );

J_v.A = min( [J.F+F.A; J.I+I.A; J.K+K.A; J.N+N.A] );
J_v.B = min( [J.F+F.B; J.I+I.B; J.K+K.B; J.N+N.B] );
J_v.C = min( [J.F+F.C; J.I+I.C; J.K+K.C; J.N+N.C] );
J_v.D = min( [J.F+F.D; J.I+I.D; J.K+K.D; J.N+N.D] );
J_v.E = min( [J.F+F.E; J.I+I.E; J.K+K.E; J.N+N.E] );
J_v.F = min( [J.F+F.F; J.I+I.F; J.K+K.F; J.N+N.F] );
J_v.G = min( [J.F+F.G; J.I+I.G; J.K+K.G; J.N+N.G] );
J_v.H = min( [J.F+F.H; J.I+I.H; J.K+K.H; J.N+N.H] );
J_v.I = min( [J.F+F.I; J.I+I.I; J.K+K.I; J.N+N.I] );
J_v.J = 0;
J_v.K = min( [J.F+F.K; J.I+I.K; J.K+K.K; J.N+N.K] );
J_v.L = min( [J.F+F.L; J.I+I.L; J.K+K.L; J.N+N.L] );
J_v.M = min( [J.F+F.M; J.I+I.M; J.K+K.M; J.N+N.M] );
J_v.N = min( [J.F+F.N; J.I+I.N; J.K+K.N; J.N+N.N] );
J_v.O = min( [J.F+F.O; J.I+I.O; J.K+K.O; J.N+N.O] );
J_v.P = min( [J.F+F.P; J.I+I.P; J.K+K.P; J.N+N.P] );

K_v.A = min( [K.G+G.A; K.J+J.A; K.L+L.A; K.O+O.A] );
K_v.B = min( [K.G+G.B; K.J+J.B; K.L+L.B; K.O+O.B] );
K_v.C = min( [K.G+G.C; K.J+J.C; K.L+L.C; K.O+O.C] );
K_v.D = min( [K.G+G.D; K.J+J.D; K.L+L.D; K.O+O.D] );
K_v.E = min( [K.G+G.E; K.J+J.E; K.L+L.E; K.O+O.E] );
K_v.F = min( [K.G+G.F; K.J+J.F; K.L+L.F; K.O+O.F] );
K_v.G = min( [K.G+G.G; K.J+J.G; K.L+L.G; K.O+O.G] );
K_v.H = min( [K.G+G.H; K.J+J.H; K.L+L.H; K.O+O.H] );
K_v.I = min( [K.G+G.I; K.J+J.I; K.L+L.I; K.O+O.I] );
K_v.J = min( [K.G+G.J; K.J+J.J; K.L+L.J; K.O+O.J] );
K_v.K = 0;
K_v.L = min( [K.G+G.L; K.J+J.L; K.L+L.L; K.O+O.L] );
K_v.M = min( [K.G+G.M; K.J+J.M; K.L+L.M; K.O+O.M] );
K_v.N = min( [K.G+G.N; K.J+J.N; K.L+L.N; K.O+O.N] );
K_v.O = min( [K.G+G.O; K.J+J.O; K.L+L.O; K.O+O.O] );
K_v.P = min( [K.G+G.P; K.J+J.P; K.L+L.P; K.O+O.P] );

L_v.A = min( [L.H+H.A; L.K+K.A; L.P+P.A] );
L_v.B = min( [L.H+H.B; L.K+K.B; L.P+P.B] );
L_v.C = min( [L.H+H.C; L.K+K.C; L.P+P.C] );
L_v.D = min( [L.H+H.D; L.K+K.D; L.P+P.D] );
L_v.E = min( [L.H+H.E; L.K+K.E; L.P+P.E] );
L_v.F = min( [L.H+H.F; L.K+K.F; L.P+P.F] );
L_v.G = min( [L.H+H.G; L.K+K.G; L.P+P.G] );
L_v.H = min( [L.H+H.H; L.K+K.H; L.P+P.H] );
L_v.I = min( [L.H+H.I; L.K+K.I; L.P+P.I] );
L_v.J = min( [L.H+H.J; L.K+K.J; L.P+P.J] );
L_v.K = min( [L.H+H.K; L.K+K.K; L.P+P.K] );
L_v.L = 0;
L_v.M = min( [L.H+H.M; L.K+K.M; L.P+P.M] );
L_v.N = min( [L.H+H.N; L.K+K.N; L.P+P.N] );
L_v.O = min( [L.H+H.O; L.K+K.O; L.P+P.O] );
L_v.P = min( [L.H+H.P; L.K+K.P; L.P+P.P] );

M_v.A = min( [M.I+I.A; M.N+N.A] );
M_v.B = min( [M.I+I.B; M.N+N.B] );
M_v.C = min( [M.I+I.C; M.N+N.C] );
M_v.D = min( [M.I+I.D; M.N+N.D] );
M_v.E = min( [M.I+I.E; M.N+N.E] );
M_v.F = min( [M.I+I.F; M.N+N.F] );
M_v.G = min( [M.I+I.G; M.N+N.G] );
M_v.H = min( [M.I+I.H; M.N+N.H] );
M_v.I = min( [M.I+I.I; M.N+N.I] );
M_v.J = min( [M.I+I.J; M.N+N.J] );
M_v.K = min( [M.I+I.K; M.N+N.K] );
M_v.L = min( [M.I+I.L; M.N+N.L] );
M_v.M = 0;
M_v.N = min( [M.I+I.N; M.N+N.N] );
M_v.O = min( [M.I+I.O; M.N+N.O] );
M_v.P = min( [M.I+I.P; M.N+N.P] );

N_v.A = min( [N.J+J.A; N.M+M.A; N.O+O.A] );
N_v.B = min( [N.J+J.B; N.M+M.B; N.O+O.B] );
N_v.C = min( [N.J+J.C; N.M+M.C; N.O+O.C] );
N_v.D = min( [N.J+J.D; N.M+M.D; N.O+O.D] );
N_v.E = min( [N.J+J.E; N.M+M.E; N.O+O.E] );
N_v.F = min( [N.J+J.F; N.M+M.F; N.O+O.F] );
N_v.G = min( [N.J+J.G; N.M+M.G; N.O+O.G] );
N_v.H = min( [N.J+J.H; N.M+M.H; N.O+O.H] );
N_v.I = min( [N.J+J.I; N.M+M.I; N.O+O.I] );
N_v.J = min( [N.J+J.J; N.M+M.J; N.O+O.J] );
N_v.K = min( [N.J+J.K; N.M+M.K; N.O+O.K] );
N_v.L = min( [N.J+J.L; N.M+M.L; N.O+O.L] );
N_v.M = min( [N.J+J.M; N.M+M.M; N.O+O.M] );
N_v.N = 0;
N_v.O = min( [N.J+J.O; N.M+M.O; N.O+O.O] );
N_v.P = min( [N.J+J.P; N.M+M.P; N.O+O.P] );

O_v.A = min( [O.K+K.A; O.N+N.A; O.P+P.A] );
O_v.B = min( [O.K+K.B; O.N+N.B; O.P+P.B] );
O_v.C = min( [O.K+K.C; O.N+N.C; O.P+P.C] );
O_v.D = min( [O.K+K.D; O.N+N.D; O.P+P.D] );
O_v.E = min( [O.K+K.E; O.N+N.E; O.P+P.E] );
O_v.F = min( [O.K+K.F; O.N+N.F; O.P+P.F] );
O_v.G = min( [O.K+K.G; O.N+N.G; O.P+P.G] );
O_v.H = min( [O.K+K.H; O.N+N.H; O.P+P.H] );
O_v.I = min( [O.K+K.I; O.N+N.I; O.P+P.I] );
O_v.J = min( [O.K+K.J; O.N+N.J; O.P+P.J] );
O_v.K = min( [O.K+K.K; O.N+N.K; O.P+P.K] );
O_v.L = min( [O.K+K.L; O.N+N.L; O.P+P.L] );
O_v.M = min( [O.K+K.M; O.N+N.M; O.P+P.M] );
O_v.N = min( [O.K+K.N; O.N+N.N; O.P+P.N] );
O_v.O = 0;
O_v.P = min( [O.K+K.P; O.N+N.P; O.P+P.P] );

P_v.A = min( [P.L+L.A; P.O+O.A] );
P_v.B = min( [P.L+L.B; P.O+O.B] );
P_v.C = min( [P.L+L.C; P.O+O.C] );
P_v.D = min( [P.L+L.D; P.O+O.D] );
P_v.E = min( [P.L+L.E; P.O+O.E] );
P_v.F = min( [P.L+L.F; P.O+O.F] );
P_v.G = min( [P.L+L.G; P.O+O.G] );
P_v.H = min( [P.L+L.H; P.O+O.H] );
P_v.I = min( [P.L+L.I; P.O+O.I] );
P_v.J = min( [P.L+L.J; P.O+O.J] );
P_v.K = min( [P.L+L.K; P.O+O.K] );
P_v.L = min( [P.L+L.L; P.O+O.L] );
P_v.M = min( [P.L+L.M; P.O+O.M] );
P_v.N = min( [P.L+L.N; P.O+O.N] );
P_v.O = min( [P.L+L.O; P.O+O.O] );
P_v.P = 0;

A_v
B_v
C_v
D_v
E_v
F_v
G_v
H_v
I_v
J_v
K_v
L_v
M_v
N_v
O_v
P_v

%% functions
%{
function bellman-Ford
for node.neighbors
    node_vector.dist = min( [   cost_node-neighbor1 + dist_neighbor1-desired
                     ; cost_node-neighbor2 + dist_neighbor2-desired
                     ; cost_node-neighbor3 + dist_neighbor3-desired
%}
% function [X_v] = bellmanFord( [X] )
%     X_v = X;
% 
%     for k=1:numel( [X.neighbors] )
%         for des = 'A':'P'
% 
%             % corner node
%             if ( [ numel( [X.neighbors] )==2 ] )
%                 next1 = X.neighbors( [1] );
%                 next2 = X.neighbors( [2] );
% 
%                 X_v.des = min( [ X.( [next1] ) + eval( [next1.des] ) ;...
%                                X.( [next2] ) + eval( [next2.des] ) ] );
% 
%             % edge node
%             elseif ( [ numel( [X.neighbors] )==3 ] )
%                 next1 = X.neighbors( [1] );
%                 next2 = X.neighbors( [2] );
%                 next3 = X.neighbors( [3] );
% 
%                 X_v.des = min( [ X.( [next1] ) + eval( [next1.des] ) ;...
%                                X.( [next2] ) + eval( [next2.des] ) ;...
%                                X.( [next3] ) + eval( [next3.des] ) ] );
% 
%             % middle node
%             elseif ( [ numel( [X.neighbors] )==4 ] )
%                 next1 = X.neighbors( [1] );
%                 next2 = X.neighbors( [2] );
%                 next3 = X.neighbors( [3] );
%                 next4 = X.neighbors( [4] );
% 
%                 X_v.des = min( [ X.( [next1] ) + eval( [next1.des] ) ;...
%                                X.( [next2] ) + eval( [next2.des] ) ;...
%                                X.( [next3] ) + eval( [next3.des] ) ;...
%                                X.( [next4] ) + eval( [next4.des] ) ] );
%             end
% 
%         end
% 
%     end
% 
% end

% function [X_v] = bellmanFord( [X] )
%     X_v = X;
% 
%     % Iterate over each neighboring node
%     for k = 1:numel( [X.neighbors] )
%         % Get the name of the current neighboring node
%         next = X.neighbors( [k] );
% 
%         % Compute the new distance for the current destination node
%         newDistance = X.( [next] ) + eval( [[next '.des']] );
% 
%         % Update the destination node's distance in X_v
%         X_v.des = min( [X_v.des; newDistance] );
%     end
% end
