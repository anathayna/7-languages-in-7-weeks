% base de conhecimento
gosta_de(jose, maria).
gosta_de(jose, vanessa).
gosta_de(maria, jose).
gosta_de(maria, vinicius).
gosta_de(vanessa, maria).
gosta_de(vanessa, vinicius).
gosta_de(vinicius, vanessa).
gosta_de(vinicius, maria).

% consulta gprolog ['main.pl'].
% variáveis são átomos em maiúsculos
% gosta_de(maria, X).

% regras
amizade(X,Y) :- gosta_de(X, Y), gosta_de(Y, X).

% consultar
% amizade(maria,jose).
% amizade(maria,vinicius).
% amizade(vanessa,Y).
% amizade(X,Y).