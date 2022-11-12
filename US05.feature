Feature: US05 - Ganancia por servicios contratados
    Como administrador de la aplicacion quiero cobrar una 
    tarifa minima a cada cliente al contratar un servicio 
    para generar ingresos

Scenario: 1. El administrador cobra una tarifa por el servicio conseguido a los usuarios 
Dado que un trabajador recibe una solicitud de servicio
Cuando el trabajador ingrese el monto cotizado por el servicio
Entonces la plataforma agrega automáticamente una tarifa de S/1.00 al monto total

Examples: Datos de entrada
    | Precio | Boton |
    | s/ 50.00 | Cotizar |

Examples: Datos de salida
    | Precio |
    | s/ 51.00 |