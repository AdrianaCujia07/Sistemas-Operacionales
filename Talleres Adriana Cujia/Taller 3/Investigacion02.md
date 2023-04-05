# Sistemas-Operacionales
En entornos compartidos, los usuarios comparten el sistema. Esto puede dar lugar a varios problemas de seguridad.
 ◦ Mencione dos problemas y explíquelos.
 
  Acceso no autorizado: se produce cuando un usuario accede a recursos que no le corresponden o que no tiene permiso para usar. Por ejemplo, un usuario puede acceder a archivos, carpetas, programas o servicios de otro usuario o del sistema sin su consentimiento o conocimiento. Esto puede comprometer la confidencialidad, la integridad y la disponibilidad de los datos y del sistema
  
  Fuga de información: se produce cuando un usuario divulga información sensible o confidencial a terceros sin autorización o por error. Por ejemplo, un usuario puede enviar un correo electrónico con datos personales o empresariales a una dirección equivocada, o dejar una sesión abierta en un dispositivo compartido. Esto puede afectar a la privacidad, la reputación y la competitividad de los usuarios y del sistema.
  
  Es posible asegurar el mismo grado de seguridad en un sistema compartido que en un sistema dedicado. Explique su respuesta.
  Es posible asegurar un alto grado de seguridad tanto en un sistema compartido como en un sistema dedicado. Sin embargo, hay algunas diferencias entre los dos en cuanto a la seguridad y otros aspectos.
  
  En un servidor dedicado, todos los recursos están exclusivamente a disposición del cliente y la seguridad, configuración e instalación de aplicaciones dependen completamente del cliente. En cambio, en un servidor compartido, los recursos se comparten con otros clientes y la seguridad es responsabilidad del proveedor de alojamiento
  
  2.Un problema común en los OS es la utilización de recursos. Enumere los recursos que deben gestionarse en las siguientes maquina (explique porqué):
 ◦ Sistemas embebidos 

 son sistemas informáticos que se integran en dispositivos específicos para realizar una función determinada. Suelen tener recursos limitados y restricciones de tiempo real, por lo que deben gestionar de forma óptima :
1) la memoria
2) el procesador
3) los dispositivos de entrada y salida
4) la energía y la comunicación.

◦ Mainframe son sistemas informáticos de gran tamaño y potencia que se utilizan para procesar grandes volúmenes de datos y atender a múltiples usuarios simultáneamente. Suelen tener recursos abundantes y alta disponibilidad, por lo que deben gestionar de forma eficiente:
1)	la memoria
2)	 el procesador
3)	 los dispositivos de entrada y salida
4) el almacenamiento secundario y la red.

◦ Workstation  Son sistemas informáticos de alto rendimiento que se utilizan para realizar tareas complejas que requieren mucha capacidad de cálculo y gráfica. Suelen tener recursos avanzados y especializados, por lo que deben gestionar de forma adecuada:
1)	la memoria
2)	 el procesador
3)	 los dispositivos de entrada y salida
4)	 la tarjeta gráfica y la red.

 ◦ Server son sistemas informáticos que se utilizan para proveer servicios a otros sistemas informáticos a través de una red. Suelen tener recursos escalables y modulares, por lo que deben gestionar de forma dinámica:
1)la memoria
2)el procesador
3)los dispositivos de entrada y salida
4)el almacenamiento secundario y la red

 ◦ Mobile
son sistemas informáticos portátiles que se utilizan para realizar tareas cotidianas que requieren movilidad y conectividad. Suelen tener recursos limitados y dependientes de la batería, por lo que deben gestionar de forma óptima:
1) la memoria
2) el procesador 
3) los dispositivos de entrada y salida
4) el almacenamiento interno y la red

3. Caracterice dos casos de uso para implementar un OS para servidor y PC.

•	Hosting web: se puede usar un OS para servidor como Windows Server o GNU/Linux para alojar sitios web, bases de datos, correo electrónico, FTP y otros servicios en Internet. Estos servidores pueden ser administrados mediante interfaces gráficas o de línea de comandos, y ofrecen distintas opciones de seguridad, rendimiento y escalabilidad. Por otro lado, se puede usar un OS para PC como Windows 10 o Ubuntu para acceder a los sitios web alojados en los servidores mediante un navegador web, así como para crear y editar contenido web con herramientas como WordPress o Dreamweaver.

•	Virtualización: se puede usar un OS para servidor como VMware ESXi o Windows Hyper-V Server para crear y gestionar máquinas virtuales que ejecuten distintos sistemas operativos y aplicaciones en un mismo equipo físico. Esto permite optimizar el uso de los recursos, aislar los entornos y facilitar la migración y el backup de los datos. Por otro lado, se puede usar un OS para PC como Windows 10 o Ubuntu para conectarse a las máquinas virtuales mediante un software de escritorio remoto o una consola web, así como para instalar y configurar el software necesario en cada máquina virtual.

4. Compare las diferencias entre multiprocesamiento simétrico y asimétrico.

El multiprocesamiento simétrico es un sistema en el que todos los procesadores tienen la misma arquitectura y pueden ejecutar tareas en el sistema operativo (SO) . En el multiprocesamiento asimétrico, sólo el procesador maestro puede ejecutar tareas en el SO y los demás procesadores son esclavos que realizan tareas específicas para el procesador maestro

5. Enumere los requerimientos para que dos máquinas se junten en un clúster y provean un servicio de alta disponibilidad (HA)

