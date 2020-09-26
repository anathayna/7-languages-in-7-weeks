(ns a-basics.core
  (:gen-class))

(defn -main
  "intro ao clojure"
  [& args]
  (println "\n---- expressões ----")
  ; notação infixa (nome-funcao arg1 arg 2 ...)
  ; trate tudo como lista
  (println (+ 1 3 23 234))
  (println (/ 100 2 5)) ; primeiro argumento é numerado e os outros os numeradores

  (println "\n---- booleanos ----")
  (println (= 1 2 2)) ; este é um operador de igualdade
  (println (< 10 24 77))

  ; função str converte os outros tipos para string ou concatena
  (println "\n---- strings ----")
  (println (str 13 " é a idade de " "enzo"))
  
  (println "\n---- variável ----")
  (def a 1243)
  (println (str a " é o código de entrada"))
  ; as variávels são imutáveis
  (def a (+ a 1)) ; mas se pode redefinir os valores
  (println (str a " é o novo código de entrada"))

  ; conjunto elementos ordenados => Usado para codigo ()
  (println "\n---- listas ----")
  ; '(1 2 3)
  (println (list 1 3 4))

  ; conjunto elementos ordenados => usado para dados []
  ; otimizados para acesso randômico
  (println "\n---- vetores ----")
  (def vetor [1 3 4])
  (println vetor)
  (println (first [1 3 4]))
  (println (last [1 3 4]))
  (println (nth [1 3 4] 1))

  ; conjunto de chave-valor = {} aka dicionario
  (println "\n---- maps ----")
  (def pessoa {:nome "maria", :idade 28} )
  (println (pessoa :nome))
)

; lein new app folder-name
; lein run
; lein repl