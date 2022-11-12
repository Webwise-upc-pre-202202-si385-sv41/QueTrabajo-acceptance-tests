Feature: US09 - Acceso al sitio web
    Como cliente/trabajador quiero que la pagina web sea responsive para
    tener una mejor experiencia de usuario

Scenario: 1. Accesibilidad en la aplicacion web
Dado que el cliente/trabajador quiere usar la plataforma para solicitar un servicio
Cuando el cliente/trabajador ingrese a la plataforma desde su dispositivo movil o computadora
Entonces el sistema reconoce el <dispositivo>
Y la plataforma se adapta de acuerdo al dispositivo que ingrese

Examples: Datos de entrada
    | Dispositivo | Resolucion de pantalla (px) |
    | iPhone 8 | 1.334 x 750px |
    
Examples: Datos de salida
    | Web | 
    | Screen size: small |