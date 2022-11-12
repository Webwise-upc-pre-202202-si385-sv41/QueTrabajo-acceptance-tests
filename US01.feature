Feature: US01 - Busqueda de trabajadores segun ubicacion
    Como cliente quiero saber cuales son los trabajadores
    independientes que estan cerca de mi hogar para solicitar
    el servicio

Scenario: 1. El cliente busca trabajadores independientes de acuerdo a su localizacion
Dado que el cliente se encuentra en "Busqueda de Trabajadores"
Cuando el cliente haga click en el icono de localizacion
Entonces la plataforma accede a su <ubicacion>
Y la plataforma muestra un mapa con los <trabajadores mas cercanos> a su ubicacion con sus respectivas <calificaciones>

Examples: Datos de entrada
    | ubicacion |
    | Av. Izaguirre 111 |

Examples: Datos de salida
    | trabajadores | calificaciones |
    | Pintor | 5 estrellas |
    | Electricista | 3.5 estrellas |

Scenario: 2. El cliente busca trabajadores independientes ingresando una direccion
Dado que el cliente se encuentra en "Busqueda de trabajadores"
Cuando el cliente ingrese una <direccion> en la barra de busqueda
Y el ciente presione Enter o haga clic en el icono de busqueda
Entonces la plataforma muestra un mapa con los <trabajadores mas cercanos> a la direccion ingresada con sus respectivas <calificaciones>

Examples: Datos de entrada
    | direccion |
    | Av. Izaguirre 111 |

Examples: Datos de salida
    | trabajadores | calificaciones |
    | Pintor | 5 estrellas |
    | Electricista | 3.5 estrellas |