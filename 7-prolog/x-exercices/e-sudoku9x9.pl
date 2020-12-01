% sudoku([5,3,_,_,7,_,_,_,_,
%        6,_,_,1,9,5,_,_,_,
%        _,9,8,_,_,_,_,6,_,
%        8,_,_,_,6,_,_,_,3,
%        4,_,_,8,_,3,_,_,1,
%        7,_,_,_,2,_,_,_,6,
%        _,6,_,_,_,_,2,8,_,
%        _,_,_,4,1,9,_,_,5,
%        _,_,_,_,8,_,_,7,9],Solucao).

todos_diferentes(A, B, C, D, E, F, G, H, I) :- 
    \+ (A = B), \+ (A = C), \+ (A = D), \+ (A = E), \+ (A = F), \+ (A = G), \+ (A = H), \+ (A = I),
    \+ (B = A), \+ (B = C), \+ (B = D), \+ (B = E), \+ (B = F), \+ (B = G), \+ (B = H), \+ (B = I),
    \+ (C = B), \+ (C = A), \+ (C = D), \+ (C = E), \+ (C = F), \+ (C = G), \+ (C = H), \+ (C = I),
    \+ (D = B), \+ (D = C), \+ (D = A), \+ (D = E), \+ (D = F), \+ (D = G), \+ (D = H), \+ (D = I),
    \+ (E = B), \+ (E = C), \+ (E = D), \+ (E = A), \+ (E = F), \+ (E = G), \+ (E = H), \+ (E = I),
    \+ (F = B), \+ (F = C), \+ (F = D), \+ (F = E), \+ (F = A), \+ (F = G), \+ (F = H), \+ (F = I),
    \+ (G = B), \+ (G = C), \+ (G = D), \+ (G = E), \+ (G = F), \+ (G = A), \+ (G = H), \+ (G = I),
    \+ (H = B), \+ (H = C), \+ (H = D), \+ (H = E), \+ (H = F), \+ (H = G), \+ (H = A), \+ (H = I),
    \+ (I = B), \+ (I = C), \+ (I = D), \+ (I = E), \+ (I = F), \+ (I = G), \+ (I = H), \+ (I = A).
    
sudoku(Sudoku,Saida) :-
    Saida = Sudoku,
    Sudoku = [A11, A12, A13, A14, A15, A16, A17, A18, A19,
              A21, A22, A23, A24, A25, A26, A27, A28, A29,
              A31, A32, A33, A34, A35, A36, A37, A38, A39,
              A41, A42, A43, A44, A45, A46, A47, A48, A49,
              A51, A52, A53, A54, A55, A56, A57, A58, A59,
              A61, A62, A63, A64, A65, A66, A67, A68, A69,
              A71, A72, A73, A74, A75, A76, A77, A78, A79,
              A81, A82, A83, A84, A85, A86, A87, A88, A89,
              A91, A92, A93, A94, A95, A96, A97, A98, A99],
    fd_domain(Saida,1,9),
    fd_all_different([A11, A12, A13, A21, A22, A23, A31, A32, A33]), % Q1
    fd_all_different([A14, A15, A16, A24, A25, A26, A34, A35, A36]), % Q2
    fd_all_different([A17, A18, A19, A27, A28, A29, A37, A38, A39]), % Q3
    fd_all_different([A41, A42, A43, A51, A52, A53, A61, A62, A63]), % Q4
    fd_all_different([A44, A45, A46, A54, A55, A56, A64, A65, A66]), % Q5
    fd_all_different([A47, A48, A49, A57, A58, A59, A67, A68, A69]), % Q6
    fd_all_different([A71, A72, A73, A81, A82, A83, A91, A92, A93]), % Q7
    fd_all_different([A74, A75, A76, A84, A85, A86, A94, A95, A96]), % Q8
    fd_all_different([A77, A78, A79, A87, A88, A89, A97, A98, A99]), % Q9

    fd_all_different([A11, A12, A13, A14, A15, A16, A17, A18, A19]), % Linha 1
    fd_all_different([A21, A22, A23, A24, A25, A26, A27, A28, A29]), % Linha 2
    fd_all_different([A31, A32, A33, A34, A35, A36, A37, A38, A39]), % Linha 3
    fd_all_different([A41, A42, A43, A44, A45, A46, A47, A48, A49]), % Linha 4
    fd_all_different([A51, A52, A53, A54, A55, A56, A57, A58, A59]), % Linha 5
    fd_all_different([A61, A62, A63, A64, A65, A66, A67, A68, A69]), % Linha 6
    fd_all_different([A71, A72, A73, A74, A75, A76, A77, A78, A79]), % Linha 7
    fd_all_different([A81, A82, A83, A84, A85, A86, A87, A88, A89]), % Linha 8
    fd_all_different([A91, A92, A93, A94, A95, A96, A97, A98, A99]), % Linha 9

    fd_all_different([A11, A21, A31, A41, A51, A61, A71, A81, A91]), % Coluna 1
    fd_all_different([A12, A22, A32, A42, A52, A62, A72, A82, A92]), % Coluna 2
    fd_all_different([A13, A23, A33, A43, A53, A63, A73, A83, A93]), % Coluna 3
    fd_all_different([A14, A24, A34, A44, A54, A64, A74, A84, A94]), % Coluna 4
    fd_all_different([A15, A25, A35, A45, A55, A65, A75, A85, A95]), % Coluna 5
    fd_all_different([A16, A26, A36, A46, A56, A66, A76, A86, A96]), % Coluna 6
    fd_all_different([A17, A27, A37, A47, A57, A67, A77, A87, A97]), % Coluna 7
    fd_all_different([A18, A28, A38, A48, A58, A68, A78, A88, A98]), % Coluna 8
    fd_all_different([A19, A29, A39, A49, A59, A69, A79, A89, A99]). % Coluna 9