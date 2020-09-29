(ns f-currying.core
  (:gen-class))

(defn -main
  [& args]
  "i don't do a whole lot ... yet."

  (println "------ função parcial ------")
  (defn somadora [a b] (+ a b))
  (def soma (partial somadora 10))

  (println (soma 5))
  (println (soma 10))

  (println (map (partial reduce +) [[1 3 4] [3 5 6]]))

  (println "------ contains ------")
  (def lista-ids [1 2 3 5 6 7 8 9 10])
  (def usaram-recurso-ids #{3 4 5 9}) ; #{} => Conjunto

  ; dica: fazer uma função que checa se um item da lista está no conjunto usando contains?
  ; https://clojuredocs.org/clojure.core/contains_q


  (defn quem-usou-recurso 
    [lista-todos lista-usaram]
    (map (partial contains? lista-usaram) lista-todos)
  )

  (println (quem-usou-recurso lista-ids usaram-recurso-ids))
)
