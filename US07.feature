Feature: US07 - Historial de servicios contratados
    Como cliente quiero ver los servicios contratados para 
    tener un registro de mi actividad en la plataforma

Scenario: 1. La plataforma guarda la informacion del servicio contratado
Dado que el cliente ha contratado un servicio
Cuando el servicio sea marcado como “Terminado”
Entonces la plataforma guarda la información del servicio y el contrato virtual en la sección “Historial de servicios”

Examples: Datos de entrada
    | Estado de solicitud | 
    | Terminado |

Examples: Datos de salida
    | Datos guardados |
    | Información de servicio | Contrato virtual |

Scenario: 2. El cliente visualiza el historial de servicios contratados
Dado que el cliente se encuentra en la pagina principal de la plataforma
Cuando el cliente haga <clic> en la seccion “Historial de servicios”
Entonces la plataforma muestra los <servicios> que ha contratado 

Examples: Datos de entrada
    | Boton | 
    | Historial de Servicios |

Examples: Datos de salida
    | Nombre del trabajador | Fecha | Direccion | Descripcion del servicio | Calificacion | Comentario |
    | Juan Ramos | 18/07/22 | Av Los Angeles 333 | Servicio de gasfitería |  4 estrellas | Excelente profesional |
    | Marcelo Diaz | 04/11/22 | Av Los Angeles 333 | Servicio de pintura | 3.5 estrellas | Llego mas tarde de lo acordado |
