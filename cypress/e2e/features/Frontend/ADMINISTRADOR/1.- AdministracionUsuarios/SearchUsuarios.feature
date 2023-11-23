Feature: MKPLIV-216_MKPLIV-224- MKPLIV-719 Módulo de administrador de usuario usuarios

  Feature Como usuario Como usuario administrador
  requiero que el nuevo sistema de consultas MKP
  cuente con  un módulo para administrar a los usuarios,
  roles y permisos sobre el sistema.

Background:
    Given estoy en el sitio web
    And validar que se muestre el acceso al sistema
    And el usuario ha iniciado sesion con perfil de "Administrador"
    Then Seleccionar el menú de "Administración  Usuarios" en la posición 1
    Then validar que se muestre el titulo Administración  Usuarios

Scenario: validar que se muestre el botón Crear Usuario y el placeholder Buscar Usuario
    Then validar que se muestre el botón Crear Usuario
    Then validar que se muestre el placeholder Buscar Usuario
    Then validar que se muestre el selector de Usuarios

Scenario: validar que se muestre el botón Crear Usuario y el placeholder Buscar Usuario
    Then seleccionar el selector de Usuarios
    Then lista de tipos de usuario

Scenario: validar que se muestre los titulos de la tabla NOMBRE, APELLIDO, CORREO, ROL, ACCIONES
    Then validar que se muestre el botón Buscar deshabilitado
    Given ingreso un usuario con perfil de "Seller"
    And validar que se muestre el botón Buscar habilitado
    And seleccionar el boton de Buscar
    Then validar que se muestren resultados en la tabla
    Then Validar que se muestre el usuario buscado
    Then Validar que se muestre el checkbox para habilitar al usuario

  #Then validar que se muestre el titulo "NOMBRE " de la tabla de resultados en la posicion 0
  #Then validar que se muestre el titulo "APELLIDO" de la tabla de resultados en la posicion 1
  #Then validar que se muestre el titulo "CORREO" de la tabla de resultados en la posicion 2
  #Then validar que se muestre el titulo "ROL" de la tabla de resultados en la posicion 3
  #Then validar que se muestre el titulo "ACCIONES" de la tabla de resultados en la posicion 4

Scenario: validar que se muestre datos en la tabla
    Given ingreso un usuario con perfil de "Seller"
    And seleccionar el boton de Buscar
    Then validar que se muestren resultados en la tabla

Scenario: validar que se muestre los titulos de la tabla NOMBRE, APELLIDO, CORREO, ROL, ACCIONES
    Then validar que se muestre el botón "Buscar" deshabilitado
    Given ingreso un usuario con perfil de "Operador"
    And validar que se muestre el botón "Buscar" habilitado
    And seleccionar el boton de Buscar
    Then validar que se muestren resultados en la tabla
    Then Validar que se muestre el usuario buscado
    Then Validar que se muestre el checkbox para habilitar al usuario
   #Then validar que se muestre el titulo "NOMBRE " de la tabla de resultados en la posicion 0
   #Then validar que se muestre el titulo "APELLIDO" de la tabla de resultados en la posicion 1
   #Then validar que se muestre el titulo "CORREO" de la tabla de resultados en la posicion 2
   #Then validar que se muestre el titulo "ROL" de la tabla de resultados en la posicion 3
   #Then validar que se muestre el titulo "ACCIONES" de la tabla de resultados en la posicion 4

Scenario: validar que se muestre datos en la tabla
    Given ingreso un usuario con perfil de "Operador"
    And seleccionar el boton de Buscar
    Then validar que se muestren resultados en la tabla
    Then Validar que se muestre el usuario buscado
    Then Validar que se muestre el checkbox para habilitar al usuario

Scenario: validar que se muestre el un usuario al buscarlo
    And validar que se muestre el placeholder Buscar Usuario
    Then ingreso un usuario con perfil de "Administrador"
    Then validar que se muestre el botón Buscar
    Then seleccionar el botón Buscar
    Then Validar que se muestre el usuario buscado
    Then Validar que se muestre el checkbox para habilitar al usuario

Scenario: validar que se muestre las coincidencias al buscar las primeras letras
  Then ingreso las primeras letras de un usuario "Administrador"
  Then seleccionar el botón Buscar
  Then validar que se muestren resultados en la tabla
 

Scenario: validar que permita descargar una archivo con los usuarios encontrados
  Then ingreso las primeras letras de un usuario "Administrador"
  Then seleccionar el botón Buscar
  And seleccionar el botón "Descargar"
  Then validar que se halla descargado el archivo

Scenario: validar que se muestre los usuarios Aministradores
   Then validar que se muestre el selector de Usuarios
   Then seleccionar el selector de Usuarios
   Then lista de tipos de usuario
   Then Seleccionar el usuario de tipo "Administrador"   
   Then seleccionar el botón Buscar
   Then validar que se muestren resultados en la tabla
   Then Validar que se muestren los usuario de tipo "Administrador"

Scenario: validar que se muestre los usuarios Operadores
   Then validar que se muestre el selector de Usuarios
   Then seleccionar el selector de Usuarios
   Then lista de tipos de usuario
   Then Seleccionar el usuario de tipo "Operador"   
   Then seleccionar el botón Buscar
   Then validar que se muestren resultados en la tabla
   Then Validar que se muestren los usuario de tipo "Operador"

Scenario: validar que se muestre los usuarios Seller
   Then validar que se muestre el selector de Usuarios
   Then seleccionar el selector de Usuarios
   Then lista de tipos de usuario
   Then Seleccionar el usuario de tipo "Seller"   
   Then seleccionar el botón Buscar
   Then validar que se muestren resultados en la tabla
   Then Validar que se muestren los usuario de tipo "Seller"

Scenario: validar que se muestre la aleta No se encontró información con los filtros solicitados
  Given ingreso un usuario con perfil de "Inexistente"
  And seleccionar el botón Buscar
  Then Validar que se muestre la alerta "No se encontró información con los filtros solicitados"

Scenario: validar que se permita seleccionar seleccionar cada tipo de usuario
  Given seleccionar el selector de Usuarios
  Then Seleccionar el usuario de tipo "Seller"
  And seleccionar el selector de Usuarios
  Then Seleccionar el usuario de tipo "Operador"
  And seleccionar el selector de Usuarios
  Then Seleccionar el usuario de tipo "Administrador"
  And seleccionar el selector de Usuarios
  Then lista de tipos de usuario
  #And seleccionar el selector de Usuarios
  #Then seleccionar el botón Buscar
  #Then validar que se muestren resultados en la tabla


Scenario: validar que se permita seleccionar Administrador
  Given ingreso un usuario con perfil de "Seller"
  Given seleccionar el selector de Usuarios
  Then Seleccionar el usuario de tipo "Administrador"
  And seleccionar el boton de Buscar
  Then Validar que se muestre la alerta "No se encontró información con los filtros solicitados"

Scenario: validar que se permita seleccionar Administrador
    Given ingreso un usuario con perfil de "Seller"
    Given seleccionar el selector de Usuarios
    Then Seleccionar el usuario de tipo "Operador"
    And seleccionar el boton de Buscar
    Then Validar que se muestre la alerta "No se encontró información con los filtros solicitados"