Feature: MKPLIV-486 Envío de guia Manual 

  Como área de negocio requiero que se cuente
  con un módulo de envío de guías externas  para 
  permitir a los seller trabajar guías de envío de
  forma manual desde el portal de sellers.

  Background:
    Given estoy en el sitio web
    And validar que se muestre el acceso al sistema
    And el usuario ha iniciado sesion con perfil de "Seller"
    #And aceptar politicas de usuario
    Then Seleccionar el menú Administración de Envios
    When Seleccionar el menú de "Generación de Guía Manual" en la posición 10

Scenario: Envío de contraguía manual
    Then validar que se carga el módulo de Generación de Guía
    Then validar que se muestre el botón +
    And validar que se muestre el input para ingresar un numero de pedido para la Generación de Guía
    Then validar que se muestre el botón "Consultar" deshabilitado
    #And validar que se permita seleccionar el botón +

Scenario: Ingresar número de pedido
    Then validar que se carga el módulo de Generación de Guía
    Then validar que se muestre el botón +
    And validar que se muestre el input para ingresar un numero de pedido para la Generación de Guía
    Then ingresar un número de pedido no valido
    And validar que se permita seleccionar el botón +
    And validar que el número de pedido ingresado se muestre en el Area
    #And presiono el botón Consultar 
    #And seleccionar el botón Descargar

Scenario: Permita seleccionar el boton +
    Then validar que se carga el módulo de Generación de Guía
    Then validar que se muestre el botón +
    And validar que se muestre el input para ingresar un numero de pedido para la Generación de Guía
    Then ingresar un número de pedido no valido
    And validar que se permita seleccionar el botón +

Scenario: Validar que el número de pedido ingresado se muestre en el Area
    Then validar que se carga el módulo de Generación de Guía
    Then validar que se muestre el botón +
    And validar que se muestre el input para ingresar un numero de pedido para la Generación de Guía
    Then ingresar un número de pedido no valido
    And validar que se permita seleccionar el botón +
    And validar que el número de pedido ingresado se muestre en el Area

Scenario: Validar que se permita presionar el botón Consultar 
    Then validar que se carga el módulo de Generación de Guía
    Then ingresar un número de pedido no valido
    And validar que se permita seleccionar el botón +
    And validar que el número de pedido ingresado se muestre en el Area
    And presiono el botón Consultar
    