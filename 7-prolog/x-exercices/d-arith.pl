% dada uma lista L de números, como calculo o maximo N?
% L = [0, 10, 3, -2], N = 10
% max(N,L). 

max(X, [X]).
max(X, [Y|L]):- max(X,L), X >= Y, !.
max(Y, [Y|_]).

% consultar gprolog ['d-arith'].
% max(Y,[3,2,1,7,4]).