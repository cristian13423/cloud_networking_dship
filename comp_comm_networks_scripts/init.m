clear all; clc; close all;

%% initialization
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

% N = 16;
% e_N = 24;

% assign all network costs and neighbors of each node
%% row 1
A.A = 0;
A.B = randi([1,10],1);
A.C = inf;
A.D = inf;
A.E = randi([1,10],1);
A.F = inf;
A.G = inf;
A.H = inf;
A.I = inf;
A.J = inf;
A.K = inf;
A.L = inf;
A.M = inf;
A.N = inf;
A.O = inf;
A.P = inf;

B.A = A.B;
B.B = 0;
B.C = randi([1,10],1);
B.D = inf;
B.E = inf;
B.F = randi([1,10],1);
B.G = inf;
B.H = inf;
B.I = inf;
B.J = inf;
B.K = inf;
B.L = inf;
B.M = inf;
B.N = inf;
B.O = inf;
B.P = inf;

C.A = inf;
C.B = B.C;
C.C = 0;
C.D = randi([1,10],1);
C.E = inf;
C.F = inf;
C.G = randi([1,10],1);
C.H = inf;
C.I = inf;
C.J = inf;
C.K = inf;
C.L = inf;
C.M = inf;
C.N = inf;
C.O = inf;
C.P = inf;

D.A = inf;
D.B = inf;
D.C = C.D;
D.D = 0;
D.E = inf;
D.F = inf;
D.G = inf;
D.H = randi([1,10],1);
D.I = inf;
D.J = inf;
D.K = inf;
D.L = inf;
D.M = inf;
D.N = inf;
D.O = inf;
D.P = inf;

%% row 2
E.A = A.E;
E.B = inf;
E.C = inf;
E.D = inf;
E.E = 0;
E.F = randi([1,10],1);
E.G = inf;
E.H = inf;
E.I = randi([1,10],1);
E.J = inf;
E.K = inf;
E.L = inf;
E.M = inf;
E.N = inf;
E.O = inf;
E.P = inf;

F.A = inf;
F.B = B.F;
F.C = inf;
F.D = inf;
F.E = E.F;
F.F = 0;
F.G = randi([1,10],1);
F.H = inf;
F.I = inf;
F.J = randi([1,10],1);
F.K = inf;
F.L = inf;
F.M = inf;
F.N = inf;
F.O = inf;
F.P = inf;

G.A = inf;
G.B = inf;
G.C = C.G;
G.D = inf;
G.E = inf;
G.F = F.G;
G.G = 0;
G.H = randi([1,10],1);
G.I = inf;
G.J = inf;
G.K = randi([1,10],1);
G.L = inf;
G.M = inf;
G.N = inf;
G.O = inf;
G.P = inf;

H.A = inf;
H.B = inf;
H.C = inf;
H.D = D.H;
H.E = inf;
H.F = inf;
H.G = G.H;
H.H = 0;
H.I = inf;
H.J = inf;
H.K = inf;
H.L = randi([1,10],1);
H.M = inf;
H.N = inf;
H.O = inf;
H.P = inf;

%% row 3
I.A = inf;
I.B = inf;
I.C = inf;
I.D = inf;
I.E = E.I;
I.F = inf;
I.G = inf;
I.H = inf;
I.I = 0;
I.J = randi([1,10],1);
I.K = inf;
I.L = inf;
I.M = randi([1,10],1);
I.N = inf;
I.O = inf;
I.P = inf;

J.A = inf;
J.B = inf;
J.C = inf;
J.D = inf;
J.E = inf;
J.F = F.J;
J.G = inf;
J.H = inf;
J.I = I.J;
J.J = 0;
J.K = randi([1,10],1);
J.L = inf;
J.M = inf;
J.N = randi([1,10],1);
J.O = inf;
J.P = inf;

K.A = inf;
K.B = inf;
K.C = inf;
K.D = inf;
K.E = inf;
K.F = inf;
K.G = G.K;
K.H = inf;
K.I = inf;
K.J = J.K;
K.K = 0;
K.L = randi([1,10],1);
K.M = inf;
K.N = inf;
K.O = randi([1,10],1);
K.P = inf;

L.A = inf;
L.B = inf;
L.C = inf;
L.D = inf;
L.E = inf;
L.F = inf;
L.G = inf;
L.H = H.L;
L.I = inf;
L.J = inf;
L.K = K.L;
L.L = 0;
L.M = inf;
L.N = inf;
L.O = inf;
L.P = randi([1,10],1);

%% row 4
M.A = inf;
M.B = inf;
M.C = inf;
M.D = inf;
M.E = inf;
M.F = inf;
M.G = inf;
M.H = inf;
M.I = I.M;
M.J = inf;
M.K = inf;
M.L = inf;
M.M = 0;
M.N = randi([1,10],1);
M.O = inf;
M.P = inf;

N.A = inf;
N.B = inf;
N.C = inf;
N.D = inf;
N.E = inf;
N.F = inf;
N.G = inf;
N.H = inf;
N.I = inf;
N.J = J.N;
N.K = inf;
N.L = inf;
N.M = M.N;
N.N = 0;
N.O = randi([1,10],1);
N.P = inf;

O.A = inf;
O.B = inf;
O.C = inf;
O.D = inf;
O.E = inf;
O.F = inf;
O.G = inf;
O.H = inf;
O.I = inf;
O.J = inf;
O.K = K.O;
O.L = inf;
O.M = inf;
O.N = N.O;
O.O = 0;
O.P = randi([1,10],1);

P.A = inf;
P.B = inf;
P.C = inf;
P.D = inf;
P.E = inf;
P.F = inf;
P.G = inf;
P.H = inf;
P.I = inf;
P.J = inf;
P.K = inf;
P.L = L.P;
P.M = inf;
P.N = inf;
P.O = O.P;
P.P = 0;

% %% neighbors
% A.neighbors = [B; E];
% B.neighbors = [A; C; F];
% C.neighbors = [B; D; G];
% D.neighbors = [C; H];
% 
% E.neighbors = [A; F; I];
% F.neighbors = [B; E; G; J];
% G.neighbors = [C; F; H; K];
% H.neighbors = [D; G; L];
% 
% I.neighbors = [E; J; M];
% J.neighbors = [F; I; K; N];
% K.neighbors = [G; J; L; O];
% L.neighbors = [H; K; P];
% 
% M.neighbors = [I; N];
% N.neighbors = [J; M; O];
% O.neighbors = [K; N; P];
% P.neighbors = [L; O];
