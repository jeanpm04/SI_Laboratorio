tiene_habilidad(guillermo, matematicas).
tiene_habilidad(guillermo, resolucion_problemas).
tiene_habilidad(carlos, creatividad).
tiene_habilidad(carlos, dibujo).
tiene_habilidad(jean, liderazgo).
tiene_habilidad(julian, argumentacion).
tiene_habilidad(martin, biologia).

tiene_interes(guillermo, tecnologia).
tiene_interes(carlos, diseño).
tiene_interes(jean, negocios).
tiene_interes(julian, justicia).
tiene_interes(martin, salud).

tiene_personalidad(guillermo, analitico).
tiene_personalidad(carlos, extrovertido).
tiene_personalidad(jean, meticuloso).
tiene_personalidad(julian, critica).
tiene_personalidad(martin, empatico).

carrera(ingenieria_sistemas, [matematicas, resolucion_problemas], tecnologia, analitico).
carrera(medicina, [biologia], salud, empatico).
carrera(derecho, [argumentacion], justicia, critica).
carrera(arquitectura, [creatividad, dibujo], diseño, extrovertido).
carrera(administracion, [liderazgo], negocios, meticuloso).

recomendar_carrera(Estudiante, Carrera) :-
    carrera(Carrera, HabilidadesReq, InteresReq, PersonalidadReq),
    forall(member(Habilidad, HabilidadesReq), tiene_habilidad(Estudiante, Habilidad)),
    tiene_interes(Estudiante, InteresReq),
    tiene_personalidad(Estudiante, PersonalidadReq).
