Feature: Elementos y alert para restablecer contraseña

    Feature para validar cada uno de los elementos para la página
    de restablecer contraseña.

    Background:
        Given estoy en el sitio web
        And validar que se muestre el acceso al sistema
        Then seleccionar ¿Olvidaste tu contraseña? Restablecela aquí

Scenario: Validar que se muestre el texto Restablecer Contraseña
        Then se muestra el texto Restablecer Contraseña

Scenario: Validar que se muestre el texto Escribe el correo electrónico con el que fue creada tu cuenta
        Then se muestra el texto Escribe el correo electrónico con el que fue creada tu cuenta

Scenario: Validar que permita escribir un correo electronico en el campo de correo
         Then ingreso un "hola@hola.com" en el campo de correo

Scenario: Validar que se muestre el campo de ingresar correo
        Then valido que se muestre el input para el correo electronico

Scenario: Validar que se muestre el error al ingreso un correo no valido para restablecer la contraseña
        And ingreso un "dato" para restablecer la contraseña
        Then Se muestra el texto "El correo no es válido" como alerta

Scenario: Validar que el botón continuar se encuentre deshabilitado
        Then Validar que se muestre el botón iniciar sesión deshabilitado

Scenario: Validar que se muestre el el botón continuar deshabilitado si el correo no es valido
        And ingreso un "dato" para restablecer la contraseña
        Then Validar que se muestre el botón iniciar sesión deshabilitado

Scenario: Validar que se muestre el el botón continuar deshabilitado y el mensaje de error 
        And ingreso un "dato" para restablecer la contraseña
        Then Validar que se muestre el botón iniciar sesión deshabilitado
        Then Se muestra el texto "El correo no es válido" como alerta

Scenario: Validar que se muestre el icono del Ojo en el campo de correro
        Then se muestra el icono del ojo en el campo de correo electronico

Scenario: Validar que se habilite el boton continuar al ingrear un correo con la estructura correcta
        And ingreso un "dato@correo.com" para restablecer la contraseña
        Then el botón iniciar sesión se habilita

Scenario: Validar que se muestre el link  Volver a inicio de sesión
        Then se muestra el link "Volver a inicio de sesión"

Scenario: Validar que al eleccionar el link  Volver a inicio de sesión regrese a la pantalla de iniciar sesión
        And seleccionar el link "Volver a inicio de sesión"
        Then ¿Olvidaste tu contraseña? Restablecela aquí

Scenario: Validar que se habilite el boton continuar al ingrear un correo con la estructura correcta
        And ingreso un "dato@correo.com" para restablecer la contraseña
        And el botón iniciar sesión se habilita
        Then seleccionar el botón Continuar
        Then se muestra el texto "Hemos enviado un mail a tu correo electrónico, sigue las instrucciones para restablecer tu contraseña."
