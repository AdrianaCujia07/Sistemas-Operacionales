# INVESTIGACION 03
Para esta practica, profundice lo hablado en clase. Investigue los siguientes tópicos y de su opinión: 
1.	Compare las diferencias entre la planeación a corto plazo y largo plazo.

la diferencia clave entre la planeación a corto plazo y la planeación a largo plazo es que la planeación a corto plazo se centra en un período inmediato, especialmente en referencia a los ingresos y la rentabilidad, mientras que la planeación a largo plazo se centra en los logros para el futuro proyectado.

La planeación a corto plazo apunta a un período de menos de un año y se basa en objetivos como el desarrollo de nuevos productos, la mejora del flujo de caja, la satisfacción de los inversores, etc. La planeación a largo plazo evalúa las amenazas y oportunidades que la empresa puede enfrentar en términos de situaciones sociales, económicas, políticas y competitivas, tanto a nivel local como global. La planeación a largo plazo también implica decisiones sobre gastos de capital, como la compra de equipos e instalaciones, y la implementación de políticas y procedimientos que fortalecen el perfil de la empresa


2.	Caracterice dos procesos que se puedan considerar a mediano plazo.

•	Reducir los gastos de transporte y publicidad en una organización en el segundo semestre. Este proceso implica la implementación de estrategias para optimizar los recursos y mejorar la rentabilidad de la empresa en un lapso de seis meses.

•	Aprender a confeccionar ropa de gala y eventos especiales. Este proceso implica la adquisición de habilidades y conocimientos para elaborar prendas sofisticadas y elegantes en un lapso que puede variar según el nivel de dificultad y el ritmo de aprendizaje.



3.	Describa las acciones que toma el kernel para el cambio de contexto entre procesos.


•	Salvar el estado del proceso que se estaba ejecutando. El estado, también llamado contexto, consiste en los valores de todos los registros del microprocesador. Se copian en la memoria principal.

•	Seleccionar otro proceso para ejecutar. Entre todos los procesos que estén preparados para ejecutarse, el kernel selecciona uno de ellos siguiendo algún algoritmo equitativo.

•	Restaurar el estado del proceso seleccionado. Para ello, se toma el estado previamente copiado en la memoria principal y se vuelca en los registros del microprocesador.

•	Ejecutar el proceso seleccionado. El kernel termina su ejecución saltando a la instrucción que estaba pendiente de ejecutar en el proceso seleccionado.



4.	Defina las ventajas y desventajas desde el punto de vista del programador para comunicación síncrona y asíncrona. 

•	Ventajas de la comunicación síncrona:

o	Permite una interacción más rápida y fluida entre los procesos o sistemas, lo que puede mejorar la eficiencia y la productividad.

o	Facilita la resolución de problemas o dudas que puedan surgir durante la comunicación, ya que se puede obtener una respuesta inmediata.

o	Favorece la colaboración y el trabajo en equipo, ya que se puede compartir información y opiniones en el momento.


•	Desventajas de la comunicación síncrona:

o	Requiere que los procesos o sistemas estén disponibles y sincronizados al mismo tiempo, lo que puede limitar la flexibilidad y la autonomía
.
o	Puede generar interrupciones o distracciones que afecten al rendimiento o a la concentración de los procesos o sistemas involucrados.

o	Puede provocar una sobrecarga de información o de comunicación, ya que se puede recibir más información de la que se puede procesar o responder.


•	Ventajas de la comunicación asíncrona:

o	Permite que los procesos o sistemas puedan comunicarse sin depender del tiempo ni del lugar, lo que aumenta la flexibilidad y la adaptabilidad.

o	Facilita la organización y la planificación del trabajo, ya que se puede acceder a la información cuando se necesite y se puede responder cuando se disponga de tiempo.

o	Reduce las interrupciones y las distracciones, ya que se puede elegir el momento más adecuado para comunicarse o recibir información.


•	Desventajas de la comunicación asíncrona:

o	Puede demorar la obtención de una respuesta o una solución a un problema o una duda, lo que puede generar incertidumbre o frustración.

o	Puede dificultar la coordinación y la colaboración entre los procesos o sistemas, ya que se pierde la inmediatez y la sincronía de la comunicación.


o	Puede generar ambigüedad o malentendidos en la interpretación de los mensajes, ya que se pierden los elementos no verbales o contextuales de la comunicación.




