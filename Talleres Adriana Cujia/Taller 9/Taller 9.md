# Investigacion 06

1. Cual es significado del término espera activa?

La espera activa es una técnica donde un proceso repetidamente verifica una condición, tal como esperar una entrada de teclado o si el ingreso a una sección crítica está habilitado. Puede ser una estrategia válida en algunas circunstancias especiales, sobre todo en la sincronización de procesos en los sistemas con múltiples procesadores (SMP). En general, debe ser evitada, ya que consume tiempo de CPU sin realizar ninguna operación.

 2. De que manera se puede evitar la espera activa?

Una forma de evitar la espera activa es usar un semáforo, que es una variable que controla el acceso a una sección crítica. Un semáforo puede tener asociada una cola de procesos (normalmente una cola FIFO). Si un proceso efectúa una operación P en un semáforo que tiene valor cero, el proceso es detenido y añadido a la cola del semáforo. Cuando otro proceso libera el semáforo con una operación V, se despierta al primer proceso de la cola y se le concede el acceso a la sección crítica.

 3. Explique por qué los bloqueos mediante bucle sin fin no son apropiados para sistemas monoprocesador, pero se usan con frecuencia en los sistemas multiprocesador. 

Los bloqueos mediante bucle sin fin son una técnica de sincronización que consiste en que un proceso que quiere acceder a una sección crítica comprueba continuamente una variable compartida hasta que esta le permite el acceso. Esta técnica no es apropiada para sistemas monoprocesador porque mientras un proceso está ejecutando el bucle sin fin, ningún otro proceso puede ejecutar su sección crítica, ya que la CPU está ocupada por el proceso en espera. Esto provoca un desperdicio de tiempo de CPU y puede causar inanición o interbloqueo.

En cambio, en los sistemas multiprocesador, los bloqueos mediante bucle sin fin pueden ser útiles cuando se espera que los cerrojos se mantengan durante un periodo de tiempo corto, ya que no requieren ningún cambio de contexto cuando un proceso tiene que esperar para adquirir un cerrojo. Los cambios de contexto pueden llevar un tiempo considerable. Por tanto, en los sistemas multiprocesador, una hebra puede “ejecutar un bucle” sobre un procesador mientras otra hebra ejecuta su sección crítica en otro procesador.





4. Explique por qué las interrupciones no son apropiadas para implementar primitivas de sincronización en los sistemas multiprocesador. 

Las interrupciones son señales o eventos que interrumpen la ejecución normal de un programa para atender una tarea específica. En los sistemas multiprocesador, las interrupciones no son apropiadas para implementar primitivas de sincronización, como locks o semáforos, debido a las siguientes razones:

•	Problemas de coherencia de caché: En un sistema multiprocesador, cada procesador tiene su propia memoria caché local para mejorar el rendimiento y reducir los accesos a la memoria principal. Cuando se produce una interrupción en uno de los procesadores, se debe sincronizar el estado de la caché con los demás procesadores para garantizar la coherencia de los datos compartidos. Esto puede generar un alto costo en términos de rendimiento debido a las operaciones de invalidación y actualización de caché que deben llevarse a cabo.

•	Inconsistencias de datos: Las interrupciones pueden ocurrir en cualquier momento y en cualquier procesador. Si se utiliza una interrupción para implementar una primitiva de sincronización, existe la posibilidad de que se produzcan inconsistencias de datos. Por ejemplo, si un procesador adquiere un lock y, antes de liberarlo, se produce una interrupción que cambia el contexto a otro procesador, este último podría intentar adquirir el mismo lock sin ser consciente de que ya está en uso, lo que llevaría a un comportamiento inesperado y posibles problemas de concurrencia.

•	Pérdida de rendimiento:Las interrupciones pueden introducir una sobrecarga significativa en un sistema multiprocesador. Cuando se produce una interrupción, se detiene la ejecución del programa actual y se pasa a atender la interrupción. Esto implica un cambio de contexto, en el que se deben guardar y restaurar los registros y el estado del procesador. En un entorno multiprocesador, donde varias tareas se ejecutan en paralelo, el uso excesivo de interrupciones puede resultar en una pérdida de rendimiento debido al tiempo consumido en el cambio de contexto y la coordinación entre los procesadores.

•	Complejidad y dificultad de programación:El uso de interrupciones para implementar primitivas de sincronización en sistemas multiprocesador puede llevar a una mayor complejidad y dificultad de programación. La gestión adecuada de las interrupciones y la sincronización de los datos compartidos entre los procesadores requiere un cuidadoso diseño y control. Esto puede aumentar la posibilidad de errores, condiciones de carrera y otros problemas de concurrencia, lo que dificulta el desarrollo y el mantenimiento del software.

