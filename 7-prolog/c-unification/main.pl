% base de Conhecimento
% Fonte: https://www.tse.jus.br/eleitor/glossario/termos/elegibilidade
% lista de candidatos do partido
candidato(maria,22,sao_paulo).
candidato(jose,45,sao_paulo).
candidato(pedro,20,sao_paulo).
candidato(joao,29,recife).
candidato(kelly,40,recife).
candidato(paula,34,recife).
candidato(joao,39,belo_horizonte).
candidato(moises,19,belo_horizonte).
candidato(otavio,45,belo_horizonte).

cidade(sao_paulo,sao_paulo).
cidade(recife,pernambuco).
cidade(belo_horizonte,minas_gerais).

% regras
prefeito(X,CIDADE) :- candidato(X, Y, CIDADE), Y > 21.
vice_prefeito(X,CIDADE) :- prefeito(X,CIDADE).

governador(X,ESTADO) :- candidato(X, Y, CIDADE), Y > 30, cidade(CIDADE,ESTADO).
vice_governador(X,ESTADO) :- governador(X,ESTADO).

presidente(X) :- candidato(X, Y, _), Y > 35.
vice_presidente(X) :- presidente(X).

% chapa
chapa_prefeitura(X,Y,CIDADE) :- prefeito(X,CIDADE), vice_prefeito(Y,CIDADE), \+ (X = Y).
chapa_estado(X,Y,ESTADO) :- governador(X,ESTADO), vice_governador(Y,ESTADO), \+ (X = Y).
chapa_presidencia(X,Y) :- presidente(X), vice_presidente(Y), \+ (X = Y). 

% consultar
% chapa_prefeitura(X,Y,<nome cidade>).
% chapa_estado(X,Y,<nome estado>).
% chapa_presidencia(X,Y).