## Informe Sumador-restador
### Universidad Nacional de Colombia 
#### Paola Bello Buitrago, Jose Miguel Sanchez
* [Introducción](#introducción)
* [Marco Teorico](#Marco-teorico)
  * [Tablas de verdad](#tablas-de-verdad)
  * [Expresión algebraica asociadas al circuito](#Expresión-algebraica-asociadas-al-circuito)
  * [Mapas de karnaugh](#Mapas-de-karnaugh)
* [Procedimiento y resultados](#Procedimiento-y-resultados)
  * [Sumador Completo](#Sumador-completo)
    * [Simulación y casos de prueba (Digital)](#Simulación-y-casos-de-prueba-digital)
    * [Simulación y casos de prueba (iverilog y gtkwave)](#Simulación-y-casos-de-prueba-iverilog-y-gtkwave)
  * [Sumador Restador](#Sumador-restador)
    * [Simulación (iverilog y gtkwave)](#Simulación-iverilog-y-gtkwave)
* [Conclusiones](#Conclusiones)
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
### Procedimiento y resultados ###
### Sumador Completo ###
Los archivos necesarios para entender el proceso que hicimos para esta practica está en:\
[Carpeta Sumador](./Circuitos/Sumador)\
En principio usaremos el sigiente circuito digital:\
<image src="/LAB_Sumador/Circuitos/Sumador/Simulación/paralelladder.svg/" alt="Circuito digital Sumador">\
Donde cada fullhadder esta conformado por:\
<image src="/LAB_Sumador/Circuitos/Sumador/Simulación/fulladderbw.png/" alt="Circuito digital Sumador-completo">\
Y a su vez está conformado por otro circuito que es el medio sumador que esta formado por:\
<image src="/LAB_Sumador/Circuitos/Sumador/Simulación/halfadder.png/" alt="Circuito digital medio- sumador">\
Con este circuito digital, la herramienta Digital nos proporciona los analisis necesarios, tales como:\
Tablas de verdad: Al abrir el archivo [Sumador](./Circuitos/Sumador/paralelladder.dig), al tener el archivo abierto, hay que dirigirse al botón análisis, en esta página aparece la tabla de verdad y junto a ello también se podrá encontrarlos Mapas de Karnaught que aparecerá en oprimiendo el botón F9, al abrir el analisis también aparece la ecuación relacionada con el sumador.\
### Simulación y casos de prueba (Digital): ###
Para la simulación en digital usamos la herramienta test, para verificar que efectivamente el sumador funciona, se hará en este caso, elegimos 16 pruebas al azar de suma de dos números para que de esta manera se certifique que el sumador funciona de manera perfecta.\
<image src="/LAB_Sumador/images/test.png" alt="Test">\
A continuación también se obtiene en la simulación con una simulación de esta señal:\
<image src="/LAB_Sumador/images/Datos_prueba.png" alt="Tabla">
### Simulación y casos de prueba (iverilog y gtkwave): ###
A continuación se  mostrará la simulación de iverilog, estos archivos se encuentran en la [carpeta sumador](./Circuitos/Sumador)
Para empezar la simulación debemos primero abrir el archivo [sumador completo](./Circuitos/Sumador/paralelladder_tb.v) el cual es el archivo donde está configurada la simulación que deseamos hacer, es decir los casos de prueba. Al usar el comando para poder generar el archivo [simulador-vvp](./Circuitos/Sumador/top.vvp) este es el que nos va ayudar a poder hacer la simulación por gtkwave.\ El archivo vvp, este genera otro archivo tipo vcd que en este caso se llama [simulador_vcd](./Circuitos/Sumador/top.vcd), ya con este archivo y ahora ejecutamos gtkwave el cual nos presenta estas dos pruebas para nuestro sumador.\ <image src="/LAB_Sumador/Circuitos/Sumador/Simulación/gtkwave_1.png" alt="Test_gtkwave">\
<image src="/LAB_Sumador/Circuitos/Sumador/Simulación/gtkwave_2.png" alt="Test">\
De esta manera se termina la simulación del sumador completo.
### Sumador Restador ###
Los archivos necesarios para entender el proceso que hicimos para esta practica está en:\
[Carpeta Sumador](./Circuitos/Sumador_restador(1).zip)\
A continuación se  mostrará la simulación de iverilog, estos archivos se encuentran en la [carpeta sumador](./Circuitos/Sumador-restador)
### Simulación (iverilog y gtkwave): ###
Para empezar la simulación debemos primero abrir el archivo [sumador completo](./Circuitos/Sumador-restador/suma_resta_tb.v) el cual es el archivo donde está configurada la simulación que deseamos hacer, es decir los casos de prueba. Al igual que el sumador se debe generar el comando para que se genere el documento vvp [simulador-vvp](./Circuitos/Sumador-restador/top.vvp) dando el archivo que necesitamos para poder simularlo en gtkwave.\ Este archivo tipo vvp, genera otro archivo tipo vcd que en este caso se llama [top.vcd](./Circuitos/Sumador-restador/top.vcd), ya con este archivose ejecutará gtkwave el cual nos presenta estas dos pruebas para nuestro sumador.\ <image src="/LAB_Sumador/Circuitos/Sumador-restador/a.png" alt="Test_gtkwave">\
<image src="/LAB_Sumador/Circuitos/Sumador-restador/b.png" alt="Test">\
### Conclusiones ###
* En esta práctica se pudo concluir que efectivamente el circuito desarrollado cumple las simulaciones y los casos de pruebas indicados para que pudieramos decir que es un sumador y un sumador-restador.
* Para el restador nos damos cuenta que la resta se puede considerar una "suma" la diferencia radicará en el c_out, pero se su construcción se puede basar en un sumador.
* Las herramientas usadas para esta práctica, son muy buenas para desarrollar una mayor comprensión de los sumadores y su logica, relacionando las ondas, las tablas y las matematicas necesarias para avanzar e ir desarrollando conocimientos más especificos.

