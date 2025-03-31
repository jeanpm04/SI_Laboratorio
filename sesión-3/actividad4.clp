(deftemplate Pais
   (slot Nombre)
   (multislot Bandera))  ;; Usamos multislot para almacenar varios colores

(deffacts Datos-Paises
   (Pais (Nombre "Perú") (Bandera Rojo Blanco))
   (Pais (Nombre "Argentina") (Bandera Azul Blanco))
   (Pais (Nombre "Colombia") (Bandera Amarillo Azul Rojo))
   (Pais (Nombre "España") (Bandera Rojo Amarillo))
   (Pais (Nombre "Brasil") (Bandera Verde Amarillo Azul Blanco))
   (Pais (Nombre "Francia") (Bandera Azul Blanco Rojo))
   (Pais (Nombre "Portugal") (Bandera Verde Rojo Amarillo))
   (Pais (Nombre "Japón") (Bandera Blanco Rojo))
   (Pais (Nombre "Corea del Sur") (Bandera Blanco Negro Azul Rojo))
   (Pais (Nombre "México") (Bandera Verde Blanco Rojo)))

(defrule solicitar-colores
   (not (ColoresABuscar $?))  ;; Si aún no se ha ingresado un vector de colores
   =>
   (printout t "Ingrese los colores a buscar (ejemplo: Blanco Amarillo): " )
   (bind ?entrada (readline))  ;; Leer la entrada del usuario como una cadena
   (bind ?colores (explode$ ?entrada))  ;; Convertir la cadena en una lista de colores
   (assert (ColoresABuscar $?colores))))  ;; Crear un hecho con los colores ingresados

(defrule buscar-paises
   (ColoresABuscar $?colores)  ;; Capturamos la lista de colores ingresados
   (Pais (Nombre ?pais) (Bandera $?bandera))  ;; Capturamos los colores de la bandera
   (test (subsetp ?colores ?bandera))  ;; Verificamos si todos los colores están en la bandera
   =>
   (printout t "El país " ?pais " contiene todos los colores buscados en su bandera." crlf))
