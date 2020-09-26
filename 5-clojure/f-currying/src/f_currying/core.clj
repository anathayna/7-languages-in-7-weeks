(ns f-currying.core
  (:gen-class))

(defn -main
  "i don't do a whole lot ... yet."
  [& args]

  (println "------ função parcial ----")
  (defn soma [a b] (+ a b))
  (defn soma2 [b] (partial (soma 2)))

  (println ((soma2 10))
  (println ((soma2 50))

  (println (map (partial reduce +) [[1 2 3 4] [5 6 7 8]]))
  )
