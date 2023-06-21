# INVESTIGACION 09

# 1.Explique el soporte por hardware requerido para implementar la paginación bajo demanda.

1. El soporte por hardware requerido para implementar la paginación bajo demanda incluye:

- Un mecanismo de administración de memoria que divida la memoria física en marcos de página.

- Un registro o tabla de páginas que mantenga un seguimiento de las páginas virtuales y sus correspondientes marcos de página físicos.

- Un bit de validez o presencia en cada entrada de la tabla de páginas para indicar si una página está presente en memoria física o si ha sido cargada en el disco.

- Un mecanismo de traducción de direcciones virtuales a direcciones físicas durante el acceso a la memoria.

Además, se requiere un sistema operativo que gestione la carga y descarga de páginas desde el disco según la demanda y un controlador de disco para acceder eficientemente al almacenamiento en disco.

2. ¿Qué es la característica de copia durante la escritura y en que circunstancias es ventajoso usar estas características?

2. La característica de copia durante la escritura (Copy-on-Write, COW) es una técnica utilizada en sistemas operativos y bases de datos para optimizar la administración de memoria y los recursos. En esta técnica, cuando se realiza una escritura en una página de memoria compartida, no se copia inmediatamente toda la página, sino que se realiza una copia solo cuando se intenta modificar el contenido de la página.

Es ventajoso usar la característica de copia durante la escritura en situaciones en las que hay múltiples procesos o hilos que comparten una región de memoria común. Al utilizar COW, se evita la necesidad de copiar todo el contenido de la página al crear procesos o hilos hijos, lo que ahorra tiempo y recursos. Solo se realiza la copia cuando uno de los procesos o hilos intenta modificar el contenido, garantizando la integridad de los datos compartidos.

3. ¿Cual es el soporte de hardware requerido para implementar las características de copia durante escritura?

# 3. El soporte de hardware requerido para implementar la característica de copia durante la escritura incluye:

- Un mecanismo de control que permita identificar y rastrear las páginas compartidas.
- Un bit de referencia o contador asociado a cada página para realizar un seguimiento de las referencias a esa página.
- Un mecanismo de detección de escrituras en páginas compartidas que activa el proceso de copia y asigna un nuevo marco de página física para la página modificada.

# 4. Indique una situación en la que el algoritmo de sustitución de las páginas menos frecuentes utilizadas genere menos fallos de pagina que el algoritmo de sustitución de las paginas más recientemente utilizadas

4. Una situación en la que el algoritmo de sustitución de las páginas menos frecuentemente utilizadas (LFU, Least Frequently Used) genere menos fallos de página que el algoritmo de sustitución de las páginas más recientemente utilizadas (LRU, Least Recently Used) es cuando hay un conjunto de páginas que se utilizan con una frecuencia baja pero constante.

Si el algoritmo LRU se basa principalmente en la recencia de uso, podría mantener páginas frecuentemente utilizadas en memoria y reemplazar páginas que, aunque se utilizan con menos frecuencia, son necesarias en momentos críticos. En cambio, el algoritmo LFU priorizará mantener en memoria las páginas que se utilizan con menos frecuencia, lo que reducirá los fallos de página en este escenario particular.

Sin embargo, es importante destacar que la elección del algoritmo de sustitución de páginas depende de las características del sistema y del perfil de acceso a la memoria de las aplicaciones en ejecución. No hay un algoritmo de sustitución de páginas universalmente superior, y diferentes situaciones pueden requerir diferentes enfoques.


# 5. Indique una situación en la que el algoritmo de sustitución de las páginas mas frecuentemente utilizadas genere menos fallos de página que el algoritmo de sustitución de las páginas menos recientemente utilizadas.

Una situación en la que el algoritmo de sustitución de las páginas más frecuentemente utilizadas (MFU, Most Frequently Used) genere menos fallos de página que el algoritmo de sustitución de las páginas menos recientemente utilizadas (LRU, Least Recently Used) es cuando hay un conjunto de páginas que se utilizan con frecuencia alta pero no constante.

En este caso, el algoritmo MFU mantendrá en memoria las páginas que se utilizan con mayor frecuencia, lo que reducirá los fallos de página, ya que estas páginas estarán disponibles para su acceso inmediato. Por otro lado, el algoritmo LRU puede eliminar páginas frecuentemente utilizadas pero que no se han utilizado recientemente, lo que podría llevar a un aumento de los fallos de página.

