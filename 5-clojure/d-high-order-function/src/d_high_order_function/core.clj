(ns d-funcoes-alta-ordem.core
  (:gen-class))

; funções de alta ordem
; São funções que usam outras funções para o seu processamento
; é um tipo de polimorfismo

(defn adulto-brasil? [idade] (>= idade 18))
(defn adulto-coreia? [idade] (>= idade 19))

(defn assinatura [adulto? idade] 
	(if (adulto? idade) (println "assinatura liberada") (println "precisa ser adulto."))
)

(defn -main
  [& args]

  (println "\n---- funções de alta ordem ----")
  (assinatura adulto-brasil? 30)
  (assinatura adulto-brasil? 12)

  (println "\n---- map ----")
  ; map é uma função de alta ordem que aplica um processamento
  ; em todos os itens de uma lista
  (defn dobrar [v] (* v 2))
  (println (map dobrar [1 5 6]))

  (println "\n---- reduce ----")
  ; reduce faz algum cálculo sobre toda a lista e
  ; retorn uma resultado baseado em um acumulador
  ; deve-se iniciar com um valor com um acumulador
  (println (reduce + 0 [1 5 6])) ; + é a função e 0 é o valor inicial o acumulador

  (println "\n---- filter ----")
  (defn positivo? [valor] (>= valor 0))
  (println (filter positivo? [0 -1 10 -5]))
)
