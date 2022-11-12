Feature: US24 - Modo oscuro
    Como cliente/trabajador quiero poder elegir el tema de 
    la plataforma para tener mayor comodidad al usarla en 
    mis dispositivos 

Scenario: 1. El usuario usa el modo oscuro
Dado que el cliente/trabajador ha iniciado sesión en la plataforma
Cuando el cliente/trabajador haga clic en el icono de menú
Y el cliente/trabajador haga clic en Configuración
Y el cliente/trabajador haga clic en Tema
Y el cliente/trabajador seleccione “Oscuro”, “Claro” o “Según la configuración del sistema”
Entonces la plataforma adapta su paleta de colores de acuerdo a la opción seleccionada. 


Examples: Datos de entrada
    | Tema |
    | Oscuro |

Examples: Datos de salida
    | Web |
    | Cambia tema a oscuro |