En lugar de utilizar interrupciones, en los sistemas multiprocesador se suelen emplear otros mecanismos de sincronización más adecuados, como locks, semáforos, barreras de sincronización, entre otros. Estas primitivas están diseñadas específicamente para gestionar la concurrencia y garantizar la consistencia de los datos compartidos en entornos multiprocesador, evitando los problemas mencionados anteriormente.


5. Describa como se puede utilizar la instrucción swap() para proporcionar un mecanismo de exclusión mutua que satisfaga el requisito de espera limitada. 

La instrucción swap() es una operación atómica que intercambia el valor de dos registros o variables. Se puede utilizar para proporcionar un mecanismo de exclusión mutua que satisfaga el requisito de espera limitada de la siguiente manera1:

•	Se declara una variable compartida llamada lock, inicializada en 0, que indica si la sección crítica está ocupada o no.
•	Cada proceso que quiere entrar en la sección crítica ejecuta la instrucción swap(lock, key), donde key es una variable local con valor .
•	Si el valor anterior de lock era 0, significa que la sección crítica estaba libre y el proceso puede entrar. Además, el valor de lock se cambia a, indicando que la sección crítica está ocupada.
•	Si el valor anterior de lock era 1, significa que la sección crítica estaba ocupada y el proceso debe esperar. Además, el valor de lock se mantiene en, indicando que la sección crítica sigue ocupada.
•	Cuando un proceso sale de la sección crítica, asigna el valor 0 a la variable lock, indicando que la sección crítica está libre.
Este mecanismo satisface el requisito de espera limitada porque cada proceso que quiere entrar en la sección crítica tiene una oportunidad de hacerlo en un número finito de intentos. El número máximo de intentos es igual al número de procesos que compiten por la sección crítica. Además, este mecanismo satisface los otros dos requisitos de una solución al problema de la sección crítica: exclusión mutua y progreso

6. Los servidores pueden diseñarse de modo que limiten el número de conexiones abiertas. Explique cómo puede utilizar un servidor los semáforos para limitar el número de conexiones concurrentes.

Un servidor puede utilizar un semáforo para limitar el número de conexiones concurrentes de la siguiente manera:

•	Se declara un semáforo llamado conexiones, inicializado con el número máximo de conexiones permitidas por el servidor.
•	Cada vez que el servidor recibe una solicitud de conexión de un cliente, ejecuta la operación wait(conexiones). Si el valor del semáforo es mayor que cero, significa que hay conexiones disponibles y el servidor puede aceptar la solicitud. Además, el valor del semáforo se decrementa en uno, indicando que hay una conexión menos disponible. Si el valor del semáforo es cero, significa que no hay conexiones disponibles y el servidor rechaza la solicitud o la pone en espera hasta que haya una conexión libre.
•	Cada vez que el servidor termina de atender una conexión de un cliente, ejecuta la operación signal(conexiones). Si hay alguna solicitud de conexión en espera, el servidor la acepta y la atiende. Además, el valor del semáforo se incrementa en uno, indicando que hay una conexión más disponible. Si no hay ninguna solicitud de conexión en espera, el valor del semáforo se mantiene igual.
Este mecanismo permite al servidor controlar el número de conexiones concurrentes y evitar la sobrecarga o el agotamiento de recursos. Además, este mecanismo garantiza la exclusión mutua y el progreso en el acceso a las conexiones

 7. Demuestre que los monitores y semáforos son equivalentes, en cuanto a que se pueden emplear para implementar los mismos tipos de problemas de sincronización.

Los monitores y los semáforos son dos mecanismos de sincronización utilizados en programación concurrente, y aunque tienen diferencias en su diseño y funcionalidad, son equivalentes en términos de poder implementar los mismos tipos de problemas de sincronización. Ambos pueden utilizarse para lograr la exclusión mutua y la coordinación entre diferentes hilos o procesos.

Un monitor es una construcción de programación de alto nivel que encapsula datos y procedimientos relacionados en una unidad coherente. Proporciona un mecanismo de bloqueo automático y exclusión mutua para controlar el acceso a los datos dentro del monitor. Los monitores también pueden utilizar variables condicionales para permitir la coordinación entre los hilos.

