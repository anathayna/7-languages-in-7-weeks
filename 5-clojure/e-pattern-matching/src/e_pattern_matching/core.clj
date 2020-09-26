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
  (defn linha1? [ [[primeiro segundo terceiro] _ _] ] (= primeiro segundo terceiro))
  (defn linha2? [ [_ [primeiro segundo terceiro] _] ] (= primeiro segundo terceiro))
  (defn linha3? [ [_ _ [primeiro segundo terceiro]] ] (= primeiro segundo terceiro))
  (defn coluna1? [ [[primeiro _ _] [segundo _ _] [terceiro _ _]] ] (= primeiro segundo terceiro))
  (defn coluna2? [ [[_ primeiro _] [_ segundo _] [_ terceiro _]] ] (= primeiro segundo terceiro))
  (defn coluna3? [ [[_ _ primeiro] [_ _ segundo] [_ _ terceiro]] ] (= primeiro segundo terceiro))
  (defn diagonal1? [ [[primeiro _ _] [_ segundo _] [_ _ terceiro]] ] (= primeiro segundo terceiro))
  (defn diagonal2? [ [[_ _ primeiro] [_ segundo _] [terceiro _ _]] ] (= primeiro segundo terceiro))
      
  (def funcoes [
    {:nome "linha 1", :func linha1?},
    {:nome "linha 2", :func linha2?},
    {:nome "linha 3", :func linha3?},
    {:nome "coluna 1", :func coluna1?},
    {:nome "coluna 2", :func coluna2?},
    {:nome "coluna 2", :func coluna3?},
    {:nome "diagonal 1", :func diagonal1?},
    {:nome "diagonal 2", :func diagonal2?}
  ])
    
  (defn vencedor [tabuleiro]
    (get (first (filter #((get % :func) tabuleiro) funcoes)) :nome)
  )
    
  (def tabuleiro [[:x :o :o] [:o :x :o] [:o :o :x]])
    
  (println "\nLinha 1: " (str (linha1? tabuleiro)))
  (println "linha 2: " (str (linha2? tabuleiro)))
  (println "linha 3: " (str (linha3? tabuleiro)))
    
  (println "coluna 1: " (str (coluna1? tabuleiro)))
  (println "coluna 2: " (str (coluna2? tabuleiro)))
  (println "coluna 3: " (str (coluna3? tabuleiro)))
    
  (println "diagonal 1: " (str (diagonal1? tabuleiro)))
  (println "diagonal 2: " (str (diagonal2? tabuleiro)))
    
  (println "\n ** vencedor: " (str (vencedor tabuleiro)) "\n")
)
