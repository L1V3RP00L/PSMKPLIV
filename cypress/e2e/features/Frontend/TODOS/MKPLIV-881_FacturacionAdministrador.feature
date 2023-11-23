Feature: Módulo de facturacion Usuario Administrador
  Como usuario Seller del portal
  Quiero poder accder al modulo de facturacion de pedidos y visualizar
  los campos correspondientes para realizar dicho ejercicio

  Background:
    Given estoy en el sitio web
    And validar que se muestre el acceso al sistema
    And el usuario ha iniciado sesion con perfil de "Administrador"
    Then Seleccionar el menú Administración de Envios
    Then Seleccionar el menú de "Facturación de pedidos" en la posición 2
    Then validar que se muestre el titulo Facturación de pedidos como usuario Administrador

Scenario: MKPLIV-881_1 validar que el botón de Enviar este deshabilitado      
      When el usuario ingresa el número de pedido "12345"
      And selecciona el tipo de solicitud "Solicitud de factura"
      Then validar que se muestre el botón "Enviar" deshabilitado

Scenario: MKPLIV-881_2 validar que permita ingresar datos en el campo de número de proveedor y que se muestre el botón Enviar  deshabilitado     
      When el usuario ingresa el número de proveedor "12345"
      Then validar que se muestre el botón "Enviar" deshabilitado

Scenario: MKPLIV-881_3 validar que permita ingresar datos en el campo de correo electronico y que se muestre el botón Enviar  deshabilitado      
      When el usuario ingresa el correo electronico "12345"
      Then validar que se muestre el botón "Enviar" deshabilitado

Scenario: MKPLIV-881_4 validar que permita ingresar un mensaje y que se muestre el botón Enviar  deshabilitado
      Then el usuario ingresa el mesaje "Holaaa"
      Then validar que se muestre el botón "Enviar" deshabilitado

Scenario: MKPLIV-881_5 validar que permita ingresar un mensaje y seleccionar el tipo de solicitud y que se muestre el botón Enviar  deshabilitado
      And selecciona el tipo de solicitud "Solicitud de factura"
      Then el usuario ingresa el mesaje "Holaaa"
      Then validar que se muestre el botón "Enviar" deshabilitado

Scenario: MKPLIV-881_6 validar que permita ingresar un mensaje y seleccionar el tipo de solicitud e ingresar un dato en el campo de correo y que se muestre el botón Enviar  deshabilitado
      And selecciona el tipo de solicitud "Solicitud de factura"
      Then el usuario ingresa el mesaje "Holaaa"
      When el usuario ingresa el correo electronico "12345"
      Then validar que se muestre el botón "Enviar" deshabilitado

Scenario: MKPLIV-881_7 validar que permita ingresar un numero de pedido y seleccionar  el tipo de solicitud y que se muestre el botón Enviar  deshabilitado
      When el usuario ingresa el número de pedido "12345"
      And selecciona el tipo de solicitud "Solicitud de factura"     
      Then el usuario ingresa el mesaje "Holaaa"
      Then validar que se muestre el botón "Enviar" deshabilitado

Scenario: MKPLIV-881_8 validar que permita ingresar un numero de pedido y seleccionar  el tipo de solicitud y que se muestre el botón Enviar  deshabilitado
      When el usuario ingresa el número de pedido "12345"
      And selecciona el tipo de solicitud "Solicitud de factura"
      Then validar que se muestre el botón "Enviar" deshabilitado

Scenario: MKPLIV-881_9 validar que mande el mensaje de El correo no es válido
      When el usuario ingresa el correo electronico "1234@jijiiij."
      And Validar que se muestre el mensaje "El correo no es válido"
      Then validar que se muestre el botón "Enviar" deshabilitado

Scenario: MKPLIV-881_10 validar que solo permita ingresar número en el numero de pedido
      When el usuario ingresa el número de pedido "Hola@!!_?¡¿$)(/&%$3"
      Then validar que solo tenga número en "Número de pedido"

Scenario: MKPLIV-881_11 validar que solo permita ingresar número en el numero de pedido
      When el usuario ingresa el número de proveedor "Hola@!!_?¡¿$)(/&%$3"
      Then validar que solo tenga número en "número de proveedor"

