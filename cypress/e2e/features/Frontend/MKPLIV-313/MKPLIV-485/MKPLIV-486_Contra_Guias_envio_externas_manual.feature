Feature: Envío de contraguías externas Manual

  Como área de negocio requiero que se cuente
  con un módulo de envío de guías externas  para 
  permitir a los seller trabajar guías de envío de
  forma manual desde el portal de sellers.

  Background:
    Then Validar que se muestre el menú de Administración de Envios
        Then Seleccionar el menú Administración de Envios
        Then Seleccionar el menú de "Contra Guías" en la posición 12

  Scenario: Envío de contraguía manual
    When selecciono la opción "Envío Manual"
    And ingreso el número de pedido de 10 caracteres o menos
    And ingreso el número de guía de hasta 40 caracteres
    And lleno el formulario con la información de envío:
      | Campo                | Valor                         |
      | Nombre del cliente   | <nombre_cliente>              |
      | Correo electrónico  | <email_cliente>               |
      | Lada                | <lada_cliente>                |
      | Teléfono            | <tel_cliente>                 |
      | Calle               | <calle_cliente>               |
      | Número Exterior     | <num_ext_cliente>             |
      | Número Interior     | <num_int_cliente>             |
      | Edificio            | <edificio_cliente>            |
      | Entre calles        | <entre_calles>                |
      | Colonia             | <colonia_cliente>             |
      | Código Postal       | <codigo_postal>               |
      | Municipio o delegación | <delegacion_municipio_cliente> |
      | Ciudad              | <ciudad_cliente>              |
      | Estado              | <estado_cliente>              |
      | Paquetera           | <paquetera>                   |
      | SKU                 | <sku>                         |
    And adjunto el archivo de envío
    And seleccionar el botón "Enviar"
    Then debería ver un mensaje de confirmación

  Scenario: Envío de contraguías masivo
    When selecciono la opción "Envío Masivo"
    Then debería redirigirme a la página de envío masivo de contraguías