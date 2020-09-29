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

  ; https://clojuredocs.org/clojure.core/contains_q
  (defn quem-usou-recurso 
    [lista-todos lista-usaram]
    (map (partial contains? lista-usaram) lista-todos))
  (println (quem-usou-recurso lista-ids usaram-recurso-ids))

  (println "\n")

  (println "------ currying ------")
  ; método que imprime um log na tela
  (defn log 
    [data, importancia, mensagem]
    (str "[" data "][" importancia "] " mensagem)
  )
  (def date (.toString (java.util.Date.)))

  (defn curry [f] 
    (fn [date]
      (fn [debug]
        (fn [msg]
          (f date debug msg)
        )
      )
    )
  )

  (println ((((curry log) date) "DEBUG") "nada aconteceu"))

  (let [logCurrying (curry log)]
    (let [dateCurried (logCurrying date)] 
      (let [importanceCurryied (dateCurried "DEBUG")]
        (println (importanceCurryied "mensagem 1"))
        (println (importanceCurryied "mensagem 2"))
      )
    )
  )
)
