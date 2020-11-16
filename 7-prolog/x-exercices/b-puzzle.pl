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
    palavra(H2, _, D, _, E, _, F, _),
    palavra(H3, _, G, _, H, _, I, _),
    palavra(V1, _, A, _, D, _, G, _),
    palavra(V2, _, B, _, E, _, H, _),
    palavra(V3, _, C, _, F, _, I, _).

% consulta gprolog ['b-puzzle'].