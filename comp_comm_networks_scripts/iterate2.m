A_v.A = 0;
A_v.B = min( [A_v.B+B_v.B; A_v.E+E_v.B] );
A_v.C = min( [A_v.B+B_v.C; A_v.E+E_v.C] );
A_v.D = min( [A_v.B+B_v.D; A_v.E+E_v.D] );
A_v.E = min( [A_v.B+B_v.E; A_v.E+E_v.E] );
A_v.F = min( [A_v.B+B_v.F; A_v.E+E_v.F] );
A_v.G = min( [A_v.B+B_v.G; A_v.E+E_v.G] );
A_v.H = min( [A_v.B+B_v.H; A_v.E+E_v.H] );
A_v.I = min( [A_v.B+B_v.I; A_v.E+E_v.I] );
A_v.J = min( [A_v.B+B_v.J; A_v.E+E_v.J] );
A_v.K = min( [A_v.B+B_v.K; A_v.E+E_v.K] );
A_v.L = min( [A_v.B+B_v.L; A_v.E+E_v.L] );
A_v.M = min( [A_v.B+B_v.M; A_v.E+E_v.M] );
A_v.N = min( [A_v.B+B_v.N; A_v.E+E_v.N] );
A_v.O = min( [A_v.B+B_v.O; A_v.E+E_v.O] );
A_v.P = min( [A_v.B+B_v.P; A_v.E+E_v.P] );

B_v.A = min( [B_v.A+A_v.A; B_v.C+C_v.A; B_v.F+F_v.A] );
B_v.B = 0;
B_v.C = min( [B_v.A+A_v.C; B_v.C+C_v.C; B_v.F+F_v.C] );
B_v.D = min( [B_v.A+A_v.D; B_v.C+C_v.D; B_v.F+F_v.D] );
B_v.E = min( [B_v.A+A_v.E; B_v.C+C_v.E; B_v.F+F_v.E] );
B_v.F = min( [B_v.A+A_v.F; B_v.C+C_v.F; B_v.F+F_v.F] );
B_v.G = min( [B_v.A+A_v.G; B_v.C+C_v.G; B_v.F+F_v.G] );
B_v.H = min( [B_v.A+A_v.H; B_v.C+C_v.H; B_v.F+F_v.H] );
B_v.I = min( [B_v.A+A_v.I; B_v.C+C_v.I; B_v.F+F_v.I] );
B_v.J = min( [B_v.A+A_v.J; B_v.C+C_v.J; B_v.F+F_v.J] );
B_v.K = min( [B_v.A+A_v.K; B_v.C+C_v.K; B_v.F+F_v.K] );
B_v.L = min( [B_v.A+A_v.L; B_v.C+C_v.L; B_v.F+F_v.L] );
B_v.M = min( [B_v.A+A_v.M; B_v.C+C_v.M; B_v.F+F_v.M] );
B_v.N = min( [B_v.A+A_v.N; B_v.C+C_v.N; B_v.F+F_v.N] );
B_v.O = min( [B_v.A+A_v.O; B_v.C+C_v.O; B_v.F+F_v.O] );
B_v.P = min( [B_v.A+A_v.P; B_v.C+C_v.P; B_v.F+F_v.P] );

