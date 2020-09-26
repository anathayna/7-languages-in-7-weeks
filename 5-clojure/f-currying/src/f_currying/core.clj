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
)
