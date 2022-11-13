Feature: US18 - Cambiar Contraseña 
    Como trabajador/cliente quiero cambiar mi contraseña 
    para tener mayor seguridad cuando lo requiera

Scenario: 1. El trabajador/cliente visualiza el formulario de preguntas de seguridad
Dado que el trabajador/cliente quiere cambiar su contraseña
Cuando el trabajador/cliente entra a su perfil 
Y el trabajador/cliente hace <clic> en el icono de edición junto a “Contraseña”
Entonces el sistema muestra un <formulario> con preguntas de seguridad.


Examples: Datos de entrada
    | Boton | 
    | Contraseña |

Examples: Datos de salida
    | Formulario |
    | Pregunta de seguridad 1 | Pregunta de seguridad 2 | Contraseña anterior | Contraseña nueva | Actualizar contraseña |

Scenario: 2. El trabajador/cliente cambia su contraseña
Dado que el trabajador/cliente visualiza el formulario de preguntas de seguridad
Cuando el trabajador/cliente responda las <preguntas de seguridad>
Y el trabajador/cliente haga <clic> en “Aceptar”
Entonces el sistema valida la información registrada y envia un enlace a través del correo electrónico para cambiar la contraseña. 

Examples: Datos de entrada
    | Pregunta de seguridad 1 | Pregunta de seguridad 2 | Contraseña anterior | Contraseña nueva | Boton |
    | ¿Cual es tu libro favorito? | ¿Cual es tu pelicula favorita | pass1234 | nueva1212 | Actualizar contraseña |

Examples: Datos de salida
    | Sistema | 
    | Informacion actualizada | Correo electronico enviado |
