Feature: US14 - Registro de Cliente
    Como cliente quiero un registro de usuario de facil 
    manipulacion para unirme a la plataforma rapidamente

Scenario: 1. Visualización del formulario de registro
Dado que el cliente se encuentra en la plataforma
Cuando el cliente haga clic en “Regístrate”
Y el cliente haga <clic> en “Soy un cliente”
Entonces la plataforma muestra el <formulario de registro> con los campos: Nombres, Apellidos, DNI, Fecha de nacimiento, Dirección, Correo electrónico, Número de celular y dos preguntas de seguridad.

Examples: Datos de entrada
    | Boton |
    | Soy un cliente |
    
Examples: Datos de salida
    | Formulario de registro |
    | Nombres y apellidos | DNI | Fecha de nacimiento | Direccion | Correo electronico | Celular | Nombre de usuario | Contraseña | Pregunta de seguridad 1 | Pregunta de seguridad 2 | 

Scenario: 2. Registro de datos 
Dado que el cliente visualiza el formulario de registro
Cuando  el cliente complete todos los campos del formulario de registro
Y el cliente haga <clic> en “Regístrate”
Entonces la plataforma muestra el <mensaje> “Registro exitoso. Realice la verificación para solicitar un servicio”.
Y la plataforma guarda los datos del nuevo perfil. 

Examples: Datos de entrada
    | Nombres y apellidos | DNI | Fecha de nacimiento | Direccion | Correo electronico | Celular | Nombre de usuario | Contraseña | Pregunta de seguridad 1 | Pregunta de seguridad 2 | Boton |
    | Leandro Abanto | 79823044 | 12/12/1993 | Av Arequipa 123 | labanto@gmail.com | 999888777 | labanto12 | pass1234 | ¿En que ciudad se conocieron tus padres? | ¿Cual es tu libro favorito? | Registrate |

Examples: Datos de salida
    | Mensaje |
    | Registro exitoso. Realice la verificación para solicitar un servicio |
