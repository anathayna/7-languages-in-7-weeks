-module(main). % declaração do módulo
-import(timer,[sleep/1]). % importação do timer
-export([start/0]). % função que será usada de fora

calcular() ->
  receive
    {Pid, soma, A, B} -> 
      io:format("~p~n", [A + B]),
      Pid ! {salvar, A + B};
    {Pid, subtracao, A, B} -> 
      io:format("~p~n", [A - B]),
      Pid ! {salvar, A - B};
    {Pid, multiplicacao, A, B} -> 
      io:format("~p~n", [A * B]),
      Pid ! {salvar, A * B};
    {Pid, divisao, A, B} -> 
      io:format("~p~n", [A / B]),
      Pid ! {salvar, A / B};
    _ -> io:format("nao sei resolver... ~n")
  end.

% exercício função incrementar 
% função reset de memória => zerar
memoria(Valor) ->
  receive
    {salvar, V} -> 
      memoria(V);
    incrementa -> 
      memoria(Valor + 1);
    {incrementa, X} ->
      memoria(Valor + X);
    imprimir ->
      io:format("memoria: ~p~n", [Valor]), memoria(Valor);
    reset ->
      memoria(0);
    _ -> io:format("nao sei resolver... ~n")
  end.

% erl -make

start() ->
  C3 = spawn(fun() -> calcular() end),
  Mem = spawn(fun() -> memoria(0) end),
  C3 ! {Mem, multiplicacao, 7, 4},
  Mem ! imprimir,
  sleep(100),
  Mem ! imprimir,

  Mem ! incrementa,
  sleep(100),
  Mem ! imprimir,

  Mem ! {incrementa, 2},
  sleep(100),
  Mem ! imprimir,

  Mem ! reset,
  sleep(100),
  Mem ! imprimir.