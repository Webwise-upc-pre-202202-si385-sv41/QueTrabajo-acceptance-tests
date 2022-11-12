Feature: US06 - Contrato de Servicio
    Como cliente quiero tener contratos con firma virtual y 
    que se estipule algún tipo de garantía por posible 
    incumplimiento del trabajador para tener seguridad al 
    usar la plataforma

Scenario: 1. El cliente visualiza el contrato de manera virtual 
Dado que el cliente va a realizar el pago de un servicio
Cuando el cliente haga <clic> en “Pagar” 
Entonces la plataforma muestra el <contrato> en plantilla con las cláusulas por posible incumplimiento de contrato y campos para llenar con sus datos

Examples: Datos de entrada
    | Boton | 
    | Pagar |

Examples: Datos de salida
    | Formulario de contrato |
    | Solicitante | Contratado | Clausulas | Firma digital | Cancelar | Aceptar |


Scenario: 2. El cliente firma el contrato de manera virtual 
Dado que el cliente visualiza el contrato de manera virtual 
Cuando el cliente complete sus <datos> y <firme> de manera digital
Y el cliente haga <clic> en “Aceptar”
Entonces la plataforma guardará la información del contrato y mostrará la <pasarela de pago>.

Examples: Datos de entrada
    | Firma | Boton |
    | Firma de cliente | Aceptar |

Examples: Datos de salida
    | Pasarela de pago |
    | Tarjeta de crédito o débito | PayPal | PagoEfectivo y billeteras electrónicas |

