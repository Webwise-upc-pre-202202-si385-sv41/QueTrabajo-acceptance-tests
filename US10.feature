Feature: US10 - Sistema de calificacion
    Como cliente quiero poder calificar a los especialistas 
    segun el servicio brindado para ayudar a otros a 
    encontrar a un buen especialista

Scenario: 1. Visualización del formulario de reseñas
Dado que el cliente tiene un servicio marcado como “Terminado” en su historial
Cuando el cliente haga <clic> en el botón “Agregar reseña”
Entonces  la plataforma muestra el <formulario> con las secciones de “Calificación” y “Comentarios”

Examples: Datos de entrada
    | Estado de solicitud | Boton |
    | Terminado | Agregar reseña |
    
Examples: Datos de salida
    | Formulario de reseña | Boton | Calificacion | Comentarios | Agregar reseña |

Scenario: 2. El cliente agrega una reseña 
Dado que el cliente visualiza el formulario de reseñas
Cuando  el cliente seleccione una <calificación> (en estrellas) 
Y el cliente agregue un <comentario> en la caja de texto
Y el cliente haga clic en “Agregar reseña”
Entonces la plataforma agrega la <reseña> al perfil del trabajador que realizo el servicio 

Examples: Datos de entrada
    | Calificacion | Comentarios | Boton |
    | 3.5 estrellas | No llego a tiempo y hubo percances pero realizo un trabajo adecuado | Agregar reseña |
    
Examples: Datos de salida
    | Calificacion | Nombre del cliente | Comentario |
    | 3.5 estrellas | Karina Chavez | No llego a tiempo y hubo percances pero realizo un trabajo adecuado |