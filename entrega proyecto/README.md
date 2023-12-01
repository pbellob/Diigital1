# Sistema de Parqueadero Automatizado

### Paola Alejandra Bello Buitrago- Jose Miguel Sanchez Vargas- Juan Daniel Nova Ruiz


## Descripción y Contexto del Problema

En el mundo moderno, los parqueaderos se han convertido en una necesidad en casi todos los lugares, desde centros comerciales hasta residencias y oficinas. Sin embargo, el proceso de estacionamiento puede ser estresante y desafiante, especialmente en espacios reducidos o en horas de alto flujo.

De acuerdo con esto se pueden generar algunos inconvenientes, de los cuales remarcaremos estos problemas usuales:

•	Dificultad para encontrar un espacio vacío: En un parqueadero grande o lleno, los conductores pueden pasar mucho tiempo buscando un espacio disponible.

•	Riesgo de colisiones: Sin la ayuda de un sistema de guía, los conductores pueden llegar a chocar con la parte trasera o no acomodar bien el vehículo.

•	Inconveniencia en el pago: El proceso de pago puede ser lento y requerir interacción humana, lo que puede causar retrasos.

Por lo cual buscamos resolver estos problemas mediante la implementación de un sistema de parqueadero automatizado.

Con la ayuda de la electrónica digital, planteamos un sistema que utiliza sensores y actuadores para mejorar la experiencia de estacionamiento, aumentando la eficiencia y la seguridad. Algunas de las cosas que incluye el sistema son:

•	Un sensor de proximidad que abrirá la puerta del parqueadero automáticamente y alertará al conductor si está demasiado cerca de un obstáculo.

•	Una pantalla LCD que mostrará diferentes estados, como un mensaje de bienvenida cuando el parqueadero esté vacío, el tiempo de ocupación cuando un vehículo esté estacionado, y el costo total cuando el vehículo se vaya.

•	Una puerta automática movida por un servomotor que se basa en que tan cerca está el automóvil para ingresar y cuando sale, esta misma llevará unos leds para informar el estado del parqueadero, si está o no desocupado.

## Implementación 
Este fue el resultado de la implementación del proyecto.
![Implementación](Implementacion.jpeg)
y este fue el diseño que se implementó:
![Diseño](Mapa.jpeg)

## Metodología

Para llevar a cabo este proyecto, utilizaremos Digital (una herramienta que modela sistemas digitales) para convertir nuestros diseños a Verilog (un lenguaje de descripción de hardware utilizado en la electrónica digital). A medida que avanzamos, adaptamos cada parte del proyecto de acuerdo con los conceptos y técnicas aprendidos en la materia de Electrónica Digital 1.

Revisemos las funciones que se usaron para llevar a cabo este proyecto:

•	Top

![](media/image1.jpeg){width="5.931182195975503in" height="1.7048020559930008in"}

En el top se encuentra el proyecto condensado ya con todas las funciones, este es el que se sube a la FPGA que lo implementa.

•	sensor2

![](media/image2.jpeg){width="5.016666666666667in" height="2.0718700787401576in"}

Este sistema es para usar el sensor de proximidad y trabajar con su funcionamiento para tomar el dato de la distancia en una base numérica. Aunque también tiene implementaciones en actuadores, como el buzzer y los leds.

•	relojC

![](media/image3.jpeg){width="5.492938538932633in" height="2.3229046369203847in"}

•	cntr

![](media/image4.jpeg){width="5.669491469816273in" height="1.9840277777777777in"}

•	divFl

![](media/image5.jpeg){width="6.136587926509186in" height="1.0692082239720035in"}

Divisor de frecuencia realizado con 12 FF tipo D.

•	tpulso

![](media/image6.jpeg){width="6.136474190726159in" height="1.8997178477690289in"}

•	distancia

![](media/image7.jpeg){width="2.7618055555555556in" height="2.8640616797900265in"}

•	cntr4

![](media/image8.jpeg){width="6.1375in" height="2.2in"}

•	Nollego

![](media/image9.jpeg){width="6.1375in" height="1.75in"}

•	F.alc

![](media/image10.jpeg){width="6.1375in" height="1.1in"}

•	9bitsToBcd

![](media/image11.jpeg){width="6.1375in" height="1.1916666666666667in"}

Para realizar el conversor a BCD se necesita de un sumador completo implementado en el subsistema bitToBcd.

•	bitsToBcd

![](media/image12.jpeg){width="3.475in" height="2.775in"}

•	Suma_resta

![](media/image13.jpeg){width="2.1666666666666665in" height="2.908333333333333in"}

•	Sumres

![](media/image14.jpeg){width="2.1083333333333334in" height="2.9166666666666665in"}

•	Fracción

![](media/image15.jpeg){width="2.9166666666666665in" height="2.9166666666666665in"}

•	Buzzer

![](media/image16.jpeg){width="4.191666666666666in" height="2.825in"}

•	La

![](media/image17.jpeg){width="5.641666666666667in" height="2.7083333333333335in"}

•	Frecuency

![](media/image18.jpeg){width="2.841666666666667in" height="2.875in"}

•	Si

![](media/image19.jpeg){width="5.625in" height="1.9333333333333333in"}

•	Línea

![](media/image20.jpeg){width="3.558333333333333in" height="2.8583333333333334in"}

•	Eq

![](media/image21.jpeg){width="5.633333333333334in" height="1.2166666666666666in"}

•	Hide

![](media/image22.jpeg){width="3.175in" height="2.725in"}

•	Ctr

![](media/image23.jpeg){width="5.258333333333334in" height="1.2916666666666667in"}

•	Seg7

![](media/image24.jpeg){width="1.5in" height="2.933333333333333in"}

•	Led_h

![](media/image25.jpeg){width="3.966666666666667in" height="2.7666666666666666in"}

•	Seg

![](media/image26.jpeg){width="4.775in" height="2.6666666666666665in"}

•	cuarto_s

![](media/image27.jpeg){width="5.9in" height="2.2916666666666665in"}

•	counting

![](media/image28.jpeg){width="4.125in" height="2.85in"}

•	motor

![](media/image29.jpeg){width="4.7in" height="2.775in"}

•	ms20

![](media/image30.jpeg){width="5.166666666666667in" height="0.8916666666666667in"}

•	a0

![](media/image31.jpeg){width="4.966666666666667in" height="1.1166666666666667in"}

•	a90

![](media/image32.jpeg){width="4.975in" height="1.075in"}

•	precio2

![](media/image33.jpeg){width="6.008333333333334in" height="1.725in"}

•	9bitsToBcd

![](media/image11.jpeg){width="5.966666666666667in" height="0.9833333333333333in"}

•	bitsToBcd

![](media/image12.jpeg){width="3.35in" height="2.658333333333333in"}

•	Suma_resta

![](media/image13.jpeg){width="2.0in" height="2.825in"}

•	Sumres

![](media/image14.jpeg){width="1.8416666666666666in" height="2.8916666666666666in"}

•	11bitsToBcd

![](media/image34.jpeg){width="5.991666666666666in" height="1.0166666666666666in"}

•	bitsToBcd

![](media/image12.jpeg){width="3.408333333333333in" height="2.6416666666666666in"}

•	Suma_resta

![](media/image13.jpeg){width="2.1083333333333334in" height="2.8333333333333335in"}

•	Sumres

![](media/image14.jpeg){width="2.0083333333333333in" height="2.908333333333333in"}

•	guarda

![](media/image35.jpeg){width="5.941666666666666in" height="2.191666666666667in"}

