# Investigacion 07

## 1.Considere la imagen, demuestre que las cuatro condiciones necesarias para que se produzca un interbloqueo se cumplen. 

•	Exclusión mutua: En la imagen, cada vehículo ocupa un carril único y no puede compartirlo.

•	Espera de retención: Los vehículos mantienen un carril y al mismo tiempo esperan el acceso a otro.


•	Sin preferencia: Los carriles ocupados por un vehículo no pueden ser forzados a ser liberados.

•	Espera circular: Cada vehículo está esperando que otro libere un recurso. Esta situación es claramente visible en la imagen con los autos esperando a que el anterior se mueva.

## 2. Considere la imagen, enuncie una regla simple para evitar los interbloqueos en este sistema. 

Una regla simple para evitar los interbloqueos en este sistema introduciría un semáforo o una señal de control que regulará el flujo de los vehículos, permitiendo que sólo uno de los carriles avance a la vez.

## 3. Explique cómo se cumplen las condiciones básicas de interbloqueo en el problema de la cena de los filósofos.

las condiciones básicas de interbloqueo en el problema de la cena de los filósofos son:

•	Exclusión mutua: Dos filósofos contiguos no pueden comer a la vez.

•	Sincronización: Si un filósofo está comiendo, los contiguos no pueden hacerlo hasta que aquél termine.


•	Interbloqueo: El filósofo que termina de comer debe ceder los palillos para su posterior utilización.

## 4. Explique cómo podría evitarse los interbloqueos impidiendo que se cumpla una de las condiciones en el problema de la cena de los filósofos.
una forma de evitar los interbloqueos es impedir que se cumpla la condición de espera circular, es decir, que cada filósofo espere por el tenedor que tiene el siguiente. Esto se puede lograr de varias formas, por ejemplo:

•	Limitar el número de filósofos que pueden sentarse a la mesa a la vez, por ejemplo, a cuatro, y usar un sirviente que les dé permiso para entrar y salir del comedor.

•	Asignar un orden de prioridad a los tenedores y hacer que cada filósofo tome primero el tenedor de mayor prioridad y luego el de menor prioridad.


•	Hacer que uno de los filósofos tome primero el tenedor de su izquierda y luego el de su derecha, mientras que los demás hagan lo contrario

##  5. Compare el esquema de espera circular con los distintos esquemas de evasión de interbloqueos en lo que respecta a tiempo de ejecución adicional necesario.

El esquema de espera circular y los esquemas de evasión de interbloqueos son enfoques diferentes para abordar el problema del interbloqueo en sistemas concurrentes. A continuación, compararé el esquema de espera circular con algunos de los esquemas de evasión de interbloqueos más comunes en cuanto al tiempo de ejecución adicional necesario:

Esquema de espera circular:
En el esquema de espera circular, cada proceso o hilo solicita los recursos en un orden específico y espera hasta que los recursos estén disponibles. Si los recursos solicitados no están disponibles, el proceso se queda en espera hasta que estén disponibles. Luego, el proceso libera los recursos adquiridos y permite que otros procesos los adquieran. Este enfoque puede llevar a situaciones de interbloqueo si los recursos no se liberan correctamente.
El tiempo de ejecución adicional necesario en el esquema de espera circular depende de varios factores, como el orden de solicitud de los recursos y la cantidad de procesos involucrados. En el peor de los casos, si todos los procesos están esperando por un recurso que está siendo retenido por otro proceso, puede ocurrir un interbloqueo y el sistema puede quedar en un estado de espera indefinida.

Algoritmo del banquero:
El algoritmo del banquero es un esquema de evasión de interbloqueos que utiliza una estrategia de asignación segura de recursos para evitar interbloqueos. En este algoritmo, se asignan recursos a los procesos de manera que se pueda garantizar que siempre habrá una forma de finalizar todas las solicitudes. El algoritmo del banquero requiere que se conozcan de antemano los recursos máximos que cada proceso puede requerir.
El tiempo de ejecución adicional necesario en el algoritmo del banquero es relativamente bajo, ya que el algoritmo realiza una verificación antes de asignar los recursos para asegurarse de que no se produzcan situaciones de interbloqueo. Sin embargo, el algoritmo puede requerir una planificación y gestión cuidadosa de los recursos, lo que puede afectar el rendimiento general del sistema.

Algoritmo de detección y recuperación:
El algoritmo de detección y recuperación es otro enfoque para la evasión de interbloqueos. En este esquema, se utilizan técnicas para detectar situaciones de interbloqueo en tiempo de ejecución y se toman acciones para recuperarse de ellas. Esto puede implicar liberar algunos recursos o reiniciar procesos para resolver la situación de interbloqueo.
El tiempo de ejecución adicional necesario en el algoritmo de detección y recuperación puede variar dependiendo de la frecuencia y la complejidad de las verificaciones de interbloqueo que se realicen. La detección y recuperación de un interbloqueo puede requerir cierto tiempo y recursos adicionales, lo que puede afectar el rendimiento general del sistema durante ese período.