1)Las máquinas deben estar conectadas a una red de alta velocidad y baja latencia.
2) Las máquinas deben tener acceso a un almacenamiento compartido que permita la replicación de datos entre ellas.
3) Las máquinas deben tener instalado software de agrupación en clústeres, como Microsoft Cluster Service (MSCS) o Linux Cluster Suite (LCS).
4) Las máquinas deben estar configuradas para que el software de agrupación en clústeres pueda detectar fallos y realizar conmutaciones por error.

6. compare las diferencias entre una excepción y una interrupción.
•	Las interrupciones son interrupciones de hardware, mientras que las excepciones son interrupciones de software.
•	Las interrupciones son causadas por eventos externos a la CPU, como dispositivos periféricos o temporizadores, mientras que las excepciones son causadas por eventos internos a la CPU, como errores de instrucción o división por cero.
•	Las interrupciones generalmente no afectan al programa en ejecución, mientras que las excepciones pueden abortar el programa o requerir un tratamiento especial por parte del sistema operativo.
•	Las interrupciones suelen deshabilitar otras interrupciones de hardware, mientras que las excepciones no lo hacen.

7. El DMA (acceso directo a memoria) se usa en dispositivos I/O para evitar uso innecesario de la CPU. ◦ ¿Como interactúa la CPU con el dispositivo para coordinar la transferencia? 

la CPU interactúa con el dispositivo de la siguiente manera:
1.	La CPU inicializa el dispositivo I/O y el controlador DMA con los parámetros de la transferencia, como la dirección de memoria, el número de bytes y el sentido de la transferencia (lectura o escritura).
2.	La CPU habilita el dispositivo I/O y el controlador DMA para que puedan solicitar el uso del bus cuando estén listos para transferir datos.
3.	El dispositivo I/O genera una señal de petición de DMA al controlador DMA cuando tiene datos disponibles para enviar o recibir.
4.	El controlador DMA genera una señal de petición de bus a la CPU cuando recibe una petición de DMA del dispositivo I/O.
5.	La CPU concede el uso del bus al controlador DMA cuando termina su ciclo actual y deshabilita sus señales de control del bus.
6.	El controlador DMA toma el control del bus y genera las señales de dirección y datos para transferir un byte o una palabra entre el dispositivo I/O y la memoria.
7.	El controlador DMA decrementa el contador de bytes y verifica si la transferencia ha terminado o si hay que repetir el proceso.
8.	El controlador DMA libera el bus y genera una señal de finalización de DMA a la CPU cuando la transferencia ha terminado.
9.	La CPU retoma el control del bus y procesa la señal de finalización de DMA, que puede ser una interrupción o una bandera en un registro.

◦ ¿Como sabe la CPU que las operaciones de memoria se han completado?

La CPU sabe que las operaciones de memoria se han completado cuando recibe la señal de finalización de DMA del controlador DMA. Esta señal le indica que el dispositivo I/O y el controlador DMA han terminado de usar el bus y que los datos han sido transferidos correctamente entre el dispositivo y la memoria. La CPU puede entonces reanudar su ejecución normal o realizar alguna acción relacionada con los datos transferidos.

8. Identifique dos razones por las que la cache es útil. ¿Qué problemas resuelve y causa?.

Algunas razones por las que la caché es útil son:
•	Reduce la latencia: la caché permite acceder a los datos más rápido que si se tuviera que buscarlos en la memoria principal o en el almacenamiento, lo que mejora el rendimiento y la experiencia del usuario.
•	Aumenta el ancho de banda: la caché reduce el número de accesos a la memoria principal o al almacenamiento, lo que libera recursos y evita cuellos de botella en la comunicación entre los componentes.

Algunos problemas que resuelve y causa la caché son:

•	Resuelve el problema de la disparidad de velocidades entre el procesador y la memoria: la caché actúa como un búfer entre el procesador y la memoria, proporcionando datos al primero a una velocidad más acorde con su capacidad de procesamiento.

•	Resuelve el problema de la localidad temporal y espacial: la caché aprovecha el hecho de que los datos que se usan recientemente o que están cerca unos de otros tienen más probabilidades de volver a usarse, por lo que los almacena temporalmente para facilitar su acceso.

•	Causa el problema de la coherencia: la caché puede contener datos desactualizados o inconsistentes con respecto a la memoria principal o al almacenamiento, lo que puede generar errores o inconsistencias en los resultados. 

•	Causa el problema del espacio: la caché tiene una capacidad limitada y más costosa que la memoria principal o el almacenamiento, por lo que se requieren políticas para decidir qué datos se almacenan, dónde se almacenan y cuándo se eliminan de la caché.

9. Explique con un ejemplo, como se manifiesta el problema de mantener la coherencia de los datos de cache en los siguientes entornos: 
Sistema distribuido: 
Si dos nodos tienen una copia de un archivo en sus cachés locales y uno de ellos lo modifica y lo guarda, el otro nodo debe recibir un mensaje para invalidar o actualizar su copia. Si el mensaje se pierde o llega tarde, el otro nodo puede leer o escribir el archivo con datos erróneos.

Sistema multiprocesador:
 Si dos procesadores tienen una copia de una variable en sus cachés locales y uno de ellos la incrementa y la escribe en la memoria principal, el otro procesador debe leer el nuevo valor o invalidar su copia. Si el otro procesador lee el valor antiguo o escribe un valor diferente sin saber del cambio, puede haber una inconsistencia en la variable.

Sistema de un solo procesador: 
 si el procesador tiene una copia de un dato en la caché L1 y lo modifica y lo escribe en la caché L2, debe escribir también el dato en la caché L3 o en la memoria principal. Si no lo hace o lo hace tarde, puede haber una inconsistencia entre los niveles de caché o entre la caché y la memoria.















 
