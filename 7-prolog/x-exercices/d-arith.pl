% dada uma lista L de números, como calculo o maximo N?
% L = [0, 10, 3, -2], N = 10
% max(N,L). 

max([X,Y|T],M) :- X >= Y, !, max([X|T], M).
max([X,Y|T],M) :- max([Y|T], M).