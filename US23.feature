Feature: US23 - Compartir la aplicación
    Como administrador de la aplicacion quiero que los 
    usuarios compartan la aplicacion con más personas 
    para tener mas visitas en la web y descargas de la 
    aplicación

Scenario: 1. La plataforma muestra un mensaje para compartir
Dado que el cliente ha <calificado> un servicio 
Cuando el cliente acceda a otra pestaña o pagina
Entonces la aplicación muestra un <mensaje> de “¿Estás satisfecho con el servicio? Comparte QueTrabajo para ayudar a más personas como tú.”

Examples: Datos de entrada
    | Calificacion | Comentario | Boton | 
    | 4 estrellas | Excelentes acabados y muy responsable | Agregar reseña |

Examples: Datos de salida
    | Mensaje |
    | ¿Estás satisfecho con el servicio? Comparte QueTrabajo para ayudar a más personas como tú. |
     