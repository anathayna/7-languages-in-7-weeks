% ultimo(L,X). [1, 2, 4, 5] => X = 5

ultimo([X|[]],X).
lista is [1,2,3,45].

ultimo_elemento(L, X) :- ultimo(L, [X | []], X).
% cada item da lista
% descer com o tail
