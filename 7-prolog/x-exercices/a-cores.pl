diferentes(vermelho, verde). diferentes(verde, vermelho).
diferentes(vermelho, azul).  diferentes(azul, vermelho).
diferentes(vermelho, amarelo). diferentes(amarelo, vermelho).

diferentes(azul, verde). diferentes(verde, azul).
diferentes(azul, amarelo). diferentes(amarelo, azul).

diferentes(verde, amarelo). diferentes(amarelo, verde).

fronteira(X, Y) :- diferentes(X, Y), diferentes(Y, X).

coloracao(BA, MA, PI, CE, RN, PB, PE, AL, SE) :-
    fronteira(BA, MA),
    fronteira(BA, PI),
    fronteira(BA, PE),
    fronteira(BA, AL),
    fronteira(BA, SE),
    fronteira(MA, PI),
    fronteira(PI, CE),
    fronteira(PI, PE),
    fronteira(CE, PB),
    fronteira(CE, RN),
    fronteira(CE, PE),
    fronteira(RN, PB),
    fronteira(PB, PE),
    fronteira(PE, AL),
    fronteira(AL, SE).