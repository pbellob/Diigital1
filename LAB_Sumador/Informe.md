## Informe Sumador-restador
### Universidad Nacional de Colombia 
#### Paola Bello Buitrago, Jose Miguel Sanchez
* [Introducción](#introducción)
* [Marco Teorico](#Marco-teorico)
  * [Tablas de verdad](#tablas-de-verdad)
  * [Expresión algebraica asociadas al circuito](#Expresión-algebraica-asociadas-al-circuito)
  * [Mapas de karnaugh](#Mapas-de-karnaugh)
* [Procedimiento](#Procedimiento)
  * [Simulación](#Simulación)
* [Resultados](#Resultados)
  ***
  
## Introducción ##
La tecnologia se basa en un lenguaje básico que está basado en el algebra booleal, este tiene operaciones y basicamente es el lenguaje que toda maquina tiene.\
Al tener las compuertas logicas nos dimos cuenta que son operaciones como la suma y la multiplicación siendo OR y AND respectivamente, usando estas compuertas en mayor cantidad se obtiene varias ecuaciones de operaciones ideales para obtener operaciones de los diferentes números, para ejemplificar en este laboratorio generaremos un sumador y restador del cual tomaremos su tabla de verdad, el mapa de karnaugh y diferentes analisis para lograr entender su funcionamientoa y saber en que lo podemos aplicar.
## Marco Teorico ##
Para lograr entender un sumador-restador necesitamos entender sus métodos de análisis, entre ellos está las tablas de verdad , expresión algebraíca asociada al circuito, mapas de karnaugh.
### Tablas de Verdad ###
Basicamente muestran la salida que tendrá el circuito dependiendo de las entradas que tenga, en este caso se hará una compuerta, donde su tabla de verdad será:\
<image src="/LAB_Sumador/images/ejem.png" alt="Compuerta para ejemplificar">\
El cual su tabla de verdad se muestra acontinuación y nos damos cuenta que si reemplazamos  por un 1 o 0 en las entradas obtenemos esa salida:\
<image src="/LAB_Sumador/images/TV.png" alt="Tabla de verdad">\
### Expresión algebraica asociadas al circuito ###
Este tipo de expresión es basicamente como podemos expresar matemáticamente nuestro circuito, usando el mismo ejemplo de las tabla de verdad encontramos que su expresión algebraica es:\
(ABD+ACB), esta expresión se puede obtener mediante los mapas de karnaugh que serán explicados a continuación.
### Mapas de karnaugh ###
Es una manera de simplificar las funciones logicas, puede ser tomado como una representación bidimensional de la tabla de verdad para lograr una ecuacion asociada al circuito se representa de la siguiente manera para nuestro ejemplo:\
<image src="/LAB_Sumador/images/Mapa.png" alt="Mapa de karnaugh">\
Como podemos ver se halla las operaciones en donde encontramos un 1, donde en este caso será:/\
(AB~C~D +ABCD)+(ABCD+ABC~D~) donde se puede simplificar de esta manera ABD(~C~+C)+ABC(D+~D~) obteniendo ABD+ABC.\
### Procedimiento ###
Los archivos necesarios para enterder el proceso que hicimos para esta practica está en:\
[Carpeta Sumador](./Circuitos/Sumador)\
En principio usaremos el sigiente circuito digital:\
<image src="/LAB_Sumador/Circuitos/Sumador/Simulación/paralelladder.svg/" alt="Circuito digital Sumador">\
Donde cada fullhadder esta conformado por:\
<image src="/LAB_Sumador/Circuitos/Sumador/Simulación/fulladderbw.png/" alt="Circuito digital Sumador-completo">\
Y a su vez está conformado por otro circuito que es el medio sumador que esta formado por:\
<image src="/LAB_Sumador/Circuitos/Sumador/Simulación/halfadder.png/" alt="Circuito digital medio- sumador">\
Con este circuito digital, la herramienta Digital nos proporciona los analisis necesarios, tales como:\
Tablas de verdad: Al abrir el archivo [Sumador](./Circuitos/Sumador/paralelladder.dig), al tener el archivo abierto, hay que dirigirse al botón análisis, en esta página aparece la tabla de verdad y junto a ello también se podrá encontrarlos Mapas de Karnaught que aparecerá en oprimiendo el botón F9, al abrir el analisis también aparece la ecuación relacionada con el sumador.\
#### Simulación: ####
Para la simulación en digital usamos la herramienta test, para verificar que efectivamente el sumador funciona, se hará en este caso, elegimos 16 pruebas al azar de suma de dos números para que de esta manera se certifique que el sumador funciona de manera perfecta