Por otro lado, los semáforos son una abstracción más baja que se basa en una variable entera y proporciona operaciones atómicas para controlar el acceso a los recursos compartidos. Los semáforos pueden ser contadores enteros o binarios y se utilizan para lograr exclusión mutua y coordinación a través de las operaciones P (espera o decremento) y V (señal o incremento).
Aunque la forma de uso y las primitivas proporcionadas por monitores y semáforos pueden diferir, ambos mecanismos son Turing completos y se pueden utilizar para resolver los mismos problemas de sincronización. Esto significa que cualquier problema de sincronización que pueda ser resuelto utilizando semáforos también puede ser resuelto utilizando monitores, y viceversa.

Por lo tanto, aunque los monitores y los semáforos son diferentes en su implementación y en cómo se utilizan, son equivalentes en términos de poder implementar los mismos tipos de problemas de sincronización. La elección de utilizar monitores o semáforos dependerá de las preferencias del programador y de las características específicas del problema a resolver.

 8. La exclusión mutua estricta en un monitor hace que el monitor de búfer limitado sea adecuado para porciones pequeñas. Explique por qué es cierto esto.

La exclusión mutua estricta en un monitor hace que el monitor de búfer limitado sea adecuado para porciones pequeñas porque garantiza que solo un proceso puede acceder al búfer en un momento dado y que no hay interferencias entre los procesos productores y consumidores. Esto evita los problemas de condiciones de carrera, sobrecarga o desbordamiento de búfer, y permite una gestión eficiente de los recursos compartidos.

Si el búfer fuera de gran tamaño, la exclusión mutua estricta podría ser un inconveniente, ya que impediría que varios procesos accedieran al búfer de forma concurrente cuando hay espacio suficiente para almacenar o extraer elementos. Esto podría reducir el rendimiento y la utilización del búfer, y provocar bloqueos innecesarios de los procesos. En ese caso, se podría usar una solución más flexible que permita el acceso concurrente al búfer con ciertas restricciones, como, por ejemplo, usar semáforos o variables condicionales para controlar el número de procesos que pueden entrar al búfer o el orden en que lo hacen

 9. Por qué Windows y Linux utilizan bloqueos mediante bucle sin fin como mecanismo de sincronización solo en los sistemas multiprocesador y no en los sistemas monoprocesador?

Windows y Linux utilizan bloqueos mediante bucle sin fin como mecanismo de sincronización solo en los sistemas multiprocesador y no en los sistemas monoprocesador porque los bloqueos mediante bucle sin fin tienen ventajas e inconvenientes que dependen del tipo de sistema.

Los bloqueos mediante bucle sin fin son una técnica de sincronización que consiste en que un proceso que quiere acceder a una sección crítica comprueba continuamente una variable compartida hasta que esta le permite el acceso. Esta técnica tiene la ventaja de que no requiere ningún cambio de contexto cuando un proceso tiene que esperar para adquirir un bloqueo. Los cambios de contexto pueden llevar un tiempo considerable.

Sin embargo, los bloqueos mediante bucle sin fin tienen el inconveniente de que consumen ciclos de CPU innecesariamente mientras el proceso espera. Esto puede provocar un desperdicio de recursos y una pérdida de rendimiento.

En un sistema monoprocesador, los bloqueos mediante bucle sin fin no son apropiados porque mientras un proceso está ejecutando el bucle sin fin, ningún otro proceso puede ejecutar su sección crítica, ya que la CPU está ocupada por el proceso en espera. Esto implica que el proceso que tiene el bloqueo no podrá liberarlo hasta que se produzca una interrupción o una llamada al sistema que le quite la CPU. Por tanto, los bloqueos mediante bucle sin fin pueden causar inanición o interbloqueo en un sistema monoprocesador.

En cambio, en un sistema multiprocesador, los bloqueos mediante bucle sin fin pueden ser útiles cuando se espera que los bloqueos se mantengan durante un periodo de tiempo corto, ya que no requieren ningún cambio de contexto cuando un proceso tiene que esperar para adquirir un bloqueo. Los cambios de contexto pueden llevar un tiempo considerable. Por tanto, en los sistemas multiprocesador, una hebra puede “ejecutar un bucle” sobre un procesador mientras otra hebra ejecuta su sección crítica en otro procesador. Además, los sistemas multiprocesador suelen tener mecanismos de coherencia de caché que permiten detectar rápidamente los cambios en las variables compartidas.

Por estas razones, Windows y Linux utilizan bloqueos mediante bucle sin fin como mecanismo de sincronización solo en los sistemas multiprocesador y no en los sistemas monoprocesador.
