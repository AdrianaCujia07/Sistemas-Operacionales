# Investigacion 08
## 1. Explique la diferencia entre los conceptos de fragmentación interna y externa.

La fragmentación interna se refiere al desperdicio de memoria dentro de un bloque de asignación debido a un tamaño de bloque excesivo, mientras que la fragmentación externa se refiere al desperdicio de memoria causado por la dispersión de bloques libres en el espacio de memoria total. Ambas formas de fragmentación pueden afectar negativamente el rendimiento y la eficiencia del sistema, y se pueden abordar mediante diferentes técnicas de gestión de memoria.


## 2. ¿En qué forma el editor de montaje cambia el acoplamiento de las instrucciones y los datos a direcciones de memoria?

El editor de montaje cambia el acoplamiento de las instrucciones y los datos a direcciones de memoria mediante el uso de modos de direccionamiento. Un modo de direccionamiento especifica la forma de calcular la dirección de memoria efectiva de un operando mediante el uso de la información contenida en registros y/o constantes, contenida dentro de una instrucción de la máquina. La arquitectura ARM dispone de un amplio conjunto de modos de direccionamiento, como el indirecto de registro, el indirecto de registro con desplazamiento constante y el indirecto de registro con desplazamiento por registro. Estos modos permiten referenciar posiciones de memoria consecutivas, modificar instrucciones en tiempo de ejecución o realizar operaciones aritmético-lógicas sobre los datos

## 3. ¿Que información debe pasar el compilador al editor de montaje para facilitar el acoplamiento de memoria de éste?

El compilador debe pasar al editor de montaje la información necesaria para resolver las referencias simbólicas a las direcciones de memoria de las instrucciones y los datos. Esta información incluye las etiquetas, los símbolos y las constantes que se usan en el código fuente, así como sus valores o ubicaciones en la memoria. El editor de montaje utiliza esta información para sustituir los nombres simbólicos por las direcciones de memoria correspondientes y generar el código objeto que se puede ejecutar en el microcontrolador.


## 4. En el siguiente orden, se tienen cinco particiones de memoria de 100 KB, 500 KB, 200 KB, 300 KB, y 600 KB. ¿Como situarían en memoria una serie de procesos de 212 KB, 417 KB, 112 KB y 426 KB en ese orden con los algoritmos de primer ajuste, mejor ajuste y peor ajuste? ¿Que algoritmo hace el uso más eficiente de la memoria?


Teniendo en cuenta las particiones de memoria y los tamaños de los procesos proporcionados, a continuación se muestra cómo se ubicarían los procesos utilizando los tres algoritmos mencionados:

Primer ajuste:

Proceso de 212 KB: Se ubicaría en la partición de 500 KB (ajuste justo).

Proceso de 417 KB: No hay una partición lo suficientemente grande. El proceso no se puede ubicar.

Proceso de 112 KB: Se ubicaría en la partición de 200 KB (ajuste justo).

Proceso de 426 KB: Se ubicaría en la partición de 600 KB (ajuste justo).


Mejor ajuste:

Proceso de 212 KB: Se ubicaría en la partición de 300 KB (mejor ajuste).

Proceso de 417 KB: Se ubicaría en la partición de 500 KB (mejor ajuste).

Proceso de 112 KB: Se ubicaría en la partición de 200 KB (mejor ajuste).

Proceso de 426 KB: No hay una partición lo suficientemente grande. El proceso no se puede ubicar.

Peor ajuste:

Proceso de 212 KB: Se ubicaría en la partición de 600 KB (peor ajuste).

Proceso de 417 KB: Se ubicaría en la partición de 500 KB (peor ajuste).

Proceso de 112 KB: Se ubicaría en la partición de 200 KB (peor ajuste).

Proceso de 426 KB: Se ubicaría en la partición de 600 KB (peor ajuste).

Analizando los resultados, se puede observar que el algoritmo de mejor ajuste hace el uso más eficiente de la memoria en este caso. Este algoritmo selecciona la partición más pequeña que sea suficiente para alojar el proceso, lo que reduce el desperdicio de memoria en comparación con el primer ajuste y el peor ajuste. Sin embargo, es importante tener en cuenta que el rendimiento de los algoritmos puede variar según el escenario y la distribución de las particiones y los procesos.


## 5. La mayoría de OS permiten a los programas asignar más memoria a su espacio de direcciones durante la ejecución. ¿Que se necesitaría para soportar la asignación dinámica de memoria en los siguientes esquemas? 1. Asignación contigua de memoria. 2. Segmentación pura. 3. Paginación pura.



La asignación dinámica de memoria es la capacidad de un programa de solicitar más memoria durante su ejecución. Para soportar la asignación dinámica de memoria en los siguientes esquemas se necesitaría:

1.	Asignación contigua de memoria: se necesita un mecanismo para reubicar los procesos en memoria y compactar el espacio libre, evitando la fragmentación externa. También se necesita un registro base y un registro límite para cada proceso, que se actualicen cuando se asigne o libere memoria.

2.	Segmentación pura: se necesita una tabla de segmentos por cada proceso, que contenga la dirección base y el tamaño de cada segmento. Cuando un proceso solicita más memoria, se crea un nuevo segmento o se extiende uno existente, actualizando la tabla de segmentos correspondiente.



3.	Paginación pura: se necesita una tabla de páginas por cada proceso, que contenga el número de marco de cada página asignada. Cuando un proceso solicita más memoria, se asignan nuevos marcos de memoria y se actualiza la tabla de páginas correspondiente.




## 6. Compare los esquemas de organización de la memoria principal basados en una asignación continua de memoria, en una segmentación pura y una paginación pura con respecto a: 1. Fragmentación externa. 2. Fragmentación interna. 3. Capacidad de compartir código.



