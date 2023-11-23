Feature: MKPLIV-216_MKPLIV-223 Modulo de carga de información

    Como team de operaciones MKP requiero que el 
    nuevo sistema de consultas MKP para sellers cuente con
    un módulo en donde pueda cargar la información de desglose
    de costos logísticos, guías y contraguías para que al momento
    de que el seller consulte su información pueda estar disponible
    y actualizada. 

    Background:
        Given estoy en el sitio web
        And validar que se muestre el acceso al sistema
        And el usuario ha iniciado sesion con perfil de "Administrador"
        Then Seleccionar el menú de "Carga Información" en la posición 4

    Scenario: Validar que se muestren los elementos para Detalle Costos Logísticos
      Then validar que se muestre el titulo Cargar información
      Then validar que se muestre el combo para la carga de información
      Then validar que se muestre el texto Arrastra o Selecciona un archivo
      Then validar que se muestre el botón con el texto Subir archivo

    Scenario: Validar que se muestren los elementos del combo de Selecionar archivos
        And validar que se muestre el titulo Cargar información
        Then seleccionar el combo de Seleccionar archivo
        Then Validar que se muestre una lista con los titulos de lo módulos para subir el archivo

    Scenario: Validar que se muestre el tipo de archivo a cargar de la lista de forma ordenada
       
        And validar que se muestre el titulo Cargar información
        And seleccionar el combo de Seleccionar archivo
        And Validar que se muestre una lista con los titulos de lo módulos para subir el archivo
        Then Validar que se muestre "Desglose de guías" en la posición 0
        Then Validar que se muestre "Provisiones" en la posición 1
        Then Validar que se muestre "Información de plantillas" en la posición 2
        Then Validar que se muestre "Información de tiendas" en la posición 3
        Then Validar que se muestre "Detalle de provisiones" en la posición 4
        Then Validar que se muestre "Información de paqueterías" en la posición 5
        Then Validar que se muestre "Carga Códigos Postales" en la posición 6
        

    Scenario: Validar que seleccionar Carga Códigos Postales de la lista
        And validar que se muestre el titulo Cargar información
        And seleccionar el combo de Seleccionar archivo
        And Validar que se muestre una lista con los titulos de lo módulos para subir el archivo
        Then seleccionar "Carga Códigos Postales" de la lista desplegable que se encuentra en la posicion 6
        Then validar que el combo muestre el titulo "Carga Códigos Postales"