5.	Defina las ventajas y desventajas desde el punto de vista del OS para envío por copia y envío por referencia. 


•	Ventajas del envío por copia:

o	Evita problemas de seguridad o privacidad, ya que el receptor no puede acceder a la memoria del emisor.

o	Garantiza la consistencia de los datos, ya que el receptor recibe una instantánea del contenido del mensaje en el momento del envío.

o	Es más simple y eficiente para mensajes pequeños o poco frecuentes, ya que no requiere mantener referencias ni sincronizar el acceso a los datos.


•	Desventajas del envío por copia:

o	Implica un mayor consumo de recursos, ya que se debe duplicar el espacio de memoria y el ancho de banda para enviar y almacenar las copias.

o	Puede generar inconsistencias o pérdidas de información, si el emisor modifica o elimina el contenido del mensaje después del envío .


o	Es más lento e ineficiente para mensajes grandes o frecuentes, ya que se debe copiar y transmitir todo el contenido cada vez.



•	Ventajas del envío por referencia:

o	Implica un menor consumo de recursos, ya que se evita duplicar el espacio de memoria y el ancho de banda para enviar y almacenar las copias .

o	Permite una comunicación más rápida y actualizada, ya que el receptor accede directamente al contenido del mensaje en la memoria del emisor .


o	Es más simple y eficiente para mensajes grandes o frecuentes, ya que se debe enviar y almacenar solo una referencia al contenido .


•	Desventajas del envío por referencia:

o	Implica problemas de seguridad o privacidad, ya que el receptor puede acceder a la memoria del emisor y modificar o leer datos sensibles .


o	Dificulta la consistencia de los datos, ya que el receptor puede recibir una versión obsoleta o inválida del contenido del mensaje si el emisor lo modifica o elimina .


o	Requiere mantener referencias válidas y sincronizar el acceso a los datos entre el emisor y el receptor




5.	Defina las ventajas y desventajas desde el punto de vista del OS para mensajes de tamaño fijo y de tamaño variable. 

Algunas ventajas de los mensajes de tamaño fijo son:

•	Son más fáciles de implementar y gestionar por el OS, ya que se pueden usar estructuras de datos simples y algoritmos eficientes para almacenar y transmitir los mensajes.

•	Son más rápidos de enviar y recibir, ya que se evita el sobrecoste de codificar y decodificar la longitud del mensaje.


•	Son más seguros, ya que se reduce el riesgo de desbordamiento de buffer o de truncamiento de datos.


Algunas desventajas de los mensajes de tamaño fijo son:

•	Son menos flexibles y eficientes, ya que pueden desperdiciar espacio si el contenido del mensaje es menor que la longitud fija, o requerir varios mensajes si el contenido es mayor que la longitud fija.

•	Son menos adecuados para transmitir datos heterogéneos o complejos, ya que se necesita definir un formato estándar para cada tipo de mensaje.


Algunas ventajas de los mensajes de tamaño variable son:

•	Son más flexibles y eficientes, ya que se adaptan al contenido del mensaje y se aprovecha mejor el espacio disponible.

•	Son más adecuados para transmitir datos heterogéneos o complejos, ya que se puede usar un formato dinámico para cada tipo de mensaje.


Algunas desventajas de los mensajes de tamaño variable son:

•	Son más difíciles de implementar y gestionar por el OS, ya que se necesitan estructuras de datos más complejas y algoritmos más costosos para almacenar y transmitir los mensajes.

•	Son más lentos de enviar y recibir, ya que se añade el sobrecoste de codificar y decodificar la longitud del mensaje.


•	Son menos seguros, ya que se incrementa el riesgo de desbordamiento de buffer o de truncamiento de datos.



6.	Describa los estados de un proceso.


Los estados básicos de un proceso son:

-	Nuevo: el proceso se ha creado, pero aún no ha sido admitido por el sistema operativo para su ejecución.

-	Activo: el proceso está en ejecución y utiliza la CPU.

-	Preparado: el proceso está listo para ejecutarse pero espera a que la CPU le sea asignada.

-	Bloqueado: el proceso está en espera de que ocurra algún evento externo, como una entrada/salida o una señal, que le permita continuar su ejecución.

-	Terminado: el proceso ha finalizado su ejecución y se libera su memoria y recursos.