Comparación de los esquemas de organización de la memoria principal:

Fragmentación externa:

Asignación continua de memoria: En este esquema, puede haber fragmentación externa, ya que los programas se asignan en bloques contiguos de memoria. A medida que los programas se cargan y liberan, los huecos de memoria pueden quedar dispersos y no se pueden utilizar de manera eficiente, lo que resulta en fragmentación externa.

Segmentación pura: La segmentación pura no sufre de fragmentación externa, ya que los segmentos lógicos de un programa pueden ubicarse en cualquier parte de la memoria física, siempre y cuando haya suficiente espacio para acomodarlos.

Paginación pura: La paginación pura también evita la fragmentación externa, ya que las páginas lógicas de un programa pueden asignarse en cualquier marco de página disponible en la memoria física, sin requerir una asignación contigua.

Fragmentación interna:

Asignación continua de memoria: En este esquema, puede haber fragmentación interna debido a que los programas se asignan en bloques contiguos de memoria. Si el tamaño del programa no coincide exactamente con el tamaño de la partición de memoria asignada, puede haber espacios no utilizados dentro de la partición, lo que resulta en fragmentación interna.

Segmentación pura: La segmentación pura puede tener fragmentación interna si los segmentos lógicos no se ajustan exactamente al tamaño de los segmentos físicos asignados. Si un segmento lógico es más pequeño que su segmento físico asignado, puede haber espacio no utilizado dentro del segmento, lo que resulta en fragmentación interna.

Paginación pura: La paginación pura también puede tener fragmentación interna. Las páginas lógicas de un programa se asignan en marcos de página de tamaño fijo, lo que significa que si el tamaño de una página no coincide exactamente con el tamaño del marco de página, puede haber espacio no utilizado dentro del marco, lo que resulta en fragmentación interna.

Capacidad de compartir código:

Asignación continua de memoria: La asignación continua de memoria no es eficiente para compartir código, ya que los programas se cargan en bloques contiguos. Si varios programas tienen secciones de código idénticas, se deben duplicar en cada instancia cargada en memoria.

Segmentación pura: La segmentación pura permite compartir código de manera eficiente. Los segmentos de código pueden ubicarse en una ubicación de memoria común y compartida por varios programas, lo que reduce la duplicación de código y ahorra espacio en memoria.

Paginación pura: La paginación pura también permite compartir código de manera eficiente. Las páginas de código pueden asignarse en marcos de página compartidos, lo que permite que varios programas accedan a las mismas páginas físicas que contienen el código compartido.



## 7. En un OS con paginación, un proceso no puede acceder a una zona de memoria que no sea de su propiedad. 1. ¿Por qué? 2. ¿Como podía el OS permitir el acceso a otras zonas de memoria? 3. ¿Por qué debería o por qué no debería?


En un OS con paginación, un proceso no puede acceder a una zona de memoria que no sea de su propiedad por las siguientes razones:

1.	Porque el OS usa un mecanismo de protección de memoria basado en páginas, que divide el espacio de direcciones lógicas y físicas en bloques del mismo tamaño llamados páginas y marcos . Cada proceso tiene una tabla de páginas que indica el número de marco de cada página asignada . El OS controla el acceso a la memoria mediante el uso de un registro base y un registro límite para cada proceso, que se comparan con la dirección lógica generada por el proceso . Si la dirección lógica está fuera del rango permitido, se produce una excepción y el proceso no puede acceder a la memoria .

2.	El OS podría permitir el acceso a otras zonas de memoria mediante el uso de técnicas de compartición de memoria, que permiten que varios procesos accedan a los mismos datos o código en memoria . Una forma de compartir memoria es mediante la segmentación, que divide el espacio de direcciones lógicas en segmentos de tamaño variable que pueden contener datos o código relacionados . Cada proceso tiene una tabla de segmentos que indica la dirección base y el tamaño de cada segmento asignado . El OS puede asignar el mismo segmento a varios procesos, permitiendo así la compartición de memoria .

3.	El OS debería permitir el acceso a otras zonas de memoria cuando sea necesario para facilitar la comunicación o la cooperación entre procesos, o para reducir el espacio ocupado por los programas en memoria . Por ejemplo, si varios procesos ejecutan el mismo programa, podrían compartir el segmento de código del programa, ahorrando así memoria y facilitando las actualizaciones. Sin embargo, el OS también debería controlar el acceso a otras zonas de memoria para evitar que los procesos interfieran entre sí o accedan a información sensible o privilegiada. Por ejemplo, si varios procesos comparten un segmento de datos, el OS debería garantizar que solo puedan leer o escribir en él si tienen los permisos adecuados.


## 8. Compare el mecanismo de paginación con el de segmentación con respecto a la cantidad de memoria requerida por las estructuras de producción de direcciones para convertir las direcciones virtuales en direcciones físicas.


La cantidad de memoria requerida por las estructuras de traducción de direcciones virtuales a direcciones físicas en el mecanismo de paginación depende del tamaño del espacio de direcciones virtuales y del tamaño de las páginas, mientras que en el mecanismo de segmentación depende del número de segmentos utilizados por el programa. En general, el mecanismo de paginación puede requerir más memoria para la tabla de páginas, ya que necesita una entrada por cada página virtual, mientras que en la segmentación, la cantidad de memoria requerida para la tabla de segmentos está determinada por el número de segmentos utilizados por el programa.


## 9 ¿Cuales son las direcciones físicas para las siguientes direcciones lógicas?
 1. 0. 430 
2. 1. 10
 3. 2. 500 
4. 3. 400 
5. 4. 112
 Las direcciones físicas correspondientes a las direcciones lógicas dadas son:
1.	649

2.	2310

3.	590


4.	1727

5.	2064

Dirección física = Base + Dirección lógica