Scenario: MKPLIV-881_12 validar que solo permita ingresar hasta 10 numeros en el numero de pedido
      When el usuario ingresa el número de pedido "1234567890987654321"
      Then validar que solo permita ingresar 1234567890 para el campo de "Número de pedido"

Scenario: MKPLIV-881_13 validar que solo permita ingresar hasta 10 numeros en el número de proveedor
      When el usuario ingresa el número de proveedor "1234567890987654321"
      Then validar que solo permita ingresar 1234567890 para el campo de "número de proveedor"

Scenario: MKPLIV-881_14 validar que se muestre el mensaje de Máximo 10 dígitos para número de proveedor
      When el usuario ingresa el número de proveedor "123456"
      And Validar que se muestre el mensaje "Máximo 10 dígitos"

Scenario: MKPLIV-881_15 validar que se muestre el mensaje de Máximo 10 dígitos para número de pedido
      When el usuario ingresa el número de pedido "123456"
      And Validar que se muestre el mensaje "Máximo 10 dígitos"

Scenario: MKPLIV-881_16 validar que se muestre el boton de Enviar habilitado al ingresar todos los datos solicitados
      When el usuario ingresa el número de pedido "1234567890"
      When el usuario ingresa el número de proveedor "1234567890"
      When el usuario ingresa el correo electronico "1234@jijiiij.vv"
      And selecciona el tipo de solicitud "Solicitud de factura"
      Then el usuario ingresa el mesaje "Holaaa"
      Then validar que se muestre el botón "Enviar" habilitado

Scenario: MKPLIV-881_17 validar que se muestre el mensaje de pedido ya fue factirado anteriormente
      When el usuario ingresa el número de pedido "1234567890"
      When el usuario ingresa el número de proveedor "1234567890"
      When el usuario ingresa el correo electronico "1234@jijiiij.vv"
      And selecciona el tipo de solicitud "Solicitud de factura"
      Then el usuario ingresa el mesaje "Holaaa"
      Then validar que se muestre el botón "Enviar" habilitado
      And seleccionar el botón "Enviar"
      Then Validar que se muestre la alerta "Pedido con factura ya solicitada"
      
Scenario: MKPLIV-881_18 validar que se permita seleccionar el botón de Consulta de Solicitud
      Then presionar el botón "Consulta de Solicitud"
      Then Validar que se muestre el campo de "Número de pedido"
      Then Validar que se muestre el campo de "Número de proveedor"
      Then Validar que se muestre el campo de "Tipo de solicitud"
      Then Validar que se muestre el campo de "Estado de solicitud"
      Then Validar que se muestre el campo de "mes"
      Then Validar que se muestre el campo de "año"
      Then Validar que se muestre el campo de "Estatus de atención"

Scenario: MKPLIV-881_19 validar que el botón de Enviar este deshabilitado al consultar una solicitud      
      Then presionar el botón "Consulta de Solicitud"
      When el usuario ingresa el número de pedido "12345"
      And selecciona el tipo de solicitud "Solicitud de factura"
      Then validar que se muestre el botón "Enviar" deshabilitado

Scenario: MKPLIV-881_20 validar que permita ingresar datos en el campo de número de proveedor y que se muestre el botón Enviar  deshabilitado     
      Then presionar el botón "Consulta de Solicitud"
      When el usuario ingresa el número de proveedor "12345"
      Then validar que se muestre el botón "Enviar" deshabilitado

Scenario: MKPLIV-881_21 validar que permita realizar la busqueda con el Estado se la solicitud Nuevo   
      Given presionar el botón "Consulta de Solicitud"
      And selecciona Estado se la solicitud "Nuevo"
      And seleccionar el botón "Enviar"
      And Validar que se muestre la alerta "Consulta realizada con exito"
      Then validar que se muestren resultados con los paramentros ingresados

Scenario: MKPLIV-881_22 validar que permita realizar la busqueda con el Estado se la solicitud Contestado     
      Given presionar el botón "Consulta de Solicitud"
      And selecciona Estado se la solicitud "Contestado"
      And seleccionar el botón "Enviar"
      And Validar que se muestre la alerta "Consulta realizada con exito"
      Then validar que se muestren resultados con los paramentros ingresados
      
