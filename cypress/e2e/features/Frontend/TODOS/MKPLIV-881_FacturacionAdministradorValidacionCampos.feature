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

Scenario: validar que permita ingresar un mensaje y seleccionar el tipo de solicitud y que se muestre el botón Enviar  deshabilitado
      Then presionar el botón "Consulta de Solicitud"
      And selecciona el tipo de solicitud "Solicitud de factura"
      Then validar que se muestre el botón "Enviar" deshabilitado

Scenario: validar que permita ingresar un mensaje y seleccionar el tipo de solicitud e ingresar un dato en el campo de correo y que se muestre el botón Enviar  deshabilitado
      Then presionar el botón "Consulta de Solicitud"
      And selecciona el tipo de solicitud "Solicitud de factura"
      Then validar que se muestre el botón "Enviar" deshabilitado

Scenario: validar que permita ingresar un numero de pedido y un numero de proveedor y un numero de tienda seleccionar  el tipo de solicitud y que se muestre el botón Enviar  deshabilitado
      Then presionar el botón "Consulta de Solicitud"
      #When el usuario ingresa el número de pedido "12345"
      And selecciona el tipo de solicitud "Solicitud de factura"
      #When el usuario ingresa el número de proveedor "12345"   
      Then el usuario ingresa el número de tienda "12345"
      Then validar que se muestre el botón "Enviar" deshabilitado

Scenario: validar que permita ingresar un numero de pedido y seleccionar  el tipo de solicitud y que se muestre el botón Enviar  deshabilitado
      Then presionar el botón "Consulta de Solicitud"
      #When el usuario ingresa el número de pedido "12345"
      And selecciona el tipo de solicitud "Solicitud de factura"
      Then validar que se muestre el botón "Enviar" deshabilitado

Scenario: validar que solo permita ingresar número en el numero de pedido en la sección de Consulta de Solicitud
      Then presionar el botón "Consulta de Solicitud"
      #When el usuario ingresa el número de pedido "Hola@!!_?¡¿$)(/&%$3"
      Then validar que solo tenga número en "Número de pedido"

Scenario: validar que solo permita ingresar número en el numero de pedido en la sección de Consulta de Solicitud
      Then presionar el botón "Consulta de Solicitud"
      #When el usuario ingresa el número de proveedor "Hola@!!_?¡¿$)(/&%$3"
      Then validar que solo tenga número en "número de proveedor"

Scenario: validar que solo permita ingresar número en numero de tienda en la sección de Consulta de Solicitud
      Then presionar el botón "Consulta de Solicitud"
      #When el usuario ingresa el número de tienda "Hola@!!_?¡¿$)(/&%$3"
      Then validar que solo tenga número en "número de tienda"

Scenario: validar que solo permita ingresar hasta 10 numeros en el numero de pedido en la sección de Consulta de Solicitud
      Then presionar el botón "Consulta de Solicitud"
      #When el usuario ingresa el número de pedido "1234567890987654321"
      Then validar que solo permita ingresar 1234567890 para el campo de "Número de pedido"

Scenario: validar que solo permita ingresar hasta 10 numeros en el número de proveedor en la sección de Consulta de Solicitud
      Then presionar el botón "Consulta de Solicitud"
      #When el usuario ingresa el número de proveedor "1234567890987654321"
      Then validar que solo permita ingresar 1234567890 para el campo de "número de proveedor"

Scenario: validar que se muestre el boton de Enviar habilitado al ingresar todos los datos solicitados en la sección de Consulta de Solicitud
      Then presionar el botón "Consulta de Solicitud"
      #When el usuario ingresa el número de pedido "1234567890"
      #When el usuario ingresa el número de proveedor "1234567890"
      #When el usuario ingresa el número de tienda "1234"
      Then validar que se muestre el botón "Enviar" deshabilitado

Scenario: validar que se muestre el botón Enviar deshabilitado si no se ha seleccionado un mes y un año en la sección de Consulta de Solicitud
      Then presionar el botón "Consulta de Solicitud"
      #When el usuario ingresa el número de pedido "1234567890"
      #When el usuario ingresa el número de proveedor "1234567890"
      #When el usuario ingresa el número de tienda "1234"
      And selecciona el tipo de solicitud "Solicitud de factura"
      And selecciona el estatus de solicitud "Todos"
      And selecciona el estado de solicitud "Todos"
      Then validar que se muestre el botón "Enviar" deshabilitado
      
 Scenario: validar que se muestre el botón Enviar deshabilitado si no se ha seleccionado un mes en la sección de Consulta de Solicitud
      Then presionar el botón "Consulta de Solicitud"
      #When el usuario ingresa el número de pedido "1234567890"
      #When el usuario ingresa el número de proveedor "1234567890"
      #When el usuario ingresa el número de tienda "1234"
      And selecciona el tipo de solicitud "Solicitud de factura"
      And selecciona el estatus de solicitud "Todos"
      And selecciona el estado de solicitud "Todos"
      And seleccionar el año "2023"
      Then validar que se muestre el botón "Enviar" deshabilitado

