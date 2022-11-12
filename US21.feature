Feature: US21 - Plan premium
    Como trabajador quiero contar con un plan premium 
    para que mi perfil tenga publicidad dentro de la 
    plataforma y llegar a más clientes

Scenario: 1. El trabajador visualiza los planes disponibles en la plataforma
Dado que el trabajador ha iniciado sesión en la plataforma
Cuando el trabajador haga clic en “Configuracion”
Y el trabajador haga <clic> en “Planes”
Entonces la plataforma muestra los <planes> disponibles “Gratuito” y “Premium” junto a sus características

Examples: Datos de entrada
    | Boton |
    | Planes |

Examples: Datos de salida
    | Planes |
    | Gratuito |
    | Premium |