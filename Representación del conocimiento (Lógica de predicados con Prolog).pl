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
uso(polvo).

planta(abrojo).
planta(acacia).
planta(acanto).
planta(aceitilla).
planta(achicoria).

/*Nuevos conocimientos*/
planta(quina).
planta(regaliz).
planta(retama).
planta(belladona).
planta(berro).
planta(boldo).
/*Nuevos conocimientos*/

uso_planta(abrojo,diuretico).
uso_planta(acacia,directo).
uso_planta(acanto,maceracion).
uso_planta(aceitilla,cocimiento).
uso_planta(achicoria,diuretico).

/*Nuevos conocimientos*/
uso_planta(quina,infusion).
uso_planta(quina,tintura).
uso_planta(quina,jarabe).
uso_planta(quina,polvo).
uso_planta(quina,cocimiento).
uso_planta(regaliz,infusion).
uso_planta(retama,diuretico).
uso_planta(belladona,maceracion).
uso_planta(berro,infusion).
uso_planta(boldo,cocimiento).
/*Nuevos conocimientos*/

visual(abrojo).
hepatico(quina).
hepatico(belladona).
vucal(berro).
afeccion(abrojo).
dolor(acacia).
picadura(acanto).
respiratorio(berro).
respiratorio(acacia).
respiratorio(belladona).
cansancio(aceitilla).
depresion(aceitilla).
estomacal(achicoria).
estomacal(berro).

/*Nuevos conocimientos*/
alimentacion(quina).
alimentacion(berro).
debilidad(quina).
gastrico(regaliz).
gastrico(belladona).
urinario(retama).
baile(belladona).
mental(belladona).
vitaminas(berro).
ets(berro).
sangre(berro).
digestivo(boldo).
/*Nuevos conocimientos*/

afeccion_pecho(X,Y):-planta(X),uso(Y),afeccion(X),uso_planta(X,Y).
inflamacion_ojos(X,Y):-planta(X),uso(Y),visual(X),uso_planta(X,Y).
inflamacion_higado(X,Y):-planta(X),uso(Y),hepatico(X),uso_planta(X,Y).
dolor_garganta(X,Y):-planta(X),uso(Y),dolor(X),uso_planta(X,Y).
tos(X,Y):-planta(X),uso(Y),respiratorio(X),uso_planta(X,Y).
bronquitis(X,Y):-planta(X),uso(Y),respiratorio(X),uso_planta(X,Y).
picadura_cobra(X,Y):-planta(X),uso(Y),picadura(X),uso_planta(X,Y).
cansancio_intelectual(X,Y):-planta(X),uso(Y),cansancio(X),uso_planta(X,Y).
depresion_aerosa(X,Y):-planta(X),uso(Y),depresion(X),uso_planta(X,Y).
digestion(X,Y):-planta(X),uso(Y),estomacal(X),uso_planta(X,Y).
colicos(X,Y):-planta(X),uso(Y),estomacal(X),uso_planta(X,Y).
estrenimiento(X,Y):-planta(X),uso(Y),estomacal(X),uso_planta(X,Y).

/*Nuevos conocimientos*/
anemia(X,Y):-planta(X),uso(Y),alimentacion(X),uso_planta(X,Y).
debil(X,Y):-planta(X),uso(Y),debilidad(X),uso_planta(X,Y).
inflamacion_encias(X,Y):-planta(X),uso(Y),vucal(X),uso_planta(X,Y).
mal_aliento(X,Y):-planta(X),uso(Y),alimentacion(X),uso_planta(X,Y).
dolor_ulceras(X,Y):-planta(X),uso(Y),gastrico(X),uso_planta(X,Y).
trastorno_urinario(X,Y):-planta(X),uso(Y),urinario(X),uso_planta(X,Y).
mareos(X,Y):-planta(X),uso(Y),mental(X),uso_planta(X,Y).
baile_sambito(X,Y):-planta(X),uso(Y),baile(X),uso_planta(X,Y).
epilepsia(X,Y):-planta(X),uso(Y),mental(X),uso_planta(X,Y).
asma(X,Y):-planta(X),uso(Y),respiratorio(X),uso_planta(X,Y).
tosferina(X,Y):-planta(X),uso(Y),respiratorio(X),uso_planta(X,Y).
colicos_hepaticos(X,Y):-planta(X),uso(Y),hepatico(X),uso_planta(X,Y).
gastralgia(X,Y):-planta(X),uso(Y),gastrico(X),uso_planta(X,Y).
inflamacion_gastrica(X,Y):-planta(X),uso(Y),gastrico(X),uso_planta(X,Y).
dolor_estomago(X,Y):-planta(X),uso(Y),estomacal(X),uso_planta(X,Y).
escorbuto(X,Y):-planta(X),uso(Y),vitaminas(X),uso_planta(X,Y).
congestion_nasal(X,Y):-planta(X),uso(Y),respiratorio(X),uso_planta(X,Y).
apetito(X,Y):-planta(X),uso(Y),estomacal(X),uso_planta(X,Y).
sifilis(X,Y):-planta(X),uso(Y),ets(X),uso_planta(X,Y).
circulacion(X,Y):-planta(X),uso(Y),sangre(X),uso_planta(X,Y).
calculos_biliares(X,Y):-planta(X),uso(Y),digestivo(X),uso_planta(X,Y).
depuracion(X,Y):-planta(X),uso(Y),digestivo(X),uso_planta(X,Y).
/*Nuevos conocimientos*/