C_v.A = min( [C_v.B+B_v.A; C_v.D+D_v.A; C_v.G+G_v.A] );
C_v.B = min( [C_v.B+B_v.B; C_v.D+D_v.B; C_v.G+G_v.B] );
C_v.C = 0;
C_v.D = min( [C_v.B+B_v.D; C_v.D+D_v.D; C_v.G+G_v.D] );
C_v.E = min( [C_v.B+B_v.E; C_v.D+D_v.E; C_v.G+G_v.E] );
C_v.F = min( [C_v.B+B_v.F; C_v.D+D_v.F; C_v.G+G_v.F] );
C_v.G = min( [C_v.B+B_v.G; C_v.D+D_v.G; C_v.G+G_v.G] );
C_v.H = min( [C_v.B+B_v.H; C_v.D+D_v.H; C_v.G+G_v.H] );
C_v.I = min( [C_v.B+B_v.I; C_v.D+D_v.I; C_v.G+G_v.I] );
C_v.J = min( [C_v.B+B_v.J; C_v.D+D_v.J; C_v.G+G_v.J] );
C_v.K = min( [C_v.B+B_v.K; C_v.D+D_v.K; C_v.G+G_v.K] );
C_v.L = min( [C_v.B+B_v.L; C_v.D+D_v.L; C_v.G+G_v.L] );
C_v.M = min( [C_v.B+B_v.M; C_v.D+D_v.M; C_v.G+G_v.M] );
C_v.N = min( [C_v.B+B_v.N; C_v.D+D_v.N; C_v.G+G_v.N] );
C_v.O = min( [C_v.B+B_v.O; C_v.D+D_v.O; C_v.G+G_v.O] );
C_v.P = min( [C_v.B+B_v.P; C_v.D+D_v.P; C_v.G+G_v.P] );

D_v.A = min( [D_v.C+C_v.A; D_v.H+H_v.A] );
D_v.B = min( [D_v.C+C_v.B; D_v.H+H_v.B] );
D_v.C = min( [D_v.C+C_v.C; D_v.H+H_v.C] );
D_v.D = 0;
D_v.E = min( [D_v.C+C_v.E; D_v.H+H_v.E] );
D_v.F = min( [D_v.C+C_v.F; D_v.H+H_v.F] );
D_v.G = min( [D_v.C+C_v.G; D_v.H+H_v.G] );
D_v.H = min( [D_v.C+C_v.H; D_v.H+H_v.H] );
D_v.I = min( [D_v.C+C_v.I; D_v.H+H_v.I] );
D_v.J = min( [D_v.C+C_v.J; D_v.H+H_v.J] );
D_v.K = min( [D_v.C+C_v.K; D_v.H+H_v.K] );
D_v.L = min( [D_v.C+C_v.L; D_v.H+H_v.L] );
D_v.M = min( [D_v.C+C_v.M; D_v.H+H_v.M] );
D_v.N = min( [D_v.C+C_v.N; D_v.H+H_v.N] );
D_v.O = min( [D_v.C+C_v.O; D_v.H+H_v.O] );
D_v.P = min( [D_v.C+C_v.P; D_v.H+H_v.P] );

E_v.A = min( [E_v.A+A_v.A; E_v.F+F_v.A; E_v.I+I_v.A] );
E_v.B = min( [E_v.A+A_v.B; E_v.F+F_v.B; E_v.I+I_v.B] );
E_v.C = min( [E_v.A+A_v.C; E_v.F+F_v.C; E_v.I+I_v.C] );
E_v.D = min( [E_v.A+A_v.D; E_v.F+F_v.D; E_v.I+I_v.D] );
E_v.E = 0;
E_v.F = min( [E_v.A+A_v.F; E_v.F+F_v.F; E_v.I+I_v.F] );
E_v.G = min( [E_v.A+A_v.G; E_v.F+F_v.G; E_v.I+I_v.G] );
E_v.H = min( [E_v.A+A_v.H; E_v.F+F_v.H; E_v.I+I_v.H] );
E_v.I = min( [E_v.A+A_v.I; E_v.F+F_v.I; E_v.I+I_v.I] );
E_v.J = min( [E_v.A+A_v.J; E_v.F+F_v.J; E_v.I+I_v.J] );
E_v.K = min( [E_v.A+A_v.K; E_v.F+F_v.K; E_v.I+I_v.K] );
E_v.L = min( [E_v.A+A_v.L; E_v.F+F_v.L; E_v.I+I_v.L] );
E_v.M = min( [E_v.A+A_v.M; E_v.F+F_v.M; E_v.I+I_v.M] );
E_v.N = min( [E_v.A+A_v.N; E_v.F+F_v.N; E_v.I+I_v.N] );
E_v.O = min( [E_v.A+A_v.O; E_v.F+F_v.O; E_v.I+I_v.O] );
E_v.P = min( [E_v.A+A_v.P; E_v.F+F_v.P; E_v.I+I_v.P] );

