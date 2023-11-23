Feature: MKPLIV-267 Carga de archivo CSV con medidas de pedidos
  Como usuario de MIRAKL
  Quiero poder cargar un archivo CSV con las medidas de los pedidos de forma masiva
  Para evitar tener que ingresar las medidas de los pedidos uno por uno

  Background:
    Given estoy en el sitio web
    And validar que se muestre el acceso al sistema
    And el usuario ha iniciado sesion con perfil de "Seller"
    Then Seleccionar el menú Administración de Envios
    And Seleccionar el menú de "Actualización de Información para Generación de Guías" en la posición 9

  Scenario: Carga de archivo CSV exitosa
    Given validar que se muestre el titulo Actualización de información de guías Sellers
    When cargar el archivo "Actualizacion_guias_qw.csv" para las medidas de pedidos
    Then seleccionar el boton Subir archivo guias
    Then Validar que se muestre la alerta "Actualización de guias aplicadas"


Scenario: Carga de archivo CSV fallida
  Given validar que se muestre el titulo Actualización de información de guías Sellers
  When cargar un archivo CSV con un formato incorrecto o campos faltantes
  Then seleccionar el boton Subir archivo guias
  Then Validar que se muestre la alerta "El archivo no tiene la estructura correcta"

Scenario: Campo de pedido faltante en el archivo CSV
  Given validar que se muestre el titulo Actualización de información de guías Sellers
  When cargar un archivo CSV con el campo pedido faltante en una línea
  Then seleccionar el boton Subir archivo guias
  Then Validar que se muestre la alerta "archivo CSV es inválido debido a la falta del campo pedido"

Scenario: Campo de número de guías faltante en el archivo CSV
  Given validar que se muestre el titulo Actualización de información de guías Sellers
  When cargar un archivo CSV con el campo número de guía faltante en una línea
  Then seleccionar el boton Subir archivo guias
  Then Validar que se muestre la alerta "archivo CSV es inválido debido a la falta del campo número de guía"
