Feature: Consulta y Descarga de Categorías por GA

  Como comercial o operaciones MKP
  Quiero poder consultar y descargar plantillas por GA
  Para poder tener un control de las categorías que coinciden con ese GA

  Background:
        Given estoy en el sitio web
        And validar que se muestre el acceso al sistema
        And el usuario ha iniciado sesion con perfil de "Operador"
        When Seleccionar el menú de "Consulta categorías" en la posición 3
        And validar que este en la pagina de Consulta categorías

  Scenario: validar elementos para la página Consultar categorías por GA existente
      Then validar que se muestre el botón +
      And validar que se muestre el input de categoria
      And validar que se muestre el area de categorias
      Then validar que se muestre el botón "Consultar" deshabilitado
  
  
  Scenario: validar que se muestre el botón Consultar habilitado cuAndo se ingrese un valor   
    And ingreso el grupo de artículos "123"
    And validar que se permita seleccionar el botón +
    Then validar que se muestre el botón "Consultar" habilitado

  Scenario: validar que se muestre el botón Consultar habilitado cuAndo se ingrese un valor   
    And ingreso el grupo de artículos "123"
    And validar que se permita seleccionar el botón +
    And presiono el botón Consultar
    When Validar que se muestre la alerta "No se encontraron categorías para el GA ingresado"
   
  Scenario: validar que se muestre el listado de articulos que se consultaron por categoria 10101
    And ingreso el grupo de artículos "10101"
    And validar que se permita seleccionar el botón +
    And presiono el botón Consultar 
    Then veo un listado de las categorías que coinciden con el "10101" ingresado
    And tengo la opción de borrar la consulta y volver a ingresar un nuevo valor de "10101"
    Then validar que se muestre el botón "Consultar" deshabilitado

  Scenario: Consultar categorías por GA inexistente 456
    And ingreso el grupo de artículos "456"
    And validar que se permita seleccionar el botón +
    And presiono el botón Consultar 
    When Validar que se muestre la alerta "No se encontraron categorías para el GA ingresado"

  Scenario: Descargar plantillas por Grupo de Articulo existente 10101
    And ingreso el grupo de artículos "10101"
    And validar que se permita seleccionar el botón +
    And presiono el botón Consultar 
    And seleccionar el botón "Descargar"
 
  Scenario: Descargar plantillas por GA inexistente 999
    And ingreso el grupo de artículos "999"
    And validar que se permita seleccionar el botón +
    And presiono el botón Consultar
    Then Validar que se muestre la alerta "No se encontraron categorías para el GA ingresado"
    #And seleccionar el botón Descargar
    
