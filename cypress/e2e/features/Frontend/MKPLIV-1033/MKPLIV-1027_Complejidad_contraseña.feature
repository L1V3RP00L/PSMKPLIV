Feature: Cambio/Restablecimiento de contraseña con criterios de complejidad
   Feature Como usuario Como usuario administrador
    requiero que el nuevo sistema de consultas MKP 
    cuente con  un módulo para administrar a los usuarios,
    roles y permisos sobre el sistema.

Background:
   Given estoy en el sitio web
   And validar que se muestre el acceso al sistema
   And el usuario ha iniciado sesion con perfil de "Administrador"
   #Then Seleccionar el menú de "Administración  Usuarios" en la posición 1
   #Then validar que se muestre el titulo Administración  Usuarios

  Scenario: Cambio de contraseña con complejidad adecuada
    Given que el usuario está en la página de cambio de contraseña
    When Validar que se ingresa una nueva contraseña que no cumple con los criterios de complejidad
      Then Validar que se muestre el checkbox para habilitar al usuario
      Then Validar que el texto tenga al menos 8 caracteres
      Then Validar que el texto tenga al menos una mayúscula
      Then Validar que el texto tenga al menos una minúscula
      Then Validar que el texto tenga al menos un número
      Then Validar que el texto tenga al menos un carácter especial
      Then Validar que el texto alterne números y letras
      Then Validar que el texto evite letras o números consecutivos
    Then la contraseña es cambiada y se muestra un mensaje de éxito

  Scenario: Cambio de contraseña con complejidad inadecuada
    Given que el usuario está en la página de cambio de contraseña
    When Validar que se ingresa una nueva contraseña que no cumple con los criterios de complejidad     
    Then Validar que la contraseña no es cambiada y se muestra un mensaje de error indicando que tiene letras o números consecutivos

  Scenario: Restablecimiento de contraseña con complejidad adecuada
    Given que el usuario está en la página de restablecimiento de contraseña
    When Validar que se ingresa una nueva contraseña que no cumple con los criterios de complejidad    
    Then Validar que la contraseña tiene al menos un carácter especial
    Then Validar que la contraseña alterna números y letras
    Then Validar que la contraseña evita letras o números consecutivos
    Then Validar que la contraseña es restablecida y se muestra un mensaje de éxito

  Scenario: Restablecimiento de contraseña con complejidad inadecuada
    Given que el usuario está en la página de restablecimiento de contraseña
    Then Validar que se ingresa una nueva contraseña que no cumple con los criterios de complejidad
    Then Validar que la contraseña no es restablecida y se muestra un mensaje de error indicando los criterios de complejidad que no se cumplieron
