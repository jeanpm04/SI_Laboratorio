;; Estos son los valores de prueba
(deftemplate numero
   (slot valor))

(deffacts datos-iniciales
   (numero (valor 10))
   (numero (valor 5))
   (numero (valor 8))
   (numero (valor 3))
   (numero (valor 7)))

;; Estas son las reglas
(defrule encontrar-minimo
   ?f <- (numero (valor ?v))              ; Obtener un número de la lista
   (not (numero (valor ?x&:(< ?x ?v))))   ; Verificar que no hay otro menor
   =>
   (printout t "El valor mínimo en la lista es: " ?v crlf)) ; Imprimir el mínimo encontrado

(reset)
(run)
