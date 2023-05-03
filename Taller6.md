#Taller 6

1.	Describa dos ejemplos en los que los mecanismos multihilo no proporcionen un mejor rendimiento que el monohilo.

Dos ejemplos en los que los mecanismos multihilo no proporcionen un mejor rendimiento que el monohilo son:
Cuando el problema es inherentemente secuencial y no se puede dividir en subtareas independientes que se puedan ejecutar en paralelo. Por ejemplo, calcular el factorial de un número o recorrer una lista enlazada.

Cuando el costo de crear, sincronizar y destruir los hilos es mayor que el beneficio de ejecutarlos en paralelo. Por ejemplo, si hay mucha contención por los recursos compartidos o si el sistema operativo no gestiona eficientemente los cambios de contexto entre hilos.



2.	Describa las acciones que toma una biblioteca de hilos para cambiar el contexto entre hilos de nivel de usuario.

Una biblioteca de hilos cambia el contexto entre hilos de nivel de usuario mediante las siguientes acciones:
•	Guarda el estado actual del hilo que se está ejecutando en una estructura de datos llamada bloque de control de hilo (TCB).
•	Selecciona el siguiente hilo a ejecutar según algún algoritmo de planificación.
•	Restaura el estado del hilo seleccionado desde su TCB correspondiente.
•	Transfiere el control al hilo seleccionado.


3. Los valores de los registros son componentes del estado de un programa, se comparten entre los hilos de un proceso multihilo? Si, no y porqué?

Depende del tipo de registros y del sistema operativo. En general, los registros que almacenan el estado del hilo, como el contador de programa, la pila o los registros de propósito general, no se comparten entre los hilos de un proceso multihilo, sino que cada hilo tiene su propia copia. Esto permite que los hilos puedan ejecutar diferentes partes del código y tener diferentes valores en sus variables locales.

Sin embargo, los registros que almacenan el estado del proceso, como el identificador de proceso, el código, los datos o los recursos del sistema, sí se comparten entre los hilos de un proceso multihilo13. Esto permite que los hilos puedan acceder a la misma información y comunicarse entre ellos mediante variables globales o compartidas.
Por lo tanto, la respuesta es que algunos valores de los registros son componentes del estado de un programa y se comparten entre los hilos de un proceso multihilo, mientras que otros valores de los registros son componentes del estado de un hilo y no se comparten entre los hilos de un proceso multihilo


4. Los cúmulos de memoria se comparten entre los hilos de un proceso multihilo? Si, no y porqué?


Sí, los cúmulos de memoria se comparten entre los hilos de un proceso multihilo12. Esto se debe a que los hilos comparten el mismo espacio de direcciones virtual y todos los recursos del proceso1. Lo que es propio de cada hilo es el contador de programa, la pila de ejecución y el estado de la CPU. Los hilos pueden acceder y modificar la memoria de otros hilos dentro del mismo proceso


5. Las variables globales se comparten entre los hilos de un proceso multihilo? Si, no y porqué?


Sí, las variables globales se comparten entre los hilos de un proceso multihilo. Una variable global es aquella que se declara fuera de cualquier función o procedimiento y que puede ser accedida por cualquier parte del código. Como los hilos de un proceso multihilo comparten el mismo espacio de direcciones, pueden acceder a las mismas variables globales. Esto puede facilitar la comunicación entre los hilos, pero también puede generar problemas de sincronización o consistencia si varios hilos intentan modificar la misma variable global al mismo tiempo.


6. La memoria de pila se comparten entre los hilos de un proceso multihilo? Si, no y porqué?


No, la memoria de pila no se comparte entre los hilos de un proceso multihilo1. Esto se debe a que los hilos tienen pilas de llamadas independientes, que almacenan información local de cada hilo. Sin embargo, la memoria de pila de otros hilos es accesible y puede ser modificada por otros hilos dentro del mismo proceso, lo que puede causar problemas de sincronización o inconsistencia.


7. En que ocasiones una solución multihilo que usa múltiples hilos del kernel proporciona mejor rendimiento que un solo hilo sobre un sistema monoprocesador.


