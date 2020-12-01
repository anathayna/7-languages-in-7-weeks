fat(0, 1) :- !.
fat(N, F) :- N1 is N - 1, fat(N1, F1), F is F1 * N.