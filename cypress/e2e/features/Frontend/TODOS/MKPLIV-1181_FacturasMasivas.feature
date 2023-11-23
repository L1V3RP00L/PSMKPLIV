Feature: MKPLIV-1181 Módulo de facturacion Masiva Usuario Administrador
  Como usuario Administrador del portal
  Quiero que se adicione un botón en el módulo de factura 
  para el perfil de los administradores 

  Background:
    Given estoy en el sitio web
    And validar que se muestre el acceso al sistema
    And el usuario ha iniciado sesion con perfil de "Administrador"
    Then Seleccionar el menú Administración de Envios
    Then Seleccionar el menú de "Facturación de pedidos" en la posición 2
    Then validar que se muestre el titulo Facturación de pedidos como usuario Administrador

Scenario: MKPLIV-1181_1 validar que el botón de ESolicitud Masiva
        Then debería ver el botón "Solicitud Masiva"

Scenario: MKPLIV-1181_2 validar que se permita adjuntar el archivo de tipo csv
        And debería ver el botón "Solicitud Masiva"
        And validar que permita adjuntar el archivo de facturas masivas

Scenario: MKPLIV-1181_3 Adjuntar el archivo de tipo csv que no cumple con la estructura        
        And validar que se muestre el botón "Enviar" deshabilitado
        And adjuntar el archivo de facturas masivas erroneo
        And validar que se muestre el botón "Enviar" habilitado
        And seleccionar el botón "Enviar"
        Then Validar que se muestre la alerta "El archivo no cumple con la estructura, favor de validar y volver a cargar"


Scenario: MKPLIV-1181_4 Adjuntar el archivo de tipo csv con pedidos inexistentes en Mirakl   
        And validar que se muestre el botón "Enviar" deshabilitado
        And adjuntar el archivo de facturas masivas erroneo
        And validar que se muestre el botón "Enviar" habilitado
        Then se debería validar que cada número de pedido exista en MIRAKL antes de cargarlo a la base de datos
        Then se guardarán solo aquellos pedidos que existan en MIRAKL, mostrando el mensaje "El pedido no existe en MIRAKL favor de validar, no se guardó esta factura del pedido" para los pedidos no encontrados
        Then se deberían mostrar los registros cargados y los no cargados con el mensaje "La carga fue satisfactoria", indicando la cantidad de registros ingresados y no ingresados

Scenario: MKPLIV-1181_5 validar que se permita adjuntar el archivo de tipo csv
        And debería ver el botón "Solicitud Masiva"
        And validar que permita adjuntar el archivo de facturas masivas
        And seleccionar el botón "Enviar"
        Then Validar que se muestre la alerta "Registros cargados exitosamente"
