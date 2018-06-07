*******
**
**	SISTEMA DE RECOMENDACIÓN SIROD
**
**********

--> Carpeta /img
	Contiene las imagenes de los resultados que muestra el sistema de recomendación.

--> Archivo recomendacion.pl
	Archivo que contiene el sistema de recomendación para ser mostrado solo con el programa de prolog, este archivo muestra las diferentes recomendaciones que arroja el sistema.
	Para ejecutar el archivo desde el programa de prolog, seguir los sigientes pasos:
		1. Consultar el archivo.
		2. Ejecutar la función de ayuda para saber como iniciar el sistema. 
				Ejemplo de ejecución: ayuda.
		3. El sistema se inicia con la función vacaciones, la cual recibe como variables ciudad, mes y preferencias.
			La variable Ciudad, se deja tal cual la palabra.
			El mes, se puede indicar cualquier mes, ya que a esta aun no se le ha agregado ninguna funcionalidad.
			La variable preferencia, puede ser una preferencia o incluso todas las preferencias que acepta el sistema. Se pueden hacer diferentes combinaciones.
				Ejemplos de ejecución: 	vacaciones(Ciudad,enero,playa).
										vacaciones(Ciudad,enero,playa,fiesta).
										vacaciones(Ciudad,enero,playa,fiesta,ruinas,).
										vacaciones(Ciudad,enero,playa,fiesta,ruinas,ciudad).
			Cuando se ejecute esta función, para seguir viendo los diferentes resultados que arroja dar enter.

--> Archivo sirod.pl
	Archivo que contiene el sistema de recomendación que se conecta con php, es el mismo código del archivo recomendacion.pl solo que tiene comentadas algunas lineas ya que no se ha encontrado la manera en que mande los diferentes resultados del sistema, solo arroja un resultado y de igual manera solo se puede seleccionar una preferencia, esto esta implementado para que pueda verse de manera correcta en el php, aunque sigue en desarrollo para que funcione mejor.

--> Archivo 