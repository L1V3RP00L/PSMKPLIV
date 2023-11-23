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

    Scenario: Validar que se muestre la pantalla de crear usuario
       Given validar que se muestre el botón Crear Usuario
       And Seleccionar el botón Crear Usuario
       Then Validar que se muestre la pantalla de Crear Usuario

    Scenario: Validar que se muestre el título de Alta de usuario y los diferentes elementos
       Given validar que se muestre el botón Crear Usuario
       And Seleccionar el botón Crear Usuario
       And Validar que se muestre el título de Alta de usuario
       And Validar que se muestre el rol del usuario
       And Validar que muestre la caja para el "nombre" del usuario en la posicion 0
       And Validar que muestre la caja para el "Apellido" del usuario en la posicion 1
       And Validar que muestre la caja para el "correo electronico" del usuario en la posicion 2
       And Validar que muestre la caja para el "clave de acceso" del usuario en la posicion 3
       And Validar que se muestre el botón "Guardar" para crear el usuario
       And Validar que se muestre el botón "Cancelar" para crear el usuario
       
Scenario: Validar que se muestre la lista de tipos de Usuario
    Given validar que se muestre el botón Crear Usuario
    And Seleccionar el botón Crear Usuario
    And Seleccionar el tipo de usuario
    Then Validar que se muestre la lista con los tipos de usuarios

Scenario: Validar que seleccione el usuario tipo Administrador y que no cambie la pantalla
    Given validar que se muestre el botón Crear Usuario
    And Seleccionar el botón Crear Usuario
    And Seleccionar el tipo de usuario
    Then Seleccionar "Administrador" como tipo usuario
    And Validar que muestre la caja para el "nombre" del usuario en la posicion 0
    And Validar que muestre la caja para el "Apellido" del usuario en la posicion 1
    And Validar que muestre la caja para el "correo electronico" del usuario en la posicion 2
    And Validar que muestre la caja para el "clave de acceso" del usuario en la posicion 3

Scenario: Validar que permita seleccionar el usuario de tipo Operador y que no cambie la pantalla
    Given validar que se muestre el botón Crear Usuario
    And Seleccionar el botón Crear Usuario
    And Seleccionar el tipo de usuario
    Then Seleccionar "Operador" como tipo usuario
    And Validar que muestre la caja para el "nombre" del usuario en la posicion 0
    And Validar que muestre la caja para el "Apellido" del usuario en la posicion 1
    And Validar que muestre la caja para el "correo electronico" del usuario en la posicion 2
    And Validar que muestre la caja para el "clave de acceso" del usuario en la posicion 3

Scenario: Validar que permita seleccionar el usuario de tipo Seller
    Given validar que se muestre el botón Crear Usuario
    And Seleccionar el botón Crear Usuario
    And Seleccionar el tipo de usuario
    Then Seleccionar "Seller" como tipo usuario
    And Validar que muestre la caja para el "nombre" del usuario en la posicion 0
    And Validar que muestre la caja para el "Apellido" del usuario en la posicion 1
    And Validar que muestre la caja para el "correo electronico" del usuario en la posicion 2
    And Validar que muestre la caja para el "clave de acceso" del usuario en la posicion 3
    And Validar que muestre la caja para el "Número Proveedor" del usuario en la posicion 4
    And Validar que muestre la caja para el "Id tienda Mirakl" del usuario en la posicion 5
    And Validar que muestre la caja para el "Teléfono" del usuario en la posicion 6
    And Validar que muestre la caja para el "Calle" del usuario en la posicion 7
    And Validar que muestre la caja para el "Número interior" del usuario en la posicion 8
    And Validar que muestre la caja para el "Asentamiento" del usuario en la posicion 9
    And Validar que muestre la caja para el "Código Postal" del usuario en la posicion 10
    And Validar que muestre la caja para el "Municipio" del usuario en la posicion 11
    And Validar que muestre la caja para el "Ciudad" del usuario en la posicion 12
    And Validar que muestre la caja para el "Estado" del usuario en la posicion 13
    And Validar que muestre la caja para el "País" del usuario en la posicion 14
    And Validar que muestre la caja para el "Grupo de Artículos" del usuario en la posicion 15


Scenario: Validar que no permita crear un usuario repetido de tipo Seller
    Given validar que se muestre el botón Crear Usuario
    And Seleccionar el botón Crear Usuario
    And Seleccionar el tipo de usuario
    And Seleccionar "Administrador" como tipo usuario
    Then ingresar los datos de un usuario con perfil "Administrador"
    Then Validar que se permita seleccionar el botón "Guardar" para crear el usuario
    Then Validar que se muestre la alerta "El usuario ya existe"
    
Scenario: Validar que permita crear un usuario tipo Administrador
    Given validar que se muestre el botón Crear Usuario
    And Seleccionar el botón Crear Usuario
    And Seleccionar el tipo de usuario
    And Seleccionar "Seller" como tipo usuario
    Then ingresar los datos de un usuario con perfil "Seller_nuevo"



