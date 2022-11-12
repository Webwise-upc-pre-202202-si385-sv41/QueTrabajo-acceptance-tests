Feature: US04 -  Cotizacion de servicio
    Como trabajador quiero fijar mis propios precios según el 
    servicio que me solicitan los clientes para poder asegurar
    mis ganancias.

Scenario: 1. El trabajador visualiza la solicitudes pendientes
Dado que el trabajador se encuentra en el menú de la plataforma
Cuando el trabajador haga <clic> en “Mis solicitudes pendientes”
Entonces la plataforma muestra las <solicitudes> que le han enviado los clientes

Examples: Datos de entrada
    | Boton |
    | Mis solicitudes pendientes |

Examples: Datos de salida
    | Nombre del cliente | Tipo de usuario | Estado de solicitud |
    | Cristina Gomez | Cliente | Solicitud pendiente |

Scenario: 2. El trabajador visualiza una solicitud
Dado que el trabajador se encuentra en la pantalla “Mis solicitudes  pendientes”
Cuando el trabajador haga <clic> en una solicitud
Entonces la plataforma muestra los <detalles> de la solicitud de servicio (Dirección del cliente, Descripción del servicio, Imágenes) y los botones “Cotizar” y “Rechazar”.


Examples: Datos de entrada
    | Boton |
    | Solicitud |

Examples: Datos de salida
    | Nombre del cliente | Fecha | Direccion | Descripcion del servicio | Imagenes | Boton | Boton |
    | Cristina Gomez | 12/12/22 | Av La Marina 222 | Solicito servicio de pintura para una habitacion | No hay imagenes | Cotizar | Rechazar |


Scenario: 3. El trabajador visualiza el formulario de cotización
Dado que el trabajador visualiza una solicitud de servicio
Cuando el trabajador haga <clic> en “Cotizar”
Entonces la plataforma muestra un <formulario> con un cuadro de texto de cotización (“Precio: “), un cuadro de texto de comentarios (“Comentarios: “) y el botón “Cotizar”

Examples: Datos de entrada
    | Boton |
    | Cotizar |

Examples: Datos de salida
    | Formulario de Cotizacion|
    | Precio | Comentarios | Cotizar |

Scenario: 4. El trabajador envía una cotización
Dado que el trabajador visualiza el formulario de cotización
Cuando el trabajador agregue un precio en el cuadro de texto de cotización 
Y el trabajador agregue una descripción en el cuadro de texto de comentarios
Y el trabajador haga clic en “Cotizar”
Entonces la plataforma establece el estado de la solicitud como “Pendiente de pago”

Examples: Datos de entrada

    | Cotizacion | Comentarios | Boton |
    | s/ 50.00 | Precio de mano de obra | Cotizar |

Examples: Datos de salida
    | Estado de solicitud |
    | Pendiente de pago |

