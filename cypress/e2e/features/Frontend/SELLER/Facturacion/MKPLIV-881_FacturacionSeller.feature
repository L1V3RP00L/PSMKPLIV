Feature:Módulo de facturacion Usuario seller
  Como usuario Seller del portal
  Quiero poder accder al modulo de facturacion de pedidos y visualizar
  los campos correspondientes para realizar dicho ejercicio

  Background:
        Given estoy en el sitio web
        And validar que se muestre el acceso al sistema
        And el usuario ha iniciado sesion con perfil de "Seller"
        When Seleccionar el menú de "Facturación de pedidos" en la posición 1
        Then validar que se muestre el titulo Facturación de pedidos

#Scenario: validar elementos para la página Facturacion de pedidos existentan      
      #Whenel usuario ingresa el número de pedido "12345"
      #And selecciona el tipo de solicitud "Solicitud de factura"
      #And selecciona el estado de solicitud "Todos"
      #And selecciona el estatus de solicitud "Todos"
      #And seleccionar el mes "May"
      #And seleccionar el año "2023"
      #Then validar que se muestre el botón "Enviar" habilitado

#Scenario: validar que el boton Enviar este deahabilitado cu#ando falte el campo de año      
      #Whenel usuario ingresa el número de pedido "12345"
      #And selecciona el tipo de solicitud "Solicitud de factura"
      #And selecciona el estado de solicitud "Todos"
      #And selecciona el estatus de solicitud "Todos"
      #And seleccionar el mes "May"
      #Then validar que se muestre el botón "Enviar" deshabilitado

#Scenario: validar que el boton Enviar este deahabilitado cu#ando falte el campo del Mes      
      #Whenel usuario ingresa el número de pedido "12345"
      #And selecciona el tipo de solicitud "Solicitud de factura"
      #And selecciona el estado de solicitud "Todos"
      #And selecciona el estatus de solicitud "Todos"
      #And seleccionar el año "2023"
      #Then validar que se muestre el botón "Enviar" deshabilitado

#Scenario: validar que el boton Enviar este habilitado cu#ando falte el campo de estatus de solicitud     
      #Whenel usuario ingresa el número de pedido "12345"
      #And selecciona el tipo de solicitud "Solicitud de factura"
      #And selecciona el estado de solicitud "Todos"
      #And seleccionar el mes "May"
      #And seleccionar el año "2023"
      #Then validar que se muestre el botón "Enviar" habilitado

#Scenario: validar que el boton Enviar este habilitado cu#ando falte el campo de estado de solicitud    
      #Whenel usuario ingresa el número de pedido "12345"
      #And selecciona el tipo de solicitud "Solicitud de factura"
      #And selecciona el estado de solicitud "Todos"
      #And seleccionar el mes "May"
      #And seleccionar el año "2023"
      #Then validar que se muestre el botón "Enviar" habilitado
 
 #Scenario: validar que el boton Enviar este habilitado cu#ando falte el campo de tipo de solicitud         
      #Whenel usuario ingresa el número de pedido "12345"
      #And selecciona el estado de solicitud "Todos"
      #And selecciona el estatus de solicitud "Todos"
      #And seleccionar el mes "May"
      #And seleccionar el año "2023"
      #Then validar que se muestre el botón "Enviar" habilitado

#Scenario: validar que el boton Enviar este habilitado cu#ando falte el campo de número de pedido        
      #And selecciona el tipo de solicitud "Solicitud de factura"
      #And selecciona el estado de solicitud "Todos"
      #And selecciona el estatus de solicitud "Todos"
      #And seleccionar el mes "May"
      #And seleccionar el año "2023"
      #Then validar que se muestre el botón "Enviar" habilitado

#Scenario: validar que el boton Enviar este habilitado cu#ando se ingrese Mes y año     
      #And seleccionar el mes "May"
      #And seleccionar el año "2023"
      #Then validar que se muestre el botón "Enviar" habilitado

#Scenario: validar que el boton Enviar este deshabilitado cu#ando se ingrese solo el Mes     
      #And seleccionar el mes "May"
      #Then validar que se muestre el botón "Enviar" deshabilitado

#Scenario: validar que el boton Enviar este deshabilitado cu#ando se ingrese solo el año     
      #And seleccionar el año "2023"
      #Then validar que se muestre el botón "Enviar" deshabilitado

#Scenario: validar que el boton Enviar este deahabilitado cu#ando solo se ingrese el numero de pedido      
      #Whenel usuario ingresa el número de pedido "12345"      
      #Then validar que se muestre el botón "Enviar" deshabilitado

#Scenario: validar que el boton Enviar este deahabilitado cu#ando solo se ingrese el numero de pedido y el año   
      #Whenel usuario ingresa el número de pedido "12345"
      #And seleccionar el año "2023"
      #Then validar que se muestre el botón "Enviar" deshabilitado

#Scenario: validar que el boton Enviar este deahabilitado cu#ando solo se ingrese el numero de pedido y el mes    
      #Whenel usuario ingresa el número de pedido "12345"
      #And seleccionar el mes "May"
      #Then validar que se muestre el botón "Enviar" deshabilitado

#Scenario: validar que el muestre el boton Limpiar 
      #And seleccionar el año "2022"
      #And seleccionar el mes "May"
      #Then seleccionar el botón "Enviar"
      #Then Validar que se muestre la alerta "No se encontraron resultados"

#Scenario: validar que se muestre el icono para responder la factura
      #And seleccionar el año "2023"
      #And seleccionar el mes "May"
      #Then seleccionar el botón "Enviar"
      #Then validar que se muestre el icono para responder la factura

#Scenario: validar que se muestre el icono para responder la factura
      #And seleccionar el año "2023"
      #And seleccionar el mes "May"
      #And seleccionar el botón "Enviar"
      #And Seleccionar el icono para responder la factura
      #Then Validar que se muestre el modal para responder la Factura

#Scenario: validar que se muestre el modal para responder la factura
      #And seleccionar el año "2023"
      #And seleccionar el mes "May"
      #And seleccionar el botón "Enviar"
      #And Seleccionar el icono para responder la factura
      #Then Validar que se muestre el modal para responder la Factura
      #Then validar que se muestre el titulo "Responder Solicitud" en el modal para responder la factura
      #Then validar que se muestre el texto Arrastra o Selecciona un archivo para responder la factura
      #Then Validar que se muestre en el modal para responder la factura el texto "Nota: Si subes un nuevo archivo en PDF o XML, el existente se reemplazará"
      #Then Validar que se muestre el boton de "Cancelar"
      #Then validar que el caampo de numero de pedido solo contenga numeros en el modal de la factura

Scenario: validar que se adjunten archivos para contestar la facturas
      And seleccionar el año "2023"
      And seleccionar el mes "May"
      And seleccionar el botón "Enviar"
      And Seleccionar el icono para responder la factura
      Then Validar que se muestre el modal para responder la Factura
      Then cargar un archivo PDF Y XML para contestar la factura
      Then Validar que se visualizan los archivos cargados para contestar la factura
      #Then Validar que se tenga un número en para el campo de pedido
      Then Validar que se tenga el correo electronico del usuario
      ##Then se muestran los pedidos facturados para el mes y año seleccionados