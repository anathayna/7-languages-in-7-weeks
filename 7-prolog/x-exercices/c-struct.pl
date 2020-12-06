% ultimo(L,X). [1, 2, 4, 5] => X = 5

ultimo_elemento([X | []], X).

% ultimo_elemento(elemento, lista)
ultimo_elemento(E, [_|X]) :- ultimo_elemento(E, X).

% consulta gprolog ['c-struct'].
% ultimo_elemento(E, [1,2,4,5])