Feature: US02 - Filtro segun preferencias 
    Como cliente quiero poder ordenar y filtrar la lista de trabajadores segun
    mis preferencias antes de solicitar un servicio para tener una experiencia
    mas personalizada

Scenario: 1. El cliente accede a la lista de trabajadores ubicados
Dado que el cliente ha realizado una busqueda de trabajadores
Cuando haga clic en "Lista"
Entonces la plataforma muestra una <lista de trabajadores> ordenados, por defecto, de acuerdo a su cercanía

Examples: Datos de entrada
    | Boton |
    | Lista |

Examples: Datos de salida
    | Trabajador | Servicio | Calificacion |
    | Erick Rios | Carpintero | 4 estrellas |
    | Jose Paredes | Electricista | 3.5 estrellas |
    | Andrea Moran | Pintor | 4.5 estrellas |

Scenario: 2. El cliente filtra los trabajadores encontrados de acuerdo al tipo de servicio que realizan
Dado que el cliente visualiza la lista de trabajadores ordenados por cercania
Cuando el cliente haga clic en "Filtrar"
Y seleccione el tipo de <servicio>
Entonces la plataforma muestra solo los trabajadores que brinden el servicio seleccionado

Examples: Datos de entrada
    | Servicio |
    | Carpintero |

Examples: Datos de salida
    | Trabajador | Servicio | Calificacion |
    | Erick Rios | Carpintero | 4 estrellas |
    | Susana Valencia | Carpintero | 3.5 estrellas |
    | Carlos Alba | Carpintero | 4.5 estrellas |

Scenario: 3. El cliente ordena los trabajadores encontrados de acuerdo a su calificacion
Dado que el cliente visualiza la lista de trabajadores ordenados por cercania
Cuando el cliente haga clic en "Ordenar por"
Y seleccione "Calificacion"
Entonces la plataforma muestra primero a los <trabajadores> con mejor calificacion

Examples: Datos de entrada
    | Ordenar por |
    | Calificacion |

Examples: Datos de salida
    | Trabajador | Servicio | Calificacion |
    | Andrea Moran | Pintor | 4.5 estrellas |
    | Erick Rios | Carpintero | 4 estrellas |
    | Jose Paredes | Electricista | 3.5 estrellas |
    