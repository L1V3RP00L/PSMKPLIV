Feature: Modulo de descarga de etiquetas de envio

Feature Como seller de MKP requiero descargar las etiquetas de 
envío para los pedidos que tengo que entregar, en el nuevo sitio 
de consultas de MKP para sellers 

Background:
    Given estoy en el sitio web
    Then validar que se muestre el acceso al sistema
    When el usuario ha iniciado sesion con perfil de "Seller"
    And Validar que se muestre el menú de Administración de Envios
    Then Seleccionar el menú Administración de Envios
    And Seleccionar el menú de "Descarga de Etiquetas de Envios" en la posición 8
    Then validar que se muestre el titulo Etiquetas de envio
   
Scenario: Validar que permita ingresar valores el campo de Etiqueta    
    Then validar que se muestre el texto Solo se permite ingresar 100 etiquetas
    Then validar que se muestre el botón "Descargar" deshabilitado
    Then validar que se muestre el botón +
    Then validar que se muestre el compo para ingresar una etiqueta

Scenario: Validar que permita ingresar valores el campo de Etiqueta
    Then validar que permita ingresar el datos "1qasw2" de la etiqueta

Scenario: Validar que se muestre una Alerta con el mensaje No se encontraron resultados
    Then validar que permita ingresar el datos "1qasw2" de la etiqueta
    Then validar que se permita seleccionar el botón +
    Then validar que se muestre el texto ingresado en el Txt Area
    Then seleccionar el botón "Descargar"
    Then Validar que se muestre una Alerta con el mensaje No se encontraron resultados

Scenario: Validar que se descargue la etiqueta de envio con un pedido que contenga una guia asignada
    Then validar que permita ingresar el datos "8490004220-A" de la etiqueta
    Then validar que se permita seleccionar el botón +
    Then validar que se muestre el texto ingresado en el Txt Area
    Then seleccionar el botón "Descargar"
    Then validar que se halla descargado el archivo
    #Then Validar que se muestre una Alerta con el mensaje No se encontraron resultados