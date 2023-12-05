Feature: Elementos y alert Login

    Feature para validar cada uno de los elementos de la página
    de inicio de sesión y alertas correspondientes.

    Background:
        Given estoy en el sitio web
        Then validar que se muestre el acceso al sistema

    Scenario: Validar que se muestre el campo de ingresar correo
        Then valido que se muestre el input para el correo electronico
    
    Scenario: Validar que se muestre el campo de ingresar contraseña        
        Then valido que se muestre el input para la contraseña

    Scenario: Validar que se muestre el botón de iniciar sesión        
        Then valido que se muestre el botón iniciar sesión

    Scenario: Validar botón iniciar sesión deshabilitado
        Then Validar que se muestre el botón iniciar sesión deshabilitado

    Scenario: Validar que se muestre el link ¿Olvidaste tu contraseña? Restablecela aquí    
        Then ¿Olvidaste tu contraseña? Restablecela aquí

    Scenario: Validar que se muestre el texto *Campos Obligatorios 
        Then *Campos Obligatorios

    Scenario: Validar que se muestre el placeholder Correo electrónico 
        Then Validar que se muestre el placeholder Correo electrónico 

    Scenario: Validar que se muestre el placeholder Contraseña
        Then Validar que se muestre el placeholder Contraseña

    Scenario: Validar el botón iniciar sesión se encuentre deshabilitado al ingresar solo el correo
        And ingreso un "cosas@gmail.com" en el campo de correo
        Then Validar que se muestre el botón iniciar sesión deshabilitado

    Scenario: Se muestre el botón iniciar sesión deshabilitado al ingresar solo la contraseña
        And ingreso un "dato" en el campo de contraseña
        Then Validar que se muestre el botón iniciar sesión deshabilitado

    Scenario: Validar el botón iniciar sesión se encuentre deshabilitado al ingresar solo la contraseña
        And ingreso un "cosas@gmail.com" en el campo de correo
        And ingreso un "dato" en el campo de contraseña
        Then el botón iniciar sesión se habilita

    Scenario: Validar que se muestre el error El correo no es válido
        And ingreso un "correo" en el campo de correo
        Then Se muestra el texto "El correo no es válido" como alerta

    Scenario: Validar que se muestre el texto Contraseña al ingresar el dato de contraseña
        And ingreso un "dato" en el campo de contraseña
        Then Validar que se muestre el texto Contraseña

    Scenario: Validar que se muestre el texto Correo electrónico al ingresar el dato de Correo electrónico
        And ingreso un "cosas@dominio.com" en el campo de correo
        Then Validar que se muestre el placeholder Correo electrónico 
    
    Scenario: En caso de que el usuario y/o  contraseña sean incorrectos se deberá informar al usuario.
        When el usuario ha iniciado sesion con perfil de "incorrecto"
        Then Validar que se muestre una Alerta con el mensaje de Usuario o contraseña incorrecta
    
    Scenario: En caso de que el usuario y/o  contraseña sean correctos se deberá mostrar el Dashboard del usuario.
        When el usuario ha iniciado sesion con perfil de "Seller"
        Then Validar que se muestre Dashboard del usuario logeado