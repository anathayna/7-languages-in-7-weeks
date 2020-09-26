(ns d-high-order-function.core
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

  ; função de alta ordem any?
  ; verifica se algum emento aplica a função
  ; que retorna um booleno
  (println "\n---- any? ----")
  (defn any? 
    [f lista]
    (reduce = false (map f lista)) ; = or
  )
  
  (any? (fn [x] (< x 0)) [1 4 5 6]) ;; false
  (any? (fn [x] (< x 0)) [1 4 -5 6]) ;; true

  ; (map f lista) => (false false false false)
  ; (reduce f acc novalista) => false

  ; (or false false) ;=> false
  ; (or false false) ;=> false
  ; (or false true)  ;=> true
  ; (= true false)   ;=> true

  (println "\n---- aplicação ----")
  (def pessoas 
    [
      {:nome "joana", :idade 12},
      {:nome "pedro", :idade 36},
      {:nome "maria", :idade 19},
      {:nome "osires", :idade 55}
    ]
  )
  
  (defn get-adultos [f pessoas] (filter f pessoas))
  
  ; fn -> anonymous func aka any?
  (def adulto-brasil (fn [x] (>= (get x :idade) 18))) 
  (def adulto-coreia (fn [x] (>= (get x :idade) 19)))
  
  (println (get-adultos adulto-brasil pessoas))
  (println (get-adultos adulto-coreia pessoas))
  ;; adulto-brasil? [{:nome "pedro", :idade 36} {:nome "maria", :idade 18} {:nome "osires", :idade 55}]
  ;; adulto-coreia? [{:nome "pedro", :idade 36} {:nome "osires", :idade 55}]
)
