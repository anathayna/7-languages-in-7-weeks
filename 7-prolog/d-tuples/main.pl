%% tuplas
% executar
% (1, 2, 3) = (1, 2, 3).  => true
% (1, 2, 3) = (1, 2, 3, 4).  => true
% (A, B, C) = (1, 2, 3).  => unificação

% (A, 1, 3) = (2, B, C).  => unificação

%% listas
% executar
% [1, 2, 3] = [1, 2, 3].  => true
% [1, 2, 3] = [1, 2, 3, 4].  => true
% (A, B, C) = [1, 2, 3].  => unificação

% (A, 1, 3) = (2, B, C).  => unificação
% (A, 1, 3) = (2, A, C).  => unificação falha

% head / tail
% [1, 2, 3, 4]
% head = 1
% tail = [2, 3 4]

% [1, 2, 3, 4] = [Head|Tail].
% Head = 1,
% Tail = [2, 3, 4].

% [1, 2, 3, 4] = [_|[Head|_]].
% Head = 2.