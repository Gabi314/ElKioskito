%% --------------------------------INTRO-----------------------
/*
Son tiempos difíciles y además de dar clases, los profesores de 
Paradigmas abrimos un kioskito. Para poder atenderlo como se debe, 
establecimos un sistema de turnos donde cada persona se hace responsable.
Por ejemplo:
- dodain atiende lunes, miércoles y viernes de 9 a 15.
- lucas atiende los martes de 10 a 20
- juanC atiende los sábados y domingos de 18 a 22.
- juanFdS atiende los jueves de 10 a 20 y los viernes de 12 a 20.
- leoC atiende los lunes y los miércoles de 14 a 18.
- martu atiende los miércoles de 23 a 24.


Consideramos siempre la hora exacta, por ejemplo: 10, 14, 17. 
Está fuera del alcance del examen contemplar horarios como 10:15 ó 17:30.
*/

%% atiende(Persona,dia(dia de la semana),horario(desde tal hora, hasta tal hora))

atiende(dodain,dia(lunes),horario(9,15)).
atiende(dodain,dia(miercoles),horario(9,15)).
atiende(dodain,dia(viernes),horario(9,15)).
atiende(lucas,dia(martes),horario(10,20)).
atiende(juanC,dia(sabado),horario(18,22)).
atiende(juanC,dia(domingo),horario(18,22)).
atiende(juanFdS,dia(jueves),horario(10,20)).
atiende(juanFdS,dia(viernes),horario(12,20)).
atiende(leoC,dia(lunes),horario(14,18)).
atiende(leoC,dia(miercoles),horario(14,18)).
atiende(martu,dia(miercoles),horario(23,24)).


/*Punto 1: calentando motores (2 puntos)
Definir la relación para asociar cada persona con el rango horario
que cumple, e incorporar las siguientes cláusulas:
- vale atiende los mismos días y horarios que dodain y juanC.
- nadie hace el mismo horario que leoC
- maiu está pensando si hace el horario de 0 a 8 los martes y miércoles

En caso de no ser necesario hacer nada, explique qué concepto teórico 
está relacionado y justifique su respuesta.
*/

atiende(vale,Dia,Horario):-
    atiende(dodain,Dia,Horario).

atiende(vale,Dia,Horario):-
    atiende(juanC,Dia,Horario).

atiende(nadie,Dia,Horario):-
    atiende(leoC,_,Horario),
    atiende(_,Dia,_).

/* Si por no hacer nada se refiere a no agregar cláusulas específicas
a la base de conocimiento entonces en este caso no es necesario hacer nada.
El concepto teórico que está relacionado es el de inversibilidad ya que
si bien se trabaja solamente con los functores dia y horario en la 