F_v.A = min( [F_v.B+B_v.A; F_v.E+E_v.A; F_v.G+G_v.A; F_v.J+J_v.A] );
F_v.B = min( [F_v.B+B_v.B; F_v.E+E_v.B; F_v.G+G_v.B; F_v.J+J_v.B] );
F_v.C = min( [F_v.B+B_v.C; F_v.E+E_v.C; F_v.G+G_v.C; F_v.J+J_v.C] );
F_v.D = min( [F_v.B+B_v.D; F_v.E+E_v.D; F_v.G+G_v.D; F_v.J+J_v.D] );
F_v.E = min( [F_v.B+B_v.E; F_v.E+E_v.E; F_v.G+G_v.E; F_v.J+J_v.E] );
F_v.F = 0;
F_v.G = min( [F_v.B+B_v.G; F_v.E+E_v.G; F_v.G+G_v.G; F_v.J+J_v.G] );
F_v.H = min( [F_v.B+B_v.H; F_v.E+E_v.H; F_v.G+G_v.H; F_v.J+J_v.H] );
F_v.I = min( [F_v.B+B_v.I; F_v.E+E_v.I; F_v.G+G_v.I; F_v.J+J_v.I] );
F_v.J = min( [F_v.B+B_v.J; F_v.E+E_v.J; F_v.G+G_v.J; F_v.J+J_v.J] );
F_v.K = min( [F_v.B+B_v.K; F_v.E+E_v.K; F_v.G+G_v.K; F_v.J+J_v.K] );
F_v.L = min( [F_v.B+B_v.L; F_v.E+E_v.L; F_v.G+G_v.L; F_v.J+J_v.L] );
F_v.M = min( [F_v.B+B_v.M; F_v.E+E_v.M; F_v.G+G_v.M; F_v.J+J_v.M] );
F_v.N = min( [F_v.B+B_v.N; F_v.E+E_v.N; F_v.G+G_v.N; F_v.J+J_v.N] );
F_v.O = min( [F_v.B+B_v.O; F_v.E+E_v.O; F_v.G+G_v.O; F_v.J+J_v.O] );
F_v.P = min( [F_v.B+B_v.P; F_v.E+E_v.P; F_v.G+G_v.P; F_v.J+J_v.P] );

G_v.A = min( [G_v.C+C_v.A; G_v.F+F_v.A; G_v.H+H_v.A; G_v.K+K_v.A] );
G_v.B = min( [G_v.C+C_v.B; G_v.F+F_v.B; G_v.H+H_v.B; G_v.K+K_v.B] );
G_v.C = min( [G_v.C+C_v.C; G_v.F+F_v.C; G_v.H+H_v.C; G_v.K+K_v.C] );
G_v.D = min( [G_v.C+C_v.D; G_v.F+F_v.D; G_v.H+H_v.D; G_v.K+K_v.D] );
G_v.E = min( [G_v.C+C_v.E; G_v.F+F_v.E; G_v.H+H_v.E; G_v.K+K_v.E] );
G_v.F = min( [G_v.C+C_v.F; G_v.F+F_v.F; G_v.H+H_v.F; G_v.K+K_v.F] );
G_v.G = 0;
G_v.H = min( [G_v.C+C_v.H; G_v.F+F_v.H; G_v.H+H_v.H; G_v.K+K_v.H] );
G_v.I = min( [G_v.C+C_v.I; G_v.F+F_v.I; G_v.H+H_v.I; G_v.K+K_v.I] );
G_v.J = min( [G_v.C+C_v.J; G_v.F+F_v.J; G_v.H+H_v.J; G_v.K+K_v.J] );
G_v.K = min( [G_v.C+C_v.K; G_v.F+F_v.K; G_v.H+H_v.K; G_v.K+K_v.K] );
G_v.L = min( [G_v.C+C_v.L; G_v.F+F_v.L; G_v.H+H_v.L; G_v.K+K_v.L] );
G_v.M = min( [G_v.C+C_v.M; G_v.F+F_v.M; G_v.H+H_v.M; G_v.K+K_v.M] );
G_v.N = min( [G_v.C+C_v.N; G_v.F+F_v.N; G_v.H+H_v.N; G_v.K+K_v.N] );
G_v.O = min( [G_v.C+C_v.O; G_v.F+F_v.O; G_v.H+H_v.O; G_v.K+K_v.O] );
G_v.P = min( [G_v.C+C_v.P; G_v.F+F_v.P; G_v.H+H_v.P; G_v.K+K_v.P] );

