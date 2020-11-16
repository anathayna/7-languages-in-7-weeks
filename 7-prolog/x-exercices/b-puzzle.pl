% palavra(palavras, <letra>, <letra>, ..., <letra>)
palavra(abalone,a,b,a,l,o,n,e). 
palavra(abandon,a,b,a,n,d,o,n). 
palavra(enhance,e,n,h,a,n,c,e). 
palavra(anagram,a,n,a,g,r,a,m). 
palavra(connect,c,o,n,n,e,c,t). 
palavra(elegant,e,l,e,g,a,n,t).

% fazer o quebra-cabeca que junte as palavras
puzzle(H1,H2,H3,V1,V2,V3) :- 
    palavra(H1, _, A, _, B, _, C, _),
    palavra(V1, _, A, _, ?, _, ?, _),
    palavra(V2, _, ?, _, B, _, ?, _),
    palavra(V3, _, ?, _, ?, _, C, _),

    palavra(H2, _, A, _, B, _, C, _),
    palavra(V1, _, ?, _, A, _, ?, _),
    palavra(V2, _, ?, _, B, _, ?, _), 
    palavra(V3, _, ?, _, ?, _, C, _),

    palavra(H3, _, A, _, B, _, C, _),
    palavra(V1, _, ?, _, ?, _, A, _),
    palavra(V2, _, ?, _, ?, _, B, _), 
    palavra(V3, _, ?, _, ?, _, C, _).

% consulta gprolog ['b-puzzle'].