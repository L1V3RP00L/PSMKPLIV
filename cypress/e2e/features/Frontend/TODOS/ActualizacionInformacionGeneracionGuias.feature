Feature: Actualizacion de información Guias

  Como comercial o operaciones MKP
  Quiero poder actualizar la informacion de la guia
  desde un archivo csv

Background:
    Given estoy en el sitio web
    And validar que se muestre el acceso al sistema
    And el usuario ha iniciado sesion con perfil de "Administrador"
    Then Validar que se muestre el menú de Administración de Envios
    Then Seleccionar el menú Administración de Envios
    Then Seleccionar el menú de "Actualización de Información para Generación de Guías" en la posición 19

Scenario: Carga de archivo CSV fallida
  Given validar que se muestre el titulo Actualización de información de guías Sellers
  When cargar un archivo CSV con un formato incorrecto o campos faltantes
  Then seleccionar el boton Subir archivo guias
  Then Validar que se muestre la alerta "El archivo no tiene la estructura correcta"

Scenario: Campo de pedido faltante en el archivo CSV
  Given validar que se muestre el titulo Actualización de información de guías Sellers
  When cargar un archivo CSV con el campo pedido faltante en una línea
  Then seleccionar el boton Subir archivo guias
  Then Validar que se muestre la alerta "El archivo no tiene la estructura correcta"

Scenario: Campo de número de guías faltante en el archivo CSV
  Given validar que se muestre el titulo Actualización de información de guías Sellers
  When cargar un archivo CSV con el campo número de guía faltante en una línea
  Then seleccionar el boton Subir archivo guias
  Then Validar que se muestre la alerta "Archivo CSV es inválido debido a la falta del campo número de guía ó número de pedido"

Scenario: Carga de archivo CSV exitosa    
    Given validar que se muestre el titulo Actualización de información de guías Sellers    
    When cargar un archivo CSV con un formato correcto
    Then seleccionar el boton Subir archivo guias
    Then Validar que se muestre la alerta "Actualización de guias aplicadas"
