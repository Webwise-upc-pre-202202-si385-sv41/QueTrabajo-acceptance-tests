Feature: US15 - Registro de Trabajador
    Como trabajador quiero un registro de usuario de facil manipulacion para
    unirme a la plataforma rapidamente

Scenario: 1. Visualizacion del formulario de registro
Dado que el trabajador se encuentra en la plataforma
Cuando el trabajador haga clic en "Trabaja con nosotros"
Entonces la plataforma muestra el formulario de registro con los campos: 
<nombres>, <apellidos>, <DNI>, <fecha de nacimiento>, <servicio> que realiza, 
<direccion>, <correo electronico>, numero de <celular> y dos preguntas de seguridad

Examples: Datos de entrada
    | Boton |
    | Soy un cliente |   

Examples: Datos de salida
    | Formulario de registro |
    | Nombres y apellidos | DNI | Fecha de nacimiento | Direccion | Correo electronico | Celular | Nombre de usuario | Contraseña | Pregunta de seguridad 1 | Pregunta de seguridad 2 | 

Scenario: 2. Registro de datos
Dado que el trabajador visualiza el formulario de registro
Cuando el trabajador complete todos los <campos> del formulario de registro
Y el trabajador haga clic en "Registrate"
Entonces la plataforma muestra el mensaje "Registro exitoso. Realice la verificacion para empezar a publicar"
Y la plataforma guarda los datos del nuevo perfil 

Examples: Datos de entrada
    | Nombres y apellidos | DNI | Fecha de nacimiento | Direccion | Correo electronico | Celular | Nombre de usuario | Contraseña | Pregunta de seguridad 1 | Pregunta de seguridad 2 | Boton |
    | Aldo Piña | 79823044 | 11/05/1972 | Av Arequipa 444 | aldop@gmail.com | 999888777 | aldopm | pass1234 | ¿En que ciudad se conocieron tus padres? | ¿Cual es tu libro favorito? | Registrate |


Examples: Datos de salida
    | Mensaje |
    | Registro exitoso. Realice la verificación para para empezar a publicar |