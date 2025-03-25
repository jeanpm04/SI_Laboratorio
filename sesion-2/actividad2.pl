horoscopo(capricornio, 22, 12, 20, 1).
horoscopo(acuario, 21, 1, 19, 2).
horoscopo(piscis, 20, 2, 20, 3).
horoscopo(aries, 21, 3, 21, 4).
horoscopo(tauro, 22, 4, 21, 5).
horoscopo(geminis, 22, 5, 21, 6).
horoscopo(cancer, 22, 6, 22, 7).
horoscopo(leo, 23, 7, 22, 8).
horoscopo(virgo, 23, 8, 22, 9).
horoscopo(libra, 23, 9, 22, 10).
horoscopo(escorpio, 23, 10, 22, 11).
horoscopo(sagitario, 23, 11, 21, 12).

% Capricornio: 22 de diciembre - 20 de enero
signo(Dia, Mes, capricornio) :-
    (Mes == 12, Dia >= 22) ;
    (Mes == 1, Dia =< 20).

% Acuario: 21 de enero - 19 de febrero
signo(Dia, Mes, acuario) :-
    (Mes == 1, Dia >= 21) ;
    (Mes == 2, Dia =< 19).

% Piscis: 20 de febrero - 20 de marzo
signo(Dia, Mes, piscis) :-
    (Mes == 2, Dia >= 20) ;
    (Mes == 3, Dia =< 20).

% Aries: 21 de marzo - 21 de abril
signo(Dia, Mes, aries) :-
    (Mes == 3, Dia >= 21) ;
    (Mes == 4, Dia =< 21).

% Tauro: 22 de abril - 21 de mayo
signo(Dia, Mes, tauro) :-
    (Mes == 4, Dia >= 22) ;
    (Mes == 5, Dia =< 21).

% Géminis: 22 de mayo - 21 de junio
signo(Dia, Mes, geminis) :-
    (Mes == 5, Dia >= 22) ;
    (Mes == 6, Dia =< 21).

% Cáncer: 22 de junio - 22 de julio
signo(Dia, Mes, cancer) :-
    (Mes == 6, Dia >= 22) ;
    (Mes == 7, Dia =< 22).

% Leo: 23 de julio - 22 de agosto
signo(Dia, Mes, leo) :-
    (Mes == 7, Dia >= 23) ;
    (Mes == 8, Dia =< 22).

% Virgo: 23 de agosto - 22 de septiembre
signo(Dia, Mes, virgo) :-
    (Mes == 8, Dia >= 23) ;
    (Mes == 9, Dia =< 22).

% Libra: 23 de septiembre - 22 de octubre
signo(Dia, Mes, libra) :-
    (Mes == 9, Dia >= 23) ;
    (Mes == 10, Dia =< 22).

% Escorpio: 23 de octubre - 22 de noviembre
signo(Dia, Mes, escorpio) :-
    (Mes == 10, Dia >= 23) ;
    (Mes == 11, Dia =< 22).

% Sagitario: 23 de noviembre - 21 de diciembre
signo(Dia, Mes, sagitario) :-
    (Mes == 11, Dia >= 23) ;
    (Mes == 12, Dia =< 21).