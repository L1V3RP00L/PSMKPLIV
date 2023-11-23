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

Scenario: validar que se muestre los titulos de la tabla NOMBRE, APELLIDO, CORREO, ROL, ACCIONES
        Then validar que se muestre el botón Buscar deshabilitado
        Given ingreso un usuario con perfil de "Seller"
        And validar que se muestre el botón Buscar habilitado
        And seleccionar el boton de Buscar
        Then validar que se muestren resultados en la tabla
        Then Validar que se muestre el usuario buscado

Scenario: validar que se muestre los iconos de actualizar, eliminar
Then validar que se muestre el botón Buscar deshabilitado
Given ingreso un usuario con perfil de "Seller"
And seleccionar el boton de Buscar
And validar que se muestre el check de habilitar
And validar que se muestre el icono de actualizar habilitar
Then validar que se muestre el icono de eliminar habilitar

Scenario: validar que se muestre los iconos de actualizar, eliminar
        Then validar que se muestre el botón Buscar deshabilitado
        Given ingreso un usuario con perfil de "Administrador"
        And seleccionar el boton de Buscar
        And validar que se muestre el check de habilitar
        And validar que se muestre el icono de actualizar habilitar.
        Then validar que no se muestre el icono de eliminar
        
Scenario: Validar que se muestre los datos para actualizar el usuario Seller
        Then validar que se muestre el botón Buscar deshabilitado
        Given ingreso un usuario con perfil de "Seller"
        And seleccionar el boton de Buscar
        And Seleccionar el icono de actualizar habilitar
        Then Validar que se muestre una pantalla emergente
        Then Validar que se muestre tipo de usuario "Seller" en la pantalla emergente
        Then Validar que se muestre el "nombre" del usuario buscado
        Then Validar que se muestre el "Apellido" del usuario buscado
        Then Validar que se muestre el "correo" del usuario buscado

        Then Validar que se muestre el "idMirakl" del usuario buscado
        Then Validar que se muestre el "telefono" del usuario buscado
        Then Validar que se muestre el "numInt" del usuario buscado
        Then Validar que se muestre el "numExt" del usuario buscado
        Then Validar que se muestre el "Calle" del usuario buscado
        Then Validar que se muestre el "asentamiento" del usuario buscado
        Then Validar que se muestre el "codigoPostal" del usuario buscado
        Then Validar que se muestre el "municipio" del usuario buscado
        Then Validar que se muestre el "ciudad" del usuario buscado
        Then Validar que se muestre el "estado" del usuario buscado
        Then Validar que se muestre el "articulos" del usuario buscado
        
Scenario: Validar que se permita actualizar el usuario
        Then validar que se muestre el botón Buscar deshabilitado
        Given ingreso un usuario con perfil de "Seller"
        And seleccionar el boton de Buscar
        And Seleccionar el icono de actualizar habilitar
        And Validar que se muestre una pantalla emergente
        And Seleccionar el botón Guardar para actualizar los datos del usuario
        Then Validar que se muestre la alerta "Consulta realizada con éxito"