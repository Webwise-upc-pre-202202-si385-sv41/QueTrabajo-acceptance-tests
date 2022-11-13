Feature: US20 - Trabajadores destacados
    Como trabajador quiero que mi perfil sea promocionado 
    cuando tenga una buena calificacion para sentirme mas 
    motivado

Scenario: 1. El trabajador es calificado como destacado
Dado que el trabajador ha marcado tres o mas servicios como “Terminado” en una semana
Cuando el trabajador obtenga tres o mas <calificaciones> superiores a 4.5 
Entonces la plataforma mostrara automáticamente su perfil en la sección de “Trabajadores destacados”

Examples: Datos de entrada
    | Trabajos realizados en la semana | Calificaciones superiores a 4.5 |
    | 5 | 3 |

Examples: Datos de salida
    | Categoría de trabajador |
    | Destacado | 
