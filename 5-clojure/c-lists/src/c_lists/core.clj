(ns c-operacoes-listas.core
  (:gen-class))

; contador
(defn contador [lista] 
  (if (empty? lista)
    0
    (inc (contador (rest lista)))
  )
)

(defn -main
  "operações listas"
  [& args]
  (println "\n---- operações com listas ----")
  
  (def a [1 2 3 4]) ; listas no clojure são imutáveis
  (println (conj a 45 56)) ;; operações com listas geram novas listas

  ; uso comum de listas
  ; gero uma função que trabalha o primeiro argumento
  ; segundo argumento é o resto da lista que passo como argumento recursivo
  (println "primeiro item:")
  (println (first a))
  (println "resto da lista:")
  (println (rest a))
  (println "exemplo de função: contator de itens")
  (println (contador a))

  (println "\n---- list comprehension ----")
  ; geração de listas
  ; o for do clojure é usado para geração de listas
  ; primeira parte, definição da regra de cada elemento
  ; segundo parte: elemento
  ; https://blog.jeaye.com/2016/07/27/clojure-for/
  ; exemplo 1
  (println 
    (for 
      [ x (range 3)
        y (range 3)
        :when (not= x y)
      ] ; regra de formação de cada elemento
      [x y] ; formato do elemento
    )
  )

  ; exemplo 2 - baralho
  (println 
    (for 
      [c [:2 :3 :4 :5 :6 :7 :8 :9 :10 :J :Q :K :A] s [:♠ :♥ :♣ :♦]]
      [c s]
    )
  )
)
