-module(main). % declaração do módulo
-import(timer,[sleep/1]). % importação do timer
-export([start/0]). % função que será usada de fora

% adicionar função de multiplicação
% adicionar função de divisão
calcular() ->
  receive
    {Pid, soma, A, B} -> 
      Pid ! {salvar, A + B};
    {Pid, subtracao, A, B} -> 
      Pid ! {salvar, A - B};
    {Pid, multiplicacao, A, B} -> 
      Pid ! {salvar, A * B};
    {Pid, divisao, A, B} -> 
      Pid ! {salvar, A / B};
    _ -> io:format("nao sei resolver... ~n")
  end.

% exercício função incrementar
% função reset de memória => jogar zero
memoria(Valor) ->
  receive
    {salvar, V} -> 
      memoria(V);
    {incrementar, V} -> 
      memoria(V) + 1;
    imprimir ->
      io:format("valor: ~p~n", [Valor]), memoria(0);
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

  Mem ! reset,
  sleep(100),
  Mem ! imprimir.