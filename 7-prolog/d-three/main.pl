mae(maria, joana).
mae(joana, luis).
mae(cleia, otavio).
pai(orozimbo, otavio).
pai(otavio, luis).
irmao(orozimbo, manuel).
irmao(orozimbo, adelia).

vovo(X,Y) :- (mae(W,Y) ; pai(W,Y)), pai(X,W).
ancestral(X, Y) :- mae(X, Y); pai(X, Y). 
ancestral(X, Y) :- (mae(X, Z); pai(X, Z)), ancestral(Z, Y). 
tioavo(X, Y) :- irmao(X, H), pai(H, Z), pai(Z, Y); irmao(X, H), pai(H, Z), mãe(Z, Y).
primo(A,B) :- homem(A),genitor(X,A), irmao(X,Y), genitor(Y,B).
primo_1(X, Y) :- pai(A, X), irmao(A, B), pai(Y,B).
sogro(X, Y) :- ().
cunhado(X, Y) :- ().
primos_1(X, Y) :- ().
primos_2(X, Y) :- ().


% consulta gprolog ['main'].
% ancestral(maria, luis). true.
% ancestral(X, luis). joana;

% tio-avô(masculino)
% sogro(a)
% cunhado(a)
% primos(as) diretos
% primos(as) indiretos