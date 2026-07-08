%hw5_2

% initialize new nodes with costs
init

% perform first exchange with neighbors
iterate1

% worst case iterations = N-1
iter = 2;

for i=1:iter

    % extracts new distance vectors from DV, not from nodes themselves
    iterate2
    A_v.F = 60;

end

% creates a digraph
plot_network;