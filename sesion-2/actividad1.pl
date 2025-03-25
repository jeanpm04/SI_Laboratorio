% Padres
padre(noe, jean).
padre(noe, erick).
padre(jorge, noe).
padre(antonio, esmeralda).

madre(esmeralda, jean).
madre(esmeralda, erick).
madre(karla, noe).
madre(lelis, esmeralda).

% Hermanos
hermano(erick, jean).

% Primos
primo(jordan, jean).
primo(kevin, jean).
primo(tadeo, jean).
primo(jesus, jean).

prima(yoselyn, jean).
prima(heidy, jean).
prima(luana, jean).

% Tíos paternos (solo hombres)
tio_paterno(javier, jean).

% Tías paternas (solo mujeres)
tia_paterna(antonieta, jean).
tia_paterna(queta, jean).

% Tíos maternos (solo hombres)
tio_materno(carlos, jean).

% Tías maternas (solo mujeres)
tia_materna(sylvia, jean).
tia_materna(elizabeth, jean).
tia_materna(lesly, jean).
tia_materna(antonia, jean).

% Reglas

abuelo(X, Y) :- padre(X, Z), (padre(Z, Y) ; madre(Z, Y)).
abuela(X, Y) :- madre(X, Z), (padre(Z, Y) ; madre(Z, Y)).

es_padre(X, Y) :- padre(X, Y).
es_madre(X, Y) :- madre(X, Y).

es_hermano(X, Y) :- hermano(X, Y).
es_hermana(X, Y) :- hermana(X, Y).

es_tio_paterno(X, Y) :- tio_paterno(X, Y).
es_tia_paterna(X, Y) :- tia_paterna(X, Y).
es_tio_materno(X, Y) :- tio_materno(X, Y).
es_tia_materna(X, Y) :- tia_materna(X, Y).

% Reglas generales para tíos y tías
es_tio(X, Y) :- tio_paterno(X, Y) ; tio_materno(X, Y).
es_tia(X, Y) :- tia_paterna(X, Y) ; tia_materna(X, Y).