Scenario: validar que se muestre el botón Enviar deshabilitado si no se ha seleccionado un año en la sección de Consulta de Solicitud
      Then presionar el botón "Consulta de Solicitud"
      #When el usuario ingresa el número de pedido "1234567890"
      #When el usuario ingresa el número de proveedor "1234567890"
      #When el usuario ingresa el número de tienda "1234"
      And selecciona el tipo de solicitud "Solicitud de factura"
      And selecciona el estatus de solicitud "Todos"
      And selecciona el estado de solicitud "Todos"
      And seleccionar el mes "May"

Scenario: validar que se muestre el botón Enviar este habilitado al ingresar todos los datos en la sección de Consulta de Solicitud
      Then presionar el botón "Consulta de Solicitud"
      #When el usuario ingresa el número de pedido "1234567890"
      #When el usuario ingresa el número de proveedor "1234567890"
      #When el usuario ingresa el número de tienda "1234"
      And selecciona el tipo de solicitud "Solicitud de factura"
      And selecciona el estatus de solicitud "Todos"
      And selecciona el estado de solicitud "Todos"
      And seleccionar el mes "May"
      And seleccionar el año "2023"
      Then validar que se muestre el botón "Enviar" habilitado

Scenario: validar que se muestre el botón Enviar habilitado al ingresar solo año y mes en la sección de Consulta de Solicitud
      Then presionar el botón "Consulta de Solicitud"
      And seleccionar el mes "May"
      And seleccionar el año "2023"
      Then validar que se muestre el botón "Enviar" habilitado

Scenario: validar que se muestre resultados mal presionar el boton de Enviar en la sección de Consulta de Solicitud
      Then presionar el botón "Consulta de Solicitud"
      And seleccionar el mes "May"
      And seleccionar el año "2023"
      And seleccionar el botón "Enviar"
      Then Validar que se muestre la alerta "Consulta realizada con exito"

Scenario: validar que se muestre el texto Se muestran los primeros 1000 registros, si deseas ver todos los registros descarga el archivo en la sección de Consulta de Solicitud
      Then presionar el botón "Consulta de Solicitud"
      And seleccionar el mes "May"
      And seleccionar el año "2023"
      And seleccionar el botón "Enviar"
      Then validar que se muestre el texto Se muestran los primeros
      
Scenario: validar que se muestre los textos relacionados a la tabla en la sección de Consulta de Solicitud
      Then presionar el botón "Consulta de Solicitud"
      And seleccionar el mes "May"
      And seleccionar el año "2023"
      And seleccionar el botón "Enviar"
      Then Validar que se muestre la alerta "Consulta realizada con exito"
      Then validar que se muestre el texto Se muestran los primeros
      Then validar que se muestre el botón "Descargar" habilitado
      Then validar que se muestre el texto "Proveedor / Tienda" en la tabla de resultados
      Then validar que se muestre el texto "Pedido" en la tabla de resultados
      Then validar que se muestre el texto "Correo electrónico" en la tabla de resultados
      Then validar que se muestre el texto "Tipo de solicitud" en la tabla de resultados
      

Scenario: validar que pueda descargar los resultados de la tabla en la sección de Consulta de Solicitud
      Then presionar el botón "Consulta de Solicitud"
      And seleccionar el mes "May"
      And seleccionar el año "2023"
      And seleccionar el botón "Enviar"
      Then Validar que se muestre la alerta "Consulta realizada con exito"
      Then validar que se muestre el texto Se muestran los primeros
      Then validar que se muestre el botón "Descargar" habilitado
      And seleccionar el botón "Descargar"
      Then validar que se halla descargado el archivo

Scenario: validar que se muestre resultados de la busqueda con un numero de proveedor no valido pero numero de tienda valido en la sección de Consulta de Solicitud
      Then presionar el botón "Consulta de Solicitud"
      #When el usuario ingresa el número de pedido "1900003297"
      #When el usuario ingresa el número de proveedor "123456"
      #When el usuario ingresa el número de tienda "2586"
      And selecciona el tipo de solicitud "Solicitud de factura"
      And selecciona el estatus de solicitud "Todos"
      And selecciona el estado de solicitud "Todos"
      And seleccionar el mes "May"
      And seleccionar el año "2023"
      And seleccionar el botón "Enviar"
      Then Validar que se muestre la alerta "Consulta realizada con exito"
      Then validar que se muestre el texto Se muestran los primeros
      Then validar que se muestre el texto "Proveedor / Tienda" en la tabla de resultados
      Then validar que se muestre el texto "Pedido" en la tabla de resultados
      Then validar que se muestre el texto "Correo electrónico" en la tabla de resultados
      Then validar que se muestre el texto "Tipo de solicitud" en la tabla de resultados

