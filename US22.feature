Feature: US22 - Descuento premium
    Como trabajador quiero obtener descuentos en el plan 
    premium por compartir la aplicación con otros usuarios 
    para tener mayores beneficios 

Scenario: 1. El trabajador obtiene un descuento
Dado que el trabajador ha compartido la aplicacion con 5 personas
Cuando el trabajador ingrese a la aplicacion 
Entonces la plataforma muestra un <anuncio> de “Agradecemos tu esfuerzo por difundir nuestra aplicación. Queremos recompensarte con un mes de las funciones Premium gratis, por el pago de un mes del plan.” 

Examples: Datos de entrada
    | Numero de veces que compartió la app | 
    | 5 |

Examples: Datos de salida
    | Anuncio |
    | Agradecemos tu esfuerzo por difundir nuestra aplicación. Queremos recompensarte con un mes de las funciones Premium gratis, por el pago de un mes del plan. |
