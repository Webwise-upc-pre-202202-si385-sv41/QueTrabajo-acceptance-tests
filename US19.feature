Feature: US19 - Editar datos personales
    Como trabajador/cliente quiero editar mis datos 
    personales siempre que lo necesite para mantener 
    mi información actualizada 

Scenario: 1. El trabajador/cliente visualiza el formulario de edición de datos personales
Dado que el trabajador/cliente quiere cambiar sus datos y se encuentra en su perfil
Cuando el trabajador/cliente haga <clic> en el icono de edición
Entonces el sistema muestra el <formulario> de edición de datos personales con los campos llenos con su información actual

Examples: Datos de entrada
    | Boton | 
    | Editar |

Examples: Datos de salida
    | Formulario |
    | Correo electronico | Celular | Contraseña |  

Scenario: 2. El trabajador/cliente actualiza sus datos personales
Dado que el trabajador/cliente visualiza el formulario de edición de datos personales
Cuando el trabajador/cliente cambie uno o más de sus datos
Y el trabajador/cliente haga <clic> en “Aceptar” 
Entonces el sistema valida la información registrada
Y el sistema envía un <correo electrónico> confirmando el cambio de los datos solicitados. 

Examples: Datos de entrada
    | Correo electronico | Celular | Contraseña | Boton |
    | andresoliva@outlook.com | 985206412 | Aolv.12 | Aceptar |

Examples: Datos de salida
    | Sistema |
    | Envio de correo electronico |