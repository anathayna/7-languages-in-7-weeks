pop(eua, 203).
pop(india, 548).
pop(china, 800).
pop(brasil, 108).

area(eua, 8).
area(india, 3).
area(china, 10).
area(brasil, 8).

dens(X, Y) :-
    pop(X, P),
    area(X, A),
    Y is P/A.

% ----------------------------------------------------

% N = N*n-1*...*1

% fatorial(N,R)
% fatorial(3,6)
% N = 3, Resultado is 6, M = 2, fatorial(2,2)
% fatorial(2,2)
% N = 2, Resultado is 2, M = 1, fatorial(1,1)
% fatorial(1,1)
% N = 1, Resultado is 1, M = 0, fatorial(0,1)
% fatorial(0,Parcial) => Parcial = 1

fatorial(0, 1).
fatorial(N, Resultado) :-
    N > 0,
    M is N-1,
    fatorial(M, Parcial),
    Resultado is N * Parcial.

% contar(N, L). => L = [1,2,3], N=3

contar(0,[]).
contar(N, [_|Cauda]) :- contar(NContador,Cauda), N is NContador + 1.
% [1, 2, 3], Cauda = [2,3], 2, N is 2 + 1 = 3
% [2, 3], Cauda = [3], 1, N is 1 + 1 = 2
% [3], Cauda = [], 0, N is 0 + 1 = 1
% [], 0

somar(0,[]).
somar(Total,[H|Cauda]) :- somar(Soma,Cauda), Total is Soma + H.

media(Media, Lista) :- somar(Soma, Lista), contar(Contador, Lista), Media is Soma/Contador.