Scenario: validar que se muestre resultados de la busqueda con un numero de tienda no valido pero número de proveedor valido en la sección de Consulta de Solicitud
      Then presionar el botón "Consulta de Solicitud"
      #When el usuario ingresa el número de pedido "1900003297"
      #When el usuario ingresa el número de proveedor "2586"
      #When el usuario ingresa el número de tienda "123456"
      And selecciona el tipo de solicitud "Solicitud de factura"
      And selecciona el estatus de solicitud "Todos"
      And selecciona el estado de solicitud "Todos"
      And seleccionar el mes "May"
      And seleccionar el año "2023"
      And seleccionar el botón "Enviar"
      Then Validar que se muestre la alerta "Consulta realizada con exito"
      Then validar que se muestre el texto Se muestran los primeros
      Then validar que se muestre el texto "Proveedor / Tienda" en la tabla de resultados
      Then validar que se muestre el texto "Pedido" en la tabla de resultados
      Then validar que se muestre el texto "Correo electrónico" en la tabla de resultados
      Then validar que se muestre el texto "Tipo de solicitud" en la tabla de resultados

Scenario: validar que se muestre resultados de la busqueda con un numero de tienda no valido pero número de proveedor valido en la sección de Consulta de Solicitud
      Then presionar el botón "Consulta de Solicitud"
      #When el usuario ingresa el número de pedido "1900003297"
      And seleccionar el mes "May"
      And seleccionar el año "2023"
      And seleccionar el botón "Enviar"
      Then Validar que se muestre la alerta "Consulta realizada con exito"
      Then validar que se muestre el texto Se muestran los primeros
      Then validar que se muestre el texto "Proveedor / Tienda" en la tabla de resultados
      Then validar que se muestre el texto "Pedido" en la tabla de resultados
      Then validar que se muestre el texto "Correo electrónico" en la tabla de resultados
      Then validar que se muestre el texto "Tipo de solicitud" en la tabla de resultados

Scenario: validar que no se muestre resultados de la busqueda con un numero de pedido valido pero  un fecha anterior al año 2023 en la sección de Consulta de Solicitud
      Then presionar el botón "Consulta de Solicitud"
      #When el usuario ingresa el número de pedido "1900003297"
      And seleccionar el mes "Abr"
      And seleccionar el año "2022"
      And seleccionar el botón "Enviar"
      Then Validar que se muestre la alerta "No se encontraron resultados"
      Then validar que no se muestre la tabla de resultados

Scenario: validar que no se presione el botón de Limpiar y que se deshabilite el boton de Enviar en la sección de Consulta de Solicitud
      Then presionar el botón "Consulta de Solicitud"
      #When el usuario ingresa el número de pedido "1900003297"
      And seleccionar el mes "Abr"
      And seleccionar el año "2022"
      And seleccionar el botón "Enviar"
      Then Validar que se muestre la alerta "No se encontraron resultados"
      Then validar que no se muestre la tabla de resultados
      And presiona el botón "Limpiar"
      Then validar que se muestre el botón "Enviar" deshabilitado

Scenario: validar que no se presione el botón de Limpiar y que se deshabilite el boton de Enviar con un pedido valido y se muestran resultados en la sección de Consulta de Solicitud
      Then presionar el botón "Consulta de Solicitud"
      #When el usuario ingresa el número de pedido "1900003297"
      And seleccionar el mes "May"
      And seleccionar el año "2023"
      And seleccionar el botón "Enviar"
      Then Validar que se muestre la alerta "Consulta realizada con exito"
      Then validar que se muestre la tabla de resultados
      And presiona el botón "Limpiar"
      Then validar que se muestre el botón "Enviar" deshabilitado
      Then validar que se muestre el botón "Descargar" habilitado
      And seleccionar el botón "Descargar"
      Then validar que se halla descargado el archivo

##############

Scenario: validar que se muestre el icono para responder la factura
      And seleccionar el año "2023"
      And seleccionar el mes "May"
      Then seleccionar el botón "Enviar"
      Then validar que se muestre el icono para responder la factura

Scenario: validar que se muestre el icono para responder la factura
      Then presionar el botón "Consulta de Solicitud"
      And seleccionar el año "2023"
      And seleccionar el mes "Abr"
      And seleccionar el botón "Enviar"
      And Seleccionar el icono para responder la factura
      Then Validar que se muestre el modal para responder la Factura

Scenario: validar que se muestre el modal para responder la factura
      Then presionar el botón "Consulta de Solicitud"
      And seleccionar el año "2023"
      And seleccionar el mes "May"
      And seleccionar el botón "Enviar"
      And Seleccionar el icono para responder la factura
      Then Validar que se muestre el modal para responder la Factura
      Then validar que se muestre el titulo "Responder Solicitud" en el modal para responder la factura
      Then validar que se muestre el texto Arrastra o Selecciona un archivo para responder la factura
      Then Validar que se muestre en el modal para responder la factura el texto "Nota: Si subes un nuevo archivo en PDF o XML, el existente se reemplazará"
      Then Validar que se muestre el boton de "Cancelar"
      Then validar que el caampo de numero de pedido solo contenga numeros en el modal de la factura

Scenario: validar que se adjunten archivos para contestar la facturas
      Then presionar el botón "Consulta de Solicitud"
      And seleccionar el año "2023"
      And seleccionar el mes "May"
      And seleccionar el botón "Enviar"
      And Seleccionar el icono para responder la factura
      Then Validar que se muestre el modal para responder la Factura
      Then cargar un archivo PDF Y XML para contestar la factura