##  6. Compare el esquema de espera circular con los distintos esquemas de evasión de interbloqueos en lo que respecta a tasa de procesamiento del sistema.
Esquema de espera circular:
El esquema de espera circular puede tener un impacto negativo en la tasa de procesamiento del sistema. Cuando un proceso no puede adquirir los recursos necesarios debido a la espera circular, se produce un bloqueo y el proceso se queda inactivo. Esto puede llevar a una subutilización de los recursos del sistema y a un menor rendimiento global. Además, si varios procesos están esperando por un recurso en particular, puede generar inanición y retrasar el procesamiento de las tareas.

Algoritmo del banquero:
El algoritmo del banquero puede proporcionar una mayor tasa de procesamiento en comparación con el esquema de espera circular. Utiliza una estrategia de asignación segura de recursos, donde se verifica si una solicitud de recursos dejará al sistema en un estado seguro antes de ser aprobada. Esto permite una asignación eficiente de recursos y evita situaciones de interbloqueo. Como resultado, los procesos pueden avanzar sin bloqueos innecesarios, lo que mejora la tasa de procesamiento del sistema.

Algoritmo de detección y recuperación:
El algoritmo de detección y recuperación tiene un impacto mixto en la tasa de procesamiento del sistema. Por un lado, el proceso de detección de interbloqueo puede requerir ciertos recursos y tiempo de procesamiento adicional, lo que podría afectar temporalmente la tasa de procesamiento. Sin embargo, una vez que se detecta un interbloqueo, se toman medidas para recuperarse de la situación. Esto puede implicar liberar recursos y permitir que los procesos avancen nuevamente, lo que mejora la tasa de procesamiento a largo plazo.

##  7. Considere un sistema que tiene cuatro recursos del mismo tipo, compartidos entre tres procesos; cada proceso necesita como máximo dos recursos. Demuestre que el sistema está libre de interbloqueos.

Una forma de demostrar que el sistema está libre de interbloqueos es aplicar el teorema del banquero, que dice que si el número total de recursos es menor o igual que el número de procesos más el máximo de recursos que puede tener un proceso, entonces el sistema está libre de interbloqueos.
En este caso, el número total de recursos es 4, el número de procesos es 3 y el máximo de recursos que puede tener un proceso es 2. Entonces, se cumple que:
4 <= 3 + 2

##  8. Considere el problema de los filósofos, los palillos se colocan en el centro de la mesa y cualquier filósofo puede usar dos palillos, la solicitud de los palillos se hace de una en una. Describa una regla simple para determinar si una solicitud podría ser satisfecha sin dar lugar a interbloqueos, dada la asignación actual de palillos a los filósofos.

Una regla simple para determinar si una solicitud de palillos puede ser satisfecha sin dar lugar a interbloqueos en el problema de los filósofos es utilizar una estrategia de asignación ordenada.

En esta estrategia, los filósofos deben solicitar los palillos en un orden específico y seguir las siguientes reglas:

•	Los filósofos deben intentar adquirir el palillo de su izquierda primero y luego el palillo de su derecha.

•	Si un filósofo no puede adquirir el palillo de su izquierda, debe soltar cualquier palillo que ya tenga y esperar un tiempo antes de volver a intentarlo.


•	Si un filósofo no puede adquirir el palillo de su derecha, debe soltar cualquier palillo que ya tenga y esperar un tiempo antes de volver a intentarlo.
Esta regla simple ayuda a prevenir situaciones de interbloqueo asegurando que los filósofos siempre intenten adquirir los palillos en el mismo orden y siguiendo una secuencia lógica.

##  9. Cuál  es la suposición optimista realizada en el algoritmo de detección de interbloqueos y como podría violarse esta suposición.

La suposición optimista en el algoritmo de detección de interbloqueos se basa en asumir que no habrá interbloqueos en el sistema. Esta suposición optimista se utiliza para mejorar el rendimiento del algoritmo, ya que, si no se detecta ningún interbloqueo, no es necesario tomar medidas correctivas.

Sin embargo, esta suposición optimista puede ser violada si ocurre un interbloqueo real en el sistema. Un interbloqueo ocurre cuando dos o más procesos quedan bloqueados mutuamente, impidiéndose entre sí alcanzar un estado deseado y continuar su ejecución. Si el algoritmo de detección de interbloqueos se basa únicamente en la suposición optimista y no implementa medidas adicionales para detectar interbloqueos reales, el sistema puede quedar atrapado en un estado de interbloqueo sin que se tomen acciones para resolverlo.
