(deftemplate cadena
    (multislot valores))  

(deffacts datos-iniciales
    ;; Definir los dos vectores
    (cadena (valores B C A D E E B C E))
    (cadena (valores E E B C A F E)))

(defrule calcular-interseccion
    (declare (salience 10))
    ;; Capturar exactamente dos listas distintas sin duplicar la ejecución
    (cadena (valores $?lista1))
    (cadena (valores $?lista2))
    (test (neq ?lista1 ?lista2)) ;; Evita repeticiones innecesarias
    =>
    ;; Mostrar los vectores originales
    (printout t "Vector 1: " ?lista1 crlf)
    (printout t "Vector 2: " ?lista2 crlf)

    ;; Inicializamos la intersección como una lista vacía
    (bind ?interseccion (create$))

    ;; Agregamos elementos que están en ambas listas y no están repetidos
    (foreach ?elemento ?lista1
        (if (and (member$ ?elemento ?lista2)  
                 (not (member$ ?elemento ?interseccion)))  
            then
            (bind ?interseccion (create$ ?interseccion ?elemento))))  

    ;; Mostrar el resultado final
    (printout t "Intersección de los vectores: " ?interseccion crlf)

    ;; Detener la ejecución para evitar duplicados
    (halt))
