Feature: US11 - Visualizar reseñas
    Como cliente quiero ver los datos personales y 
    reseñas sobre los trabajadores para asegurarme 
    de que son confiables y realizan un buen servicio

Scenario: 1. El cliente visualiza el perfil del trabajador 
Dado que el cliente ha realizado una búsqueda de trabajadores
Cuando el cliente haga <clic> en el perfil de un trabajador
Entonces  la plataforma muestra sus <datos personales>, <experiencia> y las <reseñas> de otros usuarios. 

Examples: Datos de entrada
    | Boton |
    | Perfil de trabajador |
    
Examples: Datos de salida
    | Perfil de trabajador |
    | Nombre de trabajador | Servicio | Calificacion | Experiencia | Ver fotos y videos | Reseñas |