H_v.A = min( [H_v.D+D_v.A; H_v.G+G_v.A; H_v.L+L_v.A] );
H_v.B = min( [H_v.D+D_v.B; H_v.G+G_v.B; H_v.L+L_v.B] );
H_v.C = min( [H_v.D+D_v.C; H_v.G+G_v.C; H_v.L+L_v.C] );
H_v.D = min( [H_v.D+D_v.D; H_v.G+G_v.D; H_v.L+L_v.D] );
H_v.E = min( [H_v.D+D_v.E; H_v.G+G_v.E; H_v.L+L_v.E] );
H_v.F = min( [H_v.D+D_v.F; H_v.G+G_v.F; H_v.L+L_v.F] );
H_v.G = min( [H_v.D+D_v.G; H_v.G+G_v.G; H_v.L+L_v.G] );
H_v.H = 0;
H_v.I = min( [H_v.D+D_v.I; H_v.G+G_v.I; H_v.L+L_v.I] );
H_v.J = min( [H_v.D+D_v.J; H_v.G+G_v.J; H_v.L+L_v.J] );
H_v.K = min( [H_v.D+D_v.K; H_v.G+G_v.K; H_v.L+L_v.K] );
H_v.L = min( [H_v.D+D_v.L; H_v.G+G_v.L; H_v.L+L_v.L] );
H_v.M = min( [H_v.D+D_v.M; H_v.G+G_v.M; H_v.L+L_v.M] );
H_v.N = min( [H_v.D+D_v.N; H_v.G+G_v.N; H_v.L+L_v.N] );
H_v.O = min( [H_v.D+D_v.O; H_v.G+G_v.O; H_v.L+L_v.O] );
H_v.P = min( [H_v.D+D_v.P; H_v.G+G_v.P; H_v.L+L_v.P] );

I_v.A = min( [I_v.E+E_v.A; I_v.J+J_v.A; I_v.M+M_v.A] );
I_v.B = min( [I_v.E+E_v.B; I_v.J+J_v.B; I_v.M+M_v.B] );
I_v.C = min( [I_v.E+E_v.C; I_v.J+J_v.C; I_v.M+M_v.C] );
I_v.D = min( [I_v.E+E_v.D; I_v.J+J_v.D; I_v.M+M_v.D] );
I_v.E = min( [I_v.E+E_v.E; I_v.J+J_v.E; I_v.M+M_v.E] );
I_v.F = min( [I_v.E+E_v.F; I_v.J+J_v.F; I_v.M+M_v.F] );
I_v.G = min( [I_v.E+E_v.G; I_v.J+J_v.G; I_v.M+M_v.G] );
I_v.H = min( [I_v.E+E_v.H; I_v.J+J_v.H; I_v.M+M_v.H] );
I_v.I = 0;
I_v.J = min( [I_v.E+E_v.J; I_v.J+J_v.J; I_v.M+M_v.J] );
I_v.K = min( [I_v.E+E_v.K; I_v.J+J_v.K; I_v.M+M_v.K] );
I_v.L = min( [I_v.E+E_v.L; I_v.J+J_v.L; I_v.M+M_v.L] );
I_v.M = min( [I_v.E+E_v.M; I_v.J+J_v.M; I_v.M+M_v.M] );
I_v.N = min( [I_v.E+E_v.N; I_v.J+J_v.N; I_v.M+M_v.N] );
I_v.O = min( [I_v.E+E_v.O; I_v.J+J_v.O; I_v.M+M_v.O] );
I_v.P = min( [I_v.E+E_v.P; I_v.J+J_v.P; I_v.M+M_v.P] );

