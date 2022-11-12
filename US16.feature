Feature: US16 - Verificacion de cuenta
    Como trabajador/cliete quiero pasar por una verificacion de mi cuenta para
    tener una experiencia mas segura al usar la plataforma.
    
Scenario: 1. El trabajador/cliente verifica su cuenta
Dado que el trabajador/cliente se ha registrado en la plataforma
Cuando el trabajador/cliente abra el enlace recibido por correo electronico o SMS 
Entonces la plataforma verifica la cuenta y permite el acceso a todas sus funciones

Examples: Datos de entrada
    | Enlace enviado por correo o sms | 
    | Abierto |

Examples: Datos de salida
    | Estado de verificacion |
    | Verificacion exitosa |