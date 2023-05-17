#TALLER 08 


Investigación 05
Para esta practica, profundice lo hablado en clase. Investigue los siguientes tópicos y de su opinión:

1.	Por qué es importante para un planificador diferenciar entre un programa limitado por I/O y por CPU?


Es importante para un planificador diferenciar entre un programa limitado por I/O y por CPU porque así puede ejecutar los procesos de forma más eficiente, ya que los procesos limitados por I/O tienen ráfagas de CPU cortas, lo que significa que utilizan por menos tiempo el procesador y salen de forma más rápida para que otro proceso pueda utilizarlo.


2.	Como entran en conflicto en determinadas configuraciones la utilización de CPU y tiempo de respuesta?


la utilización de la CPU y el tiempo de respuesta entran en conflicto en determinadas configuraciones cuando el CPU no es utilizado debidamente por el sistema operativo, lo que hace que el tiempo de respuesta aumente debido a que el sistema operativo limita el tiempo de respuesta del procesador. Esto puede ocurrir, por ejemplo, cuando hay muchos procesos en espera o cuando el algoritmo de planificación no es el más adecuado para la carga de trabajo.


3.	Como entran en conflicto en determinadas configuraciones el tiempo medio de procesamiento y tiempo máximo de espera?


el tiempo medio de procesamiento y el tiempo máximo de espera entran en conflicto en determinadas configuraciones cuando los procesos están en espera y tienen un tiempo de procesamiento muy corto. Esto puede ocurrir, por ejemplo, cuando hay muchos procesos con ráfagas de CPU similares o cuando el algoritmo de planificación no es el más adecuado para la distribución de los procesos.


4.	Como entran en conflicto en determinadas configuraciones la utilización de los dispositivos I/O y la utilización de la CPU?

la utilización de los dispositivos I/O y la utilización de la CPU entran en conflicto en determinadas configuraciones cuando el procesador espera a los dispositivos I/O una respuesta para ser ejecutados y el CPU no es utilizado de manera completa ya que los procesos entran y salen del procesador. Esto puede ocurrir, por ejemplo, cuando hay muchos procesos que requieren operaciones de entrada y salida o cuando el algoritmo de planificación no es el más adecuado para la asignación de los recursos.






5.	Considere el siguiente conjunto de procesos, todos llegan al mismo tiempo en el orden del subíndice:
 
Dibuje el diagrama de Gantt para FCFS, SJF, por prioridades (# de prioridad baja = a alta prioridad) y RR (cuanto = 1).







8.	Que algoritmo puede dar lugar a bloqueos indefinidos?

El  algoritmo por prioridades RR ya que este interrumpe demasiado los procesos y los deja en un estado de espera el cual si la CPU recibe más procesos se puede prolongar el tiempo de espera


9.	Considere un sistema que implementa una planificación por colas multinivel. Que estrategia puede utilizar una computadora para maximizar la cantidad de tiempo de CPU asignada al proceso del usuario?


una estrategia que puede utilizar una computadora para maximizar la cantidad de tiempo de CPU asignada al proceso del usuario es utilizar un algoritmo de planificación por colas multinivel que clasifique los procesos en diferentes grupos según sus características y necesidades, y que asigne a cada grupo una cola con un algoritmo de planificación distinto. Por ejemplo, se puede asignar a los procesos interactivos una cola con un algoritmo de Round Robin, que les garantice un tiempo de respuesta rápido y equitativo, y a los procesos por lotes una cola con un algoritmo de FCFS, que les permita aprovechar las ráfagas largas de CPU. Además, se debe establecer un criterio de planificación entre las colas, que puede ser de prioridad fija o variable, con o sin expropiación. La expropiación permite que un proceso pueda ser expulsado del procesador si llega otro proceso más prioritario, lo que puede favorecer a los procesos del usuario si se les asigna una mayor prioridad que a los procesos del sistema.

