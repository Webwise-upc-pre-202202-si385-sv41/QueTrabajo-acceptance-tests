Feature: US03 - Enviar solicitud de servicio
    Como cliente quiero solicitar a los trabajadores una cotizacion de acuerdo
    al servicio que necesito para así elegir a quién contratar de acuerdo a mi
    presupuesto

Scenario: 1. El cliente visualiza el formulario de solicitud de servicio
Dado que el cliente se encuentra en el perfil de un trabajador
Cuando el cliente haga clic en el boton "Solicitar servicio"
Entonces la app muestra el formulario de solicitud de servicio con los campos para completar: <direccion>, <descripcion del servicio>, <imagenes>, etc.

Examples: Datos de entrada
    | Boton |
    | Solicitud de servicio|

Examples: Datos de salida
    | Formulario |
    | Fecha | Direccion | Descripcion del servicio | Imagenes | 

Scenario: 2. El cliente envia la solicitud de servicio
Dado que el cliente se encuentra en el formulario de solicitud de servicio
Cuando el cliente llene los <campos solicitados>
Y haga clic en el boton "Cotizar"
Entonces la plataforma envia la solicitud al trabajador
Y la plataforma establece el <estado de la solicitud> como "Pendiente de cotizacion"

Examples: Datos de entrada
    | Fecha | Direccion | Descripcion del servicio | Imagenes | Boton |
    | 01/10/2022 | Av. Izaguirre 111 | Reparacion de puerta | Imagenes | Cotizar |

Examples: Datos de salida
    | Estado de solicitud |
    | Pendiente de cotizacion |
