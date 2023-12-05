Feature: MKPLIV-216 - MKPLIV-219 Página de inicio de la aplicación

    Feature Como usuario del nuevo sistema de consultas MKP para seller 
    requiero tener un home inicial en donde pueda firmarme para tener 
    acceso al sistema de consultas visualizando los módulos que correspondan 
    al rol que me fue asignado.

    Background:
        Given estoy en el sitio web

    
    @mobile
    Scenario: Validar que se muestren el menu correspondiente a un usuario Administrador/Operador
        Then validar que se muestre el acceso al sistema
        When el usuario ha iniciado sesion con perfil de "Administrador"
        Then Validar que se muestre Dashboard del usuario logeado
        Then Validar que se muestre el menú de "Dashboard" en la posición 0
        Then Validar que se muestre el menú de "Administración  Usuarios" en la posición 1
        Then Validar que se muestre el menú de "Facturación de pedidos" en la posición 2
        Then Validar que se muestre el menú de "Consulta categorías" en la posición 3
        Then Validar que se muestre el menú de "Carga Información" en la posición 4
        Then Validar que se muestre el menú de "Notificaciones Seller" en la posición 5
        Then Validar que se muestre el menú de "Administracion de Costos Logisticos" en la posición 6
        Then Validar que se muestre el menú de "Capacitaciones" en la posición 7
        Then Validar que se muestre el menú de "Promociones" en la posición 8
        Then Validar que se muestre el menú de "Tiendas Liverpool" en la posición 9
        Then Validar que se muestre el menú de "Modulo de carga" en la posición 10
        Then Validar que se muestre el menú de "Administracion Recursos" en la posición 11
        Then Validar que se muestre el menú de "Modulo de ayuda" en la posición 12
        Then Validar que se muestre el menú de "Consulta Devs Automaticas" en la posición 13
        Then Validar que se muestre el menú de "Solicitudes de Ingreso MKP" en la posición 14
        Then Validar que se muestre el menú de "Administración de reportes" en la posición 15
        Then Validar que se muestre el menú de "Formularios" en la posición 16
        Then Validar que se muestre el menú de Administración de Envios
    @mobile
    Scenario: Validar que si navego en algun de los módulos (Menú) disponibles, el sistema deberá permitirme regresar al home,
        Then validar que se muestre el acceso al sistema
        When el usuario ha iniciado sesion con perfil de "Seller"
        And Validar que se muestre Dashboard del usuario logeado
        And Seleccionar el menú de "Facturación de pedidos" en la posición 1
        And validar que se muestre el titulo Facturación de pedidos
        And Seleccionar el menú de "Dashboard" en la posición 0
        Then validar que se muestre el Dashboard de Bienvenido
       


    
    
