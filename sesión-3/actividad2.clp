(deftemplate numero
    (slot valor))

(deffacts datos-iniciales
    (numero (valor 10))
    (numero (valor 5))
    (numero (valor 8))
    (numero (valor 3))
    (numero (valor 7)))

(defrule sumar-lista
    (declare (salience 10))
    (not (suma ?))      ;; Solo se ejecuta si no hay una suma ya calculada
    =>
    (bind ?total 0)     ;; Inicializa la variable total
    (do-for-all-facts ((?n numero)) TRUE
        (bind ?total (+ ?total (fact-slot-value ?n valor))))    ;; Suma los valores
    (assert (suma ?total))+     ;; Guarda la suma como un nuevo hecho
    (printout t "La suma de los valores en la lista es: " ?total crlf))
