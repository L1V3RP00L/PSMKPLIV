Feature: Mostrar notificaciones en el perfil de los Operadores-Seller-Administradores

  Background:
    Given estoy en el sitio web
    And validar que se muestre el acceso al sistema


  Scenario: Mostrar notificaciones And comunicados en el perfil de Operador
    And el usuario ha iniciado sesion con perfil de "Operador"
    Then Validar que se muestre Dashboard del usuario logeado
    When Seleccionar el menú de "Notificaciones Seller" en la posición 5
    Then validar que se carga el módulo de notificaciones


  Scenario: Mostrar notificaciones And comunicados en el perfil de Seller
    And el usuario ha iniciado sesion con perfil de "Seller"
    Then se carga la sección de notificaciones

  Scenario: Mostrar notificaciones And comunicados en el perfil de Administrador
    And el usuario ha iniciado sesion con perfil de "Administrador"
    And se carga la sección de notificaciones
    Then Validar que se muestre el boton de eliminar notificacion
  # listos
  Scenario: validar elementos de notificaciones con el perfil de Administrador
    And el usuario ha iniciado sesion con perfil de "Administrador"
    When Seleccionar el menú de "Notificaciones Seller" en la posición 5
    Then validar que se carga el módulo de notificaciones
    And validar que se muestre el placeholder Introduce o pega tu contenido aquí
    And validar que se muestre el botón Guardar
    Then validar que se muestre el botón de Adjuntar
    Then validar que se muestre los botones necesarios para crear una notificacion en el TextArea

  Scenario: validar que se muestre el mensaje de error Error al crear Notificación
    And el usuario ha iniciado sesion con perfil de "Administrador"
    When Seleccionar el menú de "Notificaciones Seller" en la posición 5
    Then validar que se carga el módulo de notificaciones
    And seleccionar el botón Guardar
    Then Validar que se muestre una Alerta con el mensaje Error al crear Notificación


###############################333
#Then se espera que se muestren las notificaciones del día actual con la fecha actual And los comunicados del día anterior con la leAndenda "AAnder"
#And se espera que las notificaciones más antiguas se muestren en la leAndenda "Anteriores"
#And se espera que las notificaciones se muestren con el formato con el que el operador generó el mensaje

#Scenario: Mostrar imagen en las notificaciones de los vendedores
# Given que el usuario ha iniciado sesion con perfil de <vendedor>
#Then se carga una notificación que incluye una imagen adjunta
#Then se espera que se muestre el preview de la imagen
#And se espera que se muestre una opción para descargar la imagen adjunta

#Scenario: Mostrar documento adjunto en las notificaciones de los vendedores
# Given que el usuario ha iniciado sesion con perfil de <vendedor>
# Then se carga una notificación que incluAnde un documento adjunto
#Then se espera que se muestre el nombre del documento adjunto
#And se espera que se muestre una opción para descargar el documento adjunto