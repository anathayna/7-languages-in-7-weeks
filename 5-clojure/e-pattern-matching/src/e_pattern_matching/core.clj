(ns e-pattern-matching.core
  (:gen-class)
  (:require [clojure.core.match :refer [match]]))

(defn -main
  [& args]

  ; pattern matching
  (println "------- pattern matching -------")
  (doseq [n (range 1 10)]
    (println
      (match [(mod n 3) (mod n 5)]
        [0 0] "FizzBuzz"
        [0 _] "Fizz"
        [_ 0] "Buzz"
        :else n)))
  
  ; binding
  (println "------- binding -------")
  (def tabuleiro [[:x :o :x] [:x :o :x] [:x :o :x]])
  (defn central [ [_ [_ c _]_] ] c)
  (println (central tabuleiro))

  (def num [1 2 3 4 5])
  (let [[primeiro & restante :as todos] num]
    (println primeiro)  
    (println restante)
    (println todos)
  )
)