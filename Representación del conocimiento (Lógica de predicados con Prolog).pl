/*Hecho por:
Cristian Iván Zavala García
Marco Alberto Diosdado Nava*/
/*El programa es capaz de decirte que planta sirve para ciertas enfermedades, así como también
decir el modo de implementación. Además, te dice si una planta es buena para cierta enfermedad o no*/
uso(cocimiento).
uso(infusion).
uso(maceracion).
uso(jarabe).
uso(jugo).
uso(horchata).
uso(tintura).
uso(directo).
uso(diuretico).

planta(abrojo).
planta(acacia).
planta(acanto).
planta(abrojo).
planta(aceitilla).
planta(achicoria).

uso_planta(abrojo,diuretico).
uso_planta(acacia,directo).
uso_planta(acanto,maceracion).
uso_planta(aceitilla,cocimiento).
uso_planta(achicoria,diuretico).

inflamacion(abrojo).
afeccion(abrojo).
dolor(acacia).
picadura(acanto).
respiratorio(acacia).
cansancio(aceitilla).
depresion(aceitilla).
estomacal(achicoria).

afeccion_pecho(X,Y):-planta(X),uso(Y),afeccion(X),uso_planta(X,Y).
inflamacion_ojos(X,Y):-planta(X),uso(Y),inflamacion(X),uso_planta(X,Y).
inflamacion_higado(X,Y):-planta(X),uso(Y),inflamacion(X),uso_planta(X,Y).
dolor_garganta(X,Y):-planta(X),uso(Y),dolor(X),uso_planta(X,Y).
tos(X,Y):-planta(X),uso(Y),respiratorio(X),uso_planta(X,Y).
bronquitis(X,Y):-planta(X),uso(Y),respiratorio(X),uso_planta(X,Y).
picadura_cobra(X,Y):-planta(X),uso(Y),picadura(X),uso_planta(X,Y).
cansancio_intelectual(X,Y):-planta(X),uso(Y),cansancio(X),uso_planta(X,Y).
depresion_aerosa(X,Y):-planta(X),uso(Y),depresion(X),uso_planta(X,Y).
digestion(X,Y):-planta(X),uso(Y),estomacal(X),uso_planta(X,Y).
colicos(X,Y):-planta(X),uso(Y),estomacal(X),uso_planta(X,Y).
estrenimiento(X,Y):-planta(X),uso(Y),estomacal(X),uso_planta(X,Y).