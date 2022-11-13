Feature: US17 - Recuperar contraseña
    Como trabajador/cliete quiero recuperar mi contraseña con mi correo electronico
    o celular para seguir usando mi cuenta si me olvido la contraseña actual
    
Scenario: 1. El trabajador/cliente visualiza el formulario de recuperacion de contraseña
Dado que el trabajador/cliente se encuentra en la plataforma
Cuando el trabajador/cliente haga clic en “¿Has olvidado la contraseña?
Entonces la plataforma muestra un <formulario> de recuperación de contraseña con los campos “Correo electrónico”, “Celular” y unas preguntas de seguridad

Examples: Datos de entrada
    | Boton |
    | ¿Has olvidado la contraseña? |

Examples: Datos de salida
    | Formulario de recuperacion de contraseña |
    | Correo electronico | Celular | Pregunta de seguridad 1 | Pregunta de seguridad 2 |

Scenario: 2. El trabajador/cliente solicita la recuperacion de contraseña
Dado que el trabajador/cliente visualiza el formulario de recuperación de contraseña
Cuando el trabajador/cliente complete al menos uno de los campos y las preguntas de seguridad
Y el trabajador/cliente haga clic en el botón “Recuperar la contraseña”
Entonces la plataforma valida la información y envía un enlace a través del correo electrónico o SMS para que el usuario cambie la contraseña.

Examples: Datos de entrada
    | Correo electronico | Celular | ¿En que ciudad vives? | ¿Cual es tu ciudad favorita? |
    | jvalbinagorta@gmail.com |  94523711  | Trujillo | Trujillo |

Examples: Datos de salida
    | Sistema |
    | Validación de información | Envío de correo electrónico | Envío de SMS | 