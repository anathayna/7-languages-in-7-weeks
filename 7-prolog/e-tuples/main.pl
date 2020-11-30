%% TUPLAS
% executar
% (1, 2, 3) = (1, 2, 3).  => true
% (1, 2, 3) = (1, 2, 3, 4).  => false
% (A, B, C) = (1, 2, 3).  => unificação

% (A, 1, 3) = (2, B, C).  => unificação

%% LISTAS
% executar
% [1, 2, 3] = [1, 2, 3].  => true
% [1, 2, 3] = [1, 2, 3, 4].  => false
% (A, B, C) = [1, 2, 3].  => unificação

% (A, 1, 3) = (2, B, C).  => unificação
% (A, 1, 3) = (2, A, C).  => unificação falha

% head / tail
% [1, 2, 3, 4]
% head = 1
% tail = [2, 3 4]

% [1, 2, 3, 4] = [Head|Tail].
% Head = 1,
% Tail = [2, 3, 4].

% [1, 2, 3, 4] = [_|[Head|_]].
% Head = 2.

% ----------------------------------------------------

concatenar([],L,L).
concatenar([H|[]], Y, [H|Y]).
concatenar([H|T], Y, [H|Z]) :- concatenar(T, Y, Z).

pertence(X, [X|_]).
pertence(X, [_ | Y]) :- pertence(X, Y).

prefixo(X, Z) :- concatena(X, Y, Z).
sufixo(Y, Z) :- concatena(X, Y, Z).

% consulta gprolog ['main'].