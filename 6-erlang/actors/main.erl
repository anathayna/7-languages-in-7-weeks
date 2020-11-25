-module(main).
-export([start/0]).
-import(timer,[sleep/1]). % importação do timer

calculadora() ->
  receive
    {soma, M, A, B} -> 
      io:format("~p~n", [A + B]),
      M ! {salvar, A + B},
      calculadora();
    {subtracao, M, A, B} -> 
      io:format("~p~n", [A - B]),
      M ! {salvar, A - B},
      calculadora();
    _ -> 
      io:format("nao entendi~n"),
      calculadora()
  end.

% closure
memoria(Z) ->
  receive
    {salvar, V} -> memoria(V);
    imprimir -> 
      io:format("valor: ~p~n", [Z]),
      memoria(Z);
    _ -> 
      io:format("nao entendi~n"),
      memoria(Z)
  end.

start() -> 
  C1 = spawn(fun() -> calculadora() end), % pid
  M = spawn(fun() -> memoria(0) end), % pid
  C1 ! {soma, M, 7, 5}, %async
  sleep(100), 
  M ! imprimir.
