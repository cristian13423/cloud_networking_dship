%% build digraph
s = [1 1 2 2  3 3 5 5  6 6  7 7   8 8  9  9   10 10 11 11  12 13 14 15];

t = [2 5 3 6  4 7 6 9  7 10 8 11  4 12 10 13  11 14 12 15  16 14 15 16];

w = [A.B A.E B.C B.F  C.D C.G E.F E.I  F.G F.J G.H G.K  H.D H.L I.J I.M  J.K J.N K.L K.O  L.P M.N N.O O.P];

n = {'A' 'B' 'C' 'D' 'E' 'F' 'G' 'H' 'I' 'J' 'K' 'L' 'M' 'N' 'O' 'P'};

Gr = digraph(s,t,w,n)

Gr.Edges
Gr.Nodes

plot(Gr,'Layout','force','EdgeLabel',Gr.Edges.Weight)