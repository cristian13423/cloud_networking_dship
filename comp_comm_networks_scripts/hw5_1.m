clear all; clc; close all;

%% initialization
% A---1---B
% |       |
% 2       4
% |       |
% C---6---D

% NEED to define separate _v so that the actual edge distances dont update!

N = 4;
e_N = 4;

A = struct('A', 0, 'B', 1, 'C', 2, 'D', inf)
% A_v = [0 1 1 inf];

B = struct('A', 1, 'B', 0, 'C', inf, 'D', 4)
% B_v = [1 0 inf 4];

C = struct('A', 2, 'B', inf, 'C', 0, 'D', 8)
% C_v = [1 inf 0 1];

D = struct('A', inf, 'B', 4, 'C', 8, 'D', 0)
% D_v = [inf 4 1 0];

A_v = struct();
B_v = struct();
C_V = struct();
D_v = struct();

%% iteration 1 - use original costs
disp("iteration 1")

A_v.A = 0;
A_v.B = min( A.B+B.B, A.C+C.B );
A_v.C = min( A.B+B.C, A.C+C.C );
A_v.D = min( A.B+B.D, A.C+C.D );

B_v.A = min( B.A+A.A, B.D+D.A );
B_v.B = 0;
B_v.C = min( B.A+A.C, B.D+D.C );
B_v.D = min( B.A+A.D, B.D+D.D );

C_v.A = min( C.A+A.A, C.D+D.A );
C_v.B = min( C.A+A.B, C.D+D.B );
C_v.C = 0;
C_v.D = min( C.A+A.D, C.D+D.D );

D_v.A = min( D.B+B.A, D.C+C.A );
D_v.B = min( D.B+B.B, D.C+C.B );
D_v.C = min( D.B+B.C, D.C+C.C );
D_v.D = 0;

A_v
B_v
C_v
D_v

%% iteration 2 - vectors are updated and sent to other nodes
disp("iteration 2")

A_v.A = 0;
A_v.B = min( A_v.B+B_v.B, A_v.C+C_v.B );
A_v.C = min( A_v.B+B_v.C, A_v.C+C_v.C );
A_v.D = min( A_v.B+B_v.D, A_v.C+C_v.D );

B_v.A = min( B_v.A+A_v.A, B_v.D+D_v.A );
B_v.B = 0;
B_v.C = min( B_v.A+A_v.C, B_v.D+D_v.C );
B_v.D = min( B_v.A+A_v.D, B_v.D+D_v.D );

C_v.A = min( C_v.A+A_v.A, C_v.D+D_v.A );
C_v.B = min( C_v.A+A_v.B, C_v.D+D_v.B );
C_v.C = 0;
C_v.D = min( C_v.A+A_v.D, C_v.D+D_v.D );

D_v.A = min( D_v.B+B_v.A, D_v.C+C_v.A );
D_v.B = min( D_v.B+B_v.B, D_v.C+C_v.B );
D_v.C = min( D_v.B+B_v.C, D_v.C+C_v.C );
D_v.D = 0;

A_v
B_v
C_v
D_v

% %% other stuff
% 
% for i=1:sqrt(N)
% 
% end
% 
% function [D_wz] = bellmanFord(w,x,y,z)
% 
% D_wz = min(  )
% 
% end