Una solución multihilo que usa múltiples hilos del kernel puede proporcionar mejor rendimiento que un solo hilo sobre un sistema monoprocesador en ocasiones en las que:
El proceso tiene muchas operaciones de entrada/salida (E/S) que bloquean el hilo en espera de un dispositivo externo. En este caso, el uso de múltiples hilos permite aprovechar el tiempo que el hilo bloqueado está ocioso y ejecutar otro hilo que pueda realizar cálculos.
El proceso tiene varias tareas independientes que se pueden ejecutar en paralelo. En este caso, el uso de múltiples hilos permite distribuir el trabajo entre los hilos y reducir el tiempo total de ejecución.


El proceso tiene que atender a varios usuarios o clientes simultáneamente. En este caso, el uso de múltiples hilos permite ofrecer un servicio interactivo y eficiente a cada usuario o cliente, sin que tengan que esperar a que se termine de atender a otro1.
Estas ventajas dependen también del tipo de multihilo que se utilice. Existen dos tipos de multihilo: a nivel de usuario y a nivel de kernel. En el multihilo a nivel de usuario, los hilos son gestionados por una biblioteca o una aplicación sin intervención del sistema operativo. En el multihilo a nivel de kernel, los hilos son gestionados por el sistema operativo y son conocidos como procesos ligeros.


El multihilo a nivel de usuario tiene la ventaja de que los cambios de contexto entre hilos son más rápidos y no requieren privilegios de sistema. Sin embargo, tiene la desventaja de que si un hilo se bloquea por una operación de E/S, todo el proceso se bloquea y no puede ejecutar otro hilo. Además, no puede aprovechar la existencia de múltiples procesadores o núcleos.

El multihilo a nivel de kernel tiene la ventaja de que los hilos pueden ejecutarse en paralelo en diferentes procesadores o núcleos y que si un hilo se bloquea por una operación de E/S, el sistema operativo puede asignar otro hilo al procesador. Sin embargo, tiene la desventaja de que los cambios de contexto entre hilos son más costosos y requieren privilegios de sistema.


Por lo tanto, una solución multihilo que usa múltiples hilos del kernel puede proporcionar mejor rendimiento que un solo hilo sobre un sistema monoprocesador siempre que las ventajas superen a las desventajas mencionadas.


 8. Puede una solución multihilo que utiliza múltiples hilos de usuario conseguir mejor rendimiento en un sistema multiprocesador que en un sistema de un solo procesador? 

Depende de varios factores, como el tipo de aplicación, el número de hilos, la gestión del planificador y la sincronización entre hilos. En general, la programación multihilo permite aprovechar mejor los recursos del procesador y reducir los tiempos de espera entre procesos. Sin embargo, no siempre implica una mejora de rendimiento, y puede causar problemas de sobrecarga, interferencia o inconsistencia. Además, los hilos de usuario dependen del soporte del sistema operativo y pueden no beneficiarse de la presencia de múltiples procesadores.


9. Suponga que el numero de hilos del usuario es mayor que el numero de procesadores del sistema. Explique el impacto sobre el rendimiento cuando el numero de hilos del kernel asignados al programa es menor que el numero de procesadores.


Si el número de hilos del usuario es mayor que el número de procesadores del sistema, significa que no todos los hilos del usuario pueden ejecutarse en paralelo y que algunos tendrán que esperar a que se libere un procesador. Esto implica que el rendimiento del programa dependerá de la frecuencia y la duración de los cambios de contexto entre los hilos del usuario.

Si el número de hilos del kernel asignados al programa es menor que el número de procesadores, significa que no se está aprovechando todo el potencial del sistema y que algunos procesadores estarán ociosos. Esto implica que el rendimiento del programa será menor que el óptimo y que se podría mejorar aumentando el número de hilos del kernel.


Por lo tanto, el impacto sobre el rendimiento cuando el número de hilos del kernel asignados al programa es menor que el número de procesadores es negativo, ya que se desperdicia recursos y se reduce la velocidad de ejecución.
