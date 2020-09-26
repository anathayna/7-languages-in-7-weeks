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

  (println "\n")

  (def n 15)
  (println
    (match [(mod n 3) (mod n 5)]
      [0 0] "divisível por 3 e 5"
      [0 _] "divisível por 3"
      [_ 0] "divisível por 5"
      :else "não é divisível"))

  (println "\n")

  (println
    (let [a "3" op "+" b "4"]
      (match [a op b]
        [x "+" y] (str "soma " x " + " y "\n")
        [x "-" y] (str "subtração " x " - " y "\n")
        [x "*" y] (str "multiplicação " x " * " y "\n")
        :else "¯\\_(ツ)_/¯\n"))
  )
  
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

  ; jogo da velha
  (defn l1? [[[um dois tres] _ _]] (= um dois tres))
  (defn l2? [[_ [um dois tres] _]] (= um dois tres))
  (defn l3? [[_ _ [um dois tres]]] (= um dois tres))
  (defn c1? [[[um _ _] [dois _ _] [tres _ _]]] (= um dois tres))
  (defn c2? [[[_ um _] [_ dois _] [_ tres _]]] (= um dois tres))
  (defn c3? [[[_ _ um] [_ _ dois] [_ _ tres]]] (= um dois tres))
  (defn d1? [[[um _ _] [_ dois _] [_ _ tres]]] (= um dois tres))
  (defn d2? [[[_ _ um] [_ dois _] [tres _ _]]] (= um dois tres))
      
  (def funcoes [
    {:nome "linha 1", :func l1?},
    {:nome "linha 2", :func l2?},
    {:nome "linha 3", :func l3?},
    {:nome "coluna 1", :func c1?},
    {:nome "coluna 2", :func c2?},
    {:nome "coluna 2", :func c3?},
    {:nome "diagonal 1", :func d1?},
    {:nome "diagonal 2", :func d2?}
  ])
    
  (defn vencedor [tabuleiro]
    (get (first (filter #((get % :func) tabuleiro) funcoes)) :nome)
  )
    
  (def tabuleiro [[:x :o :o] [:o :x :o] [:o :o :x]])
    
  (println "\nlinha 1: " (str (l1? tabuleiro)))
  (println "linha 2: " (str (l2? tabuleiro)))
  (println "linha 3: " (str (l3? tabuleiro)))
    
  (println "coluna 1: " (str (c1? tabuleiro)))
  (println "coluna 2: " (str (c2? tabuleiro)))
  (println "coluna 3: " (str (c3? tabuleiro)))
    
  (println "diagonal 1: " (str (d1? tabuleiro)))
  (println "diagonal 2: " (str (d2? tabuleiro)))
    
  (println "\n ** vencedor: " (str (vencedor tabuleiro)) "\n")
)