J_v.A = min( [J_v.F+F_v.A; J_v.I+I_v.A; J_v.K+K_v.A; J_v.N+N_v.A] );
J_v.B = min( [J_v.F+F_v.B; J_v.I+I_v.B; J_v.K+K_v.B; J_v.N+N_v.B] );
J_v.C = min( [J_v.F+F_v.C; J_v.I+I_v.C; J_v.K+K_v.C; J_v.N+N_v.C] );
J_v.D = min( [J_v.F+F_v.D; J_v.I+I_v.D; J_v.K+K_v.D; J_v.N+N_v.D] );
J_v.E = min( [J_v.F+F_v.E; J_v.I+I_v.E; J_v.K+K_v.E; J_v.N+N_v.E] );
J_v.F = min( [J_v.F+F_v.F; J_v.I+I_v.F; J_v.K+K_v.F; J_v.N+N_v.F] );
J_v.G = min( [J_v.F+F_v.G; J_v.I+I_v.G; J_v.K+K_v.G; J_v.N+N_v.G] );
J_v.H = min( [J_v.F+F_v.H; J_v.I+I_v.H; J_v.K+K_v.H; J_v.N+N_v.H] );
J_v.I = min( [J_v.F+F_v.I; J_v.I+I_v.I; J_v.K+K_v.I; J_v.N+N_v.I] );
J_v.J = 0;
J_v.K = min( [J_v.F+F_v.K; J_v.I+I_v.K; J_v.K+K_v.K; J_v.N+N_v.K] );
J_v.L = min( [J_v.F+F_v.L; J_v.I+I_v.L; J_v.K+K_v.L; J_v.N+N_v.L] );
J_v.M = min( [J_v.F+F_v.M; J_v.I+I_v.M; J_v.K+K_v.M; J_v.N+N_v.M] );
J_v.N = min( [J_v.F+F_v.N; J_v.I+I_v.N; J_v.K+K_v.N; J_v.N+N_v.N] );
J_v.O = min( [J_v.F+F_v.O; J_v.I+I_v.O; J_v.K+K_v.O; J_v.N+N_v.O] );
J_v.P = min( [J_v.F+F_v.P; J_v.I+I_v.P; J_v.K+K_v.P; J_v.N+N_v.P] );

K_v.A = min( [K_v.G+G_v.A; K_v.J+J_v.A; K_v.L+L_v.A; K_v.O+O_v.A] );
K_v.B = min( [K_v.G+G_v.B; K_v.J+J_v.B; K_v.L+L_v.B; K_v.O+O_v.B] );
K_v.C = min( [K_v.G+G_v.C; K_v.J+J_v.C; K_v.L+L_v.C; K_v.O+O_v.C] );
K_v.D = min( [K_v.G+G_v.D; K_v.J+J_v.D; K_v.L+L_v.D; K_v.O+O_v.D] );
K_v.E = min( [K_v.G+G_v.E; K_v.J+J_v.E; K_v.L+L_v.E; K_v.O+O_v.E] );
K_v.F = min( [K_v.G+G_v.F; K_v.J+J_v.F; K_v.L+L_v.F; K_v.O+O_v.F] );
K_v.G = min( [K_v.G+G_v.G; K_v.J+J_v.G; K_v.L+L_v.G; K_v.O+O_v.G] );
K_v.H = min( [K_v.G+G_v.H; K_v.J+J_v.H; K_v.L+L_v.H; K_v.O+O_v.H] );
K_v.I = min( [K_v.G+G_v.I; K_v.J+J_v.I; K_v.L+L_v.I; K_v.O+O_v.I] );
K_v.J = min( [K_v.G+G_v.J; K_v.J+J_v.J; K_v.L+L_v.J; K_v.O+O_v.J] );
K_v.K = 0;
K_v.L = min( [K_v.G+G_v.L; K_v.J+J_v.L; K_v.L+L_v.L; K_v.O+O_v.L] );
K_v.M = min( [K_v.G+G_v.M; K_v.J+J_v.M; K_v.L+L_v.M; K_v.O+O_v.M] );
K_v.N = min( [K_v.G+G_v.N; K_v.J+J_v.N; K_v.L+L_v.N; K_v.O+O_v.N] );
K_v.O = min( [K_v.G+G_v.O; K_v.J+J_v.O; K_v.L+L_v.O; K_v.O+O_v.O] );
K_v.P = min( [K_v.G+G_v.P; K_v.J+J_v.P; K_v.L+L_v.P; K_v.O+O_v.P] );

