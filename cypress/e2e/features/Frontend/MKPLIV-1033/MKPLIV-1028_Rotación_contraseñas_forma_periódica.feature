    
Feature: Funcionalidad: Cambiar contraseña cada 75 días
  Como usuario requiero que el sistema me solicite 
  Cambiar contraseña cada 75 días.

Background:
   Given estoy en el sitio web
   And validar que se muestre el acceso al sistema
   And el usuario ha iniciado sesion con perfil de "Administrador"
   #Then Seleccionar el menú de "Administración  Usuarios" en la posición 1
   #Then validar que se muestre el titulo Administración  Usuarios
    Scenario: Usuario debe cambiar la contraseña después de 75 días
    Dado que el usuario ha iniciado sesión en el portal
    Then Validar que han pasado 75 días naturales desde la creación, restablecimiento o cambio de contraseña
    Then Validar que el usuario intente acceder a su cuenta
    Then Validar que el portal le solicitará que cambie su contraseña antes de continuar

    Scenario: Portal alerta al usuario con 5 días de anticipación
    Dado que el usuario ha iniciado sesión en el portal
    Then Validar que quedan 5 días o menos hasta la fecha límite de cambio de contraseña
    Then Validar que cuando el usuario acceda a su cuenta
    Then el portal le notificará que quedan 5 días o menos para cambiar su contraseña
    Then Y le permitirá cambiar su contraseña en ese momento


    Scenario: Usuario no puede acceder después de la fecha límite
    Dado que el usuario ha iniciado sesión en el portal
    Then Validar que han pasado 75 días naturales desde la creación, restablecimiento o cambio de contraseña
    Then Validar que el usuario no ha cambiado su contraseña antes de la fecha límite
    Then Validar que el usuario intente acceder a su cuenta
    Then Validar que el portal no le permitirá el acceso hasta que cambie su contraseña

    Scenario: Contador de días se reinicia después de cambiar la contraseña
    Dado que el usuario ha iniciado sesión en el portal
    Then Validar que han pasado 75 días naturales desde la creación, restablecimiento o cambio de contraseña
    Then Validar que el usuario cambie su contraseña
    Then Validar que el contador de días se reiniciará
