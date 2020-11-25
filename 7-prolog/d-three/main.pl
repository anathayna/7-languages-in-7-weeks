mae(maria, joana).
mae(joana, luis).
mae(cleia, otavio).
pai(orozimbo, otavio).
pai(otavio, luis).
irmao(orozimbo, manuel).
irmao(orozimbo, adelia).
 
ancestral(X, Y) :- mae(X, Y); pai(X, Y).  
vovos(X, Y) :- mae(X, A); pai(X, A), ancestral(A, Y). 
sogrx(X, Y) :- pai(X, A) , mae(B, A) , mae(Y, B) ; pai(Y, B) ; pai(B, A), mae(X, A), mae(Y, B) ; pai(Y, B).
irmaos(X, Y) :- irmao(Y, X) ; irmao(X, Y), \+ (Y = X).
cunhadx(X, Y) :- pai(X, A), mae(B, A), irmaos(B, Y) ; pai(B, A), mae(X, A), irmaos(B, Y).
tio(X, Y) :- pai(A, X), irmaos(A, Y).
primos(X, Y) :- tios(X, A), pai(A, Y) ; mae(A, Y).
tioavo(X, Y) :- avoa(A, Y), irmaos(A, X).

% consulta gprolog ['main'].
% ancestral(maria, luis). true.
% ancestral(X, luis). joana;

% tio-avô(masculino)
% sogro(a)
% cunhado(a)
% primos(as) diretos
% primos(as) indiretos