Scenario: MKPLIV-881_23 validar que permita realizar la busqueda con el Estado se la solicitud Corrección  
      Given presionar el botón "Consulta de Solicitud"
      And selecciona Estado se la solicitud "Corrección"
      And seleccionar el botón "Enviar"
      And Validar que se muestre la alerta "Consulta realizada con exito"
      Then validar que se muestren resultados con los paramentros ingresados

Scenario: MKPLIV-881_24 validar que permita realizar la busqueda con el Estado se la solicitud Todos     
      Given presionar el botón "Consulta de Solicitud"
      And selecciona Estado se la solicitud "Todos"
      And seleccionar el botón "Enviar"
      And Validar que se muestre la alerta "Consulta realizada con exito"
      Then validar que se muestren resultados con los paramentros ingresados

Scenario: MKPLIV-881_25 validar que el botón de Enviar este deshabilitado al consultar una solicitud      
      Then presionar el botón "Consulta de Solicitud"
      When el usuario ingresa el número de pedido "12345"
      And selecciona el tipo de solicitud "Pedido reembolsado"
      Then validar que se muestre el botón "Enviar" deshabilitado

Scenario: MKPLIV-881_26 validar que permita ingresar un mensaje y seleccionar el tipo de solicitud Pedido reembolsado y que se muestre el botón Enviar  deshabilitado
      And selecciona el tipo de solicitud "Pedido reembolsado"
      Then el usuario ingresa el mesaje "Holaaa"
      Then validar que se muestre el botón "Enviar" deshabilitado

Scenario: MKPLIV-881_27 validar que permita ingresar un mensaje y seleccionar el tipo de solicitud Pedido reembolsado e ingresar un dato en el campo de correo y que se muestre el botón Enviar deshabilitado
      And selecciona el tipo de solicitud "Pedido reembolsado"
      Then el usuario ingresa el mesaje "Holaaa"
      When el usuario ingresa el correo electronico "12345"
      Then validar que se muestre el botón "Enviar" deshabilitado

Scenario: MKPLIV-881_28 validar que permita ingresar un numero de pedido y seleccionar  el tipo de solicitud Pedido reembolsado y que se muestre el botón Enviar  deshabilitado
      When el usuario ingresa el número de pedido "12345"
      And selecciona el tipo de solicitud "Pedido reembolsado"     
      Then el usuario ingresa el mesaje "Holaaa"
      Then validar que se muestre el botón "Enviar" deshabilitado

Scenario: MKPLIV-881_29 validar que permita ingresar un numero de pedido y seleccionar  el tipo de solicitud Pedido reembolsado y que se muestre el botón Enviar  deshabilitado
      When el usuario ingresa el número de pedido "12345"
      And selecciona el tipo de solicitud "Pedido reembolsado"
      Then validar que se muestre el botón "Enviar" deshabilitado


Scenario: MKPLIV-881_30 validar que se muestre el boton de Enviar habilitado al ingresar todos los datos solicitados
      When el usuario ingresa el número de pedido "1234567890"
      When el usuario ingresa el número de proveedor "1234567890"
      When el usuario ingresa el correo electronico "1234@jijiiij.vv"
      And selecciona el tipo de solicitud "Pedido reembolsado"
      Then el usuario ingresa el mesaje "Holaaa"
      Then validar que se muestre el botón "Enviar" habilitado

Scenario: MKPLIV-881_31 validar que se muestre el mensaje de pedido ya fue factirado anteriormente
      When el usuario ingresa el número de pedido "1234567890"
      When el usuario ingresa el número de proveedor "1234567890"
      When el usuario ingresa el correo electronico "1234@jijiiij.vv"
      And selecciona el tipo de solicitud "Pedido reembolsado"
      Then el usuario ingresa el mesaje "Holaaa"
      Then validar que se muestre el botón "Enviar" habilitado
      And seleccionar el botón "Enviar"
      Then Validar que se muestre la alerta "Pedido con factura ya solicitada"

Scenario: MKPLIV-881_32 validar que el botón de Enviar este deshabilitado al seleccionar Pedido reembolsado      
      Then presionar el botón "Consulta de Solicitud"
      When el usuario ingresa el número de pedido "12345"
      And selecciona el tipo de solicitud "Pedido reembolsado"
      Then validar que se muestre el botón "Enviar" deshabilitado