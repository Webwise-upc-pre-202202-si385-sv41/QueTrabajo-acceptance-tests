Feature: US13 - Editar experiencia laboral
    Como trabajador quiero editar mi experiencia laboral 
    registrada para corregir los datos que ingresé

Scenario: 1. El trabajador visualiza el formulario de registro de experiencia laboral 
Dado que el trabajador se encuentra en su perfil
Cuando el trabajador haga <clic> en el icono de edición junto a un registro de su experiencia laboral
Entonces la plataforma muestra el <formulario> de registro de experiencia laboral con los datos que el trabajador había ingresado previamente


Examples: Datos de entrada
    | Boton |
    | Editar |
Examples: Datos de salida
    | Modalidad de trabajo | Descripcion de trabajo | Periodo de actividad | Boton |
    | Independiente | Realizó servicios de gasfitería en empresas | 2010-2015 | Añadir a perfil | 

Scenario: 2. El trabajador edita su experiencia laboral
Dado que el trabajador visualiza el formulario de registro de experiencia laboral
Cuando el trabajador edite los datos
Y el trabajador haga <clic> en “Añadir al perfil”
Entonces la plataforma muestra el registro de <experiencia laboral> en el perfil del trabajador con los datos actualizados

Examples: Datos de entrada
    | Modalidad de trabajo | Descripcion de trabajo | Periodo de actividad | Boton |
    | Independiente | Realizó servicios de gasfitería en empresas | 2010-2018 | Añadir a perfil | 
    
Examples: Datos de salida
    | Experiencia | 
    | Trabajador ndependiente desde 2010 a 2018. Realizó servicios de gasfitería en empresas | 