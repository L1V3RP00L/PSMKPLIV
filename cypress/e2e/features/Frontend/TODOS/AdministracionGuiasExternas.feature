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
    Then Seleccionar el menú de "Administración de guías externas" en la posición 17


