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

  (def n 15)
  (println
    (match [(mod n 3) (mod n 5)]
      [0 0] "divisível por 3 e 5"
      [0 _] "divisível por 3"
      [_ 0] "divisível por 5"
      :else "não é divisível"))
  
  ; binding
  (println "------- binding -------")
  (def tabuleiro [[:x :o :x] [:x :o :x] [:x :o :x]])
  (defn central [ [_ [_ c _]_] ] c)
  (println (central tabuleiro))

  (def n [1 2 3 4 5])
  (let [[x & r :as t] n]
    (println x)  
    (println r)
    (println t))
)
