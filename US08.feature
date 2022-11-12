Feature: US08 - Historial de servicios realizados
    Como trabajador quiero ver los servicios realizados para 
    tener un registro de mi actividad en la plataforma

Scenario: 1.La plataforma guarda la informacion del servicio realizado
Dado que el trabajador ha realizado el servicio
Cuando el trabajador marque el servicio como “Terminado”
Entonces la plataforma guarda la <informacion del servicio> y el contrato virtual en la sección “Historial de servicios”

Examples: Datos de entrada
    | Estado de solicitud | 
    | Terminado |

Examples: Datos de salida
    | Datos guardados |
    | Información de servicio | Contrato virtual |

Scenario: 2. El trabajador visualiza el historial de servicios realizados
Dado que el trabajador se encuentra en la página principal de la plataforma
Cuando el trabajador haga clic en la seccion “Historial de servicios”
Entonces la plataforma muestra los servicios que ha realizado

Examples: Datos de entrada
    | Boton | 
    | Historial de servicios |

Examples: Datos de salida
    | Nombre del cliente | Fecha | Direccion | Descripcion del servicio | Calificacion del cliente | Comentario del cliente |
    | Jose Vasquez | 18/07/22 | Av Los Angeles 333 | Servicio de gasfitería |  4 estrellas | Excelente profesional |
    | Natalia Santos | 04/11/22 | Av Los Angeles 333 | Servicio de pintura | 4.5 estrellas | Puntual y responsable |