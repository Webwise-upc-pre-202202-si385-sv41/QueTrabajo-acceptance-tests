Feature: US12 - Agregar experiencia laboral
    Como trabajador quiero agregar mi experiencia laboral a mi 
    perfil para brindar mas confianza a mis posibles clientes 


Scenario: 1. El trabajador visualiza el formulario de registro de experiencia laboral
Dado que el trabajador se encuentra en su perfil
Cuando el trabajador le de el <clic> al botón “+” en el área “Experiencia laboral”
Entonces la plataforma muestra un <formulario> con los campos: “Modalidad de trabajo (independiente,empresa, etc)”, “Descripción del trabajo” y “Periodo de actividad”

Examples: Datos de entrada
    | Boton |
    | + |

Examples: Datos de salida
    | Formulario | Modalidad de trabajo | Descripcion de trabajo | Periodo de actividad |

Scenario: 2. El trabajador agrega su experiencia laboral a su perfil
Dado que el trabajador visualiza el formulario de registro de experiencia laboral
Cuando el trabajador complete todos los <campos>
Y el trabajador haga <clic> en “Añadir al perfil”
Entonces la plataforma muestra el nuevo registro de <experiencia laboral> en el perfil del trabajador

Examples: Datos de entrada
    | Modalidad de trabajo | Descripcion de trabajo | Periodo de actividad | Boton |
    | Independiente | Realizó servicios de gasfitería en empresas | 2010-2015 | Añadir a perfil |
    
Examples: Datos de salida
    | Experiencia | 
    | Trabajador ndependiente desde 2010 a 2015. Realizó servicios de gasfitería en empresas | 