L_v.A = min( [L_v.H+H_v.A; L_v.K+K_v.A; L_v.P+P_v.A] );
L_v.B = min( [L_v.H+H_v.B; L_v.K+K_v.B; L_v.P+P_v.B] );
L_v.C = min( [L_v.H+H_v.C; L_v.K+K_v.C; L_v.P+P_v.C] );
L_v.D = min( [L_v.H+H_v.D; L_v.K+K_v.D; L_v.P+P_v.D] );
L_v.E = min( [L_v.H+H_v.E; L_v.K+K_v.E; L_v.P+P_v.E] );
L_v.F = min( [L_v.H+H_v.F; L_v.K+K_v.F; L_v.P+P_v.F] );
L_v.G = min( [L_v.H+H_v.G; L_v.K+K_v.G; L_v.P+P_v.G] );
L_v.H = min( [L_v.H+H_v.H; L_v.K+K_v.H; L_v.P+P_v.H] );
L_v.I = min( [L_v.H+H_v.I; L_v.K+K_v.I; L_v.P+P_v.I] );
L_v.J = min( [L_v.H+H_v.J; L_v.K+K_v.J; L_v.P+P_v.J] );
L_v.K = min( [L_v.H+H_v.K; L_v.K+K_v.K; L_v.P+P_v.K] );
L_v.L = 0;
L_v.M = min( [L_v.H+H_v.M; L_v.K+K_v.M; L_v.P+P_v.M] );
L_v.N = min( [L_v.H+H_v.N; L_v.K+K_v.N; L_v.P+P_v.N] );
L_v.O = min( [L_v.H+H_v.O; L_v.K+K_v.O; L_v.P+P_v.O] );
L_v.P = min( [L_v.H+H_v.P; L_v.K+K_v.P; L_v.P+P_v.P] );

M_v.A = min( [M_v.I+I_v.A; M_v.N+N_v.A] );
M_v.B = min( [M_v.I+I_v.B; M_v.N+N_v.B] );
M_v.C = min( [M_v.I+I_v.C; M_v.N+N_v.C] );
M_v.D = min( [M_v.I+I_v.D; M_v.N+N_v.D] );
M_v.E = min( [M_v.I+I_v.E; M_v.N+N_v.E] );
M_v.F = min( [M_v.I+I_v.F; M_v.N+N_v.F] );
M_v.G = min( [M_v.I+I_v.G; M_v.N+N_v.G] );
M_v.H = min( [M_v.I+I_v.H; M_v.N+N_v.H] );
M_v.I = min( [M_v.I+I_v.I; M_v.N+N_v.I] );
M_v.J = min( [M_v.I+I_v.J; M_v.N+N_v.J] );
M_v.K = min( [M_v.I+I_v.K; M_v.N+N_v.K] );
M_v.L = min( [M_v.I+I_v.L; M_v.N+N_v.L] );
M_v.M = 0;
M_v.N = min( [M_v.I+I_v.N; M_v.N+N_v.N] );
M_v.O = min( [M_v.I+I_v.O; M_v.N+N_v.O] );
M_v.P = min( [M_v.I+I_v.P; M_v.N+N_v.P] );