# 6. Un sistema utiliza un algoritmo de sustitución FIFO para las paginas resientes y un conjunto compartido de marcos libres compuesto por páginas recientemente utilizadas. Si el conjunto compartido de marcos libres se gestiona utilizando la política de sustitución menos recientemente utilizadas. De una respuesta a los siguientes casos: ◦ Si se produce un fallo de página y la página se encuentra en el conjunto compartidos de marcos libres, ¿cómo puede generarse espacio libre para la nueva página solicitada? ◦ Si se produce un fallo de página y la página se encuentra en el conjunto compartido de marcos libres, ¿cómo se activa la página residente y cómo se gestiona el conjunto compartido de marcos libres para hacer sitio para la página solicitada?

6. En el escenario descrito, donde se utiliza un algoritmo de sustitución FIFO para las páginas recientes y un conjunto compartido de marcos libres gestionado mediante la política de sustitución menos recientemente utilizadas (LRU), las respuestas a los casos planteados son las siguientes:

- Si se produce un fallo de página y la página se encuentra en el conjunto compartido de marcos libres: En este caso, se generaría espacio libre para la nueva página solicitada eliminando la página menos recientemente utilizada del conjunto compartido de marcos libres utilizando la política LRU. La página menos recientemente utilizada se eliminaría y se reemplazaría por la nueva página solicitada.

- Si se produce un fallo de página y la página se encuentra en el conjunto compartido de marcos libres: En este caso, la página residente se activaría y se colocaría en un marco libre en la memoria principal. La gestión del conjunto compartido de marcos libres para hacer espacio para la página solicitada se realizaría eliminando la página menos recientemente utilizada de ese conjunto mediante la política LRU. La página menos recientemente utilizada se eliminaría del conjunto y se reemplazaría por la página solicitada, que ahora estaría presente en la memoria principal.

# 7. Considere un sistema de paginación bajo demanda con las siguientes tasas de utilización: ◦ Uso de CPU 20% ◦ Paginación de disco 97,7% ◦ Otros dispositivos de I/O 5% Para las siguientes afirmaciones, indique si permitirá o es probable que permita mejorar las tasas de utilización de la CPU. De razones para su respuesta. ◦ Instalar una CPU más rápida. ◦ Instalar un disco de paginación de mayor tamaño. ◦ Incrementar el grado de multiprogramación. ◦ Instalar mas memoria principal. ◦ Instalar un disco duro mas rápidos.


Las afirmaciones se evaluarán una por una:

1. Instalar una CPU más rápida: Sí, permitirá mejorar la tasa de utilización de la CPU. Una CPU más rápida puede realizar las instrucciones más rápidamente, lo que reduce el tiempo de procesamiento de las tareas y permite realizar más operaciones en un período de tiempo determinado. Esto puede ayudar a aprovechar al máximo la capacidad de procesamiento de la CPU y mejorar la tasa de utilización.

2. Instalar un disco de paginación de mayor tamaño: Sí, permitirá mejorar la tasa de utilización de la CPU. Un disco de paginación de mayor tamaño puede almacenar más páginas de memoria virtual en el disco, lo que reduce la necesidad de realizar operaciones de lectura y escritura frecuentes entre el disco y la memoria principal. Esto disminuye los tiempos de espera y mejora la eficiencia del sistema, lo que a su vez puede aumentar la tasa de utilización de la CPU.

3. Incrementar el grado de multiprogramación: Sí, permitirá mejorar la tasa de utilización de la CPU. La multiprogramación es la capacidad de ejecutar múltiples procesos simultáneamente. Al aumentar el grado de multiprogramación, se permitirá que más procesos estén en ejecución al mismo tiempo, lo que puede aprovechar mejor los recursos de la CPU y aumentar su utilización. Sin embargo, es importante tener en cuenta que aumentar el grado de multiprogramación también puede aumentar la competencia por los recursos y potencialmente afectar el rendimiento individual de cada proceso.

4. Instalar más memoria principal: Sí, permitirá mejorar la tasa de utilización de la CPU. La memoria principal es crucial en la paginación bajo demanda, ya que almacena las páginas de memoria necesarias para la ejecución de los procesos. Al instalar más memoria principal, se reduce la necesidad de acceder al disco para buscar páginas y se mejora la eficiencia del sistema. Esto puede resultar en una mayor tasa de utilización de la CPU, ya que los procesos pueden acceder rápidamente a las páginas necesarias en memoria.

5. Instalar un disco duro más rápido: No necesariamente permitirá mejorar la tasa de utilización de la CPU. Aunque un disco duro más rápido puede reducir los tiempos de acceso a datos y mejorar el rendimiento general del sistema, no está directamente relacionado con la utilización de la CPU. La velocidad del disco afecta principalmente la velocidad de lectura y escritura de datos, y no tiene un impacto directo en la tasa de utilización de la CPU a menos que la CPU esté esperando constantemente por operaciones de E/S.