N_v.A = min( [N.J+J_v.A; N.M+M_v.A; N.O+O_v.A] );
N_v.B = min( [N.J+J_v.B; N.M+M_v.B; N.O+O_v.B] );
N_v.C = min( [N.J+J_v.C; N.M+M_v.C; N.O+O_v.C] );
N_v.D = min( [N.J+J_v.D; N.M+M_v.D; N.O+O_v.D] );
N_v.E = min( [N.J+J_v.E; N.M+M_v.E; N.O+O_v.E] );
N_v.F = min( [N.J+J_v.F; N.M+M_v.F; N.O+O_v.F] );
N_v.G = min( [N.J+J_v.G; N.M+M_v.G; N.O+O_v.G] );
N_v.H = min( [N.J+J_v.H; N.M+M_v.H; N.O+O_v.H] );
N_v.I = min( [N.J+J_v.I; N.M+M_v.I; N.O+O_v.I] );
N_v.J = min( [N.J+J_v.J; N.M+M_v.J; N.O+O_v.J] );
N_v.K = min( [N.J+J_v.K; N.M+M_v.K; N.O+O_v.K] );
N_v.L = min( [N.J+J_v.L; N.M+M_v.L; N.O+O_v.L] );
N_v.M = min( [N.J+J_v.M; N.M+M_v.M; N.O+O_v.M] );
N_v.N = 0;
N_v.O = min( [N.J+J_v.O; N.M+M_v.O; N.O+O_v.O] );
N_v.P = min( [N.J+J_v.P; N.M+M_v.P; N.O+O_v.P] );

O_v.A = min( [O_v.K+K_v.A; O_v.N+N_v.A; O_v.P+P_v.A] );
O_v.B = min( [O_v.K+K_v.B; O_v.N+N_v.B; O_v.P+P_v.B] );
O_v.C = min( [O_v.K+K_v.C; O_v.N+N_v.C; O_v.P+P_v.C] );
O_v.D = min( [O_v.K+K_v.D; O_v.N+N_v.D; O_v.P+P_v.D] );
O_v.E = min( [O_v.K+K_v.E; O_v.N+N_v.E; O_v.P+P_v.E] );
O_v.F = min( [O_v.K+K_v.F; O_v.N+N_v.F; O_v.P+P_v.F] );
O_v.G = min( [O_v.K+K_v.G; O_v.N+N_v.G; O_v.P+P_v.G] );
O_v.H = min( [O_v.K+K_v.H; O_v.N+N_v.H; O_v.P+P_v.H] );
O_v.I = min( [O_v.K+K_v.I; O_v.N+N_v.I; O_v.P+P_v.I] );
O_v.J = min( [O_v.K+K_v.J; O_v.N+N_v.J; O_v.P+P_v.J] );
O_v.K = min( [O_v.K+K_v.K; O_v.N+N_v.K; O_v.P+P_v.K] );
O_v.L = min( [O_v.K+K_v.L; O_v.N+N_v.L; O_v.P+P_v.L] );
O_v.M = min( [O_v.K+K_v.M; O_v.N+N_v.M; O_v.P+P_v.M] );
O_v.N = min( [O_v.K+K_v.N; O_v.N+N_v.N; O_v.P+P_v.N] );
O_v.O = 0;
O_v.P = min( [O_v.K+K_v.P; O_v.N+N_v.P; O_v.P+P_v.P] );

P_v.A = min( [P_v.L+L_v.A; P_v.O+O_v.A] );
P_v.B = min( [P_v.L+L_v.B; P_v.O+O_v.B] );
P_v.C = min( [P_v.L+L_v.C; P_v.O+O_v.C] );
P_v.D = min( [P_v.L+L_v.D; P_v.O+O_v.D] );
P_v.E = min( [P_v.L+L_v.E; P_v.O+O_v.E] );
P_v.F = min( [P_v.L+L_v.F; P_v.O+O_v.F] );
P_v.G = min( [P_v.L+L_v.G; P_v.O+O_v.G] );
P_v.H = min( [P_v.L+L_v.H; P_v.O+O_v.H] );
P_v.I = min( [P_v.L+L_v.I; P_v.O+O_v.I] );
P_v.J = min( [P_v.L+L_v.J; P_v.O+O_v.J] );
P_v.K = min( [P_v.L+L_v.K; P_v.O+O_v.K] );
P_v.L = min( [P_v.L+L_v.L; P_v.O+O_v.L] );
P_v.M = min( [P_v.L+L_v.M; P_v.O+O_v.M] );
P_v.N = min( [P_v.L+L_v.N; P_v.O+O_v.N] );
P_v.O = min( [P_v.L+L_v.O; P_v.O+O_v.O] );
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