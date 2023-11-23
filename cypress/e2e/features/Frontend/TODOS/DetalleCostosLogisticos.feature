Feature: MKPLIV-216_MKPLIV-220 Modulo de consulta de desglose costos

Feature Como seller de MKP requiero ver los costos logísticos
relacionados a las guías de entrega relacionadas con mi 
No. de proveedor dentro módulo de consulta de desglose 
de costos logísticos. 

Background:
Given estoy en el sitio web
Then validar que se muestre el acceso al sistema
When el usuario ha iniciado sesion con perfil de "Seller"


Scenario: Validar que se muestren los elementos para Detalle Costos Logísticos
    Then Validar que se muestre el menú de Administración de Envios
    Then Seleccionar el menú Administración de Envios
    Then Seleccionar el menú de "Detalle Costos Logísticos" en la posición 14
    Then validar que se muestre el titulo Costos Logísticos
    Then validar que se muestre el placeHolders "No. de Guia" en la posición 2
    Then validar que se muestre el placeHolders "Paquetería" en la posición 3
    Then validar que se muestre el placeHolders "Fecha inicial " en la posición 4
    Then validar que se muestre el placeHolders "Fecha final " en la posición 5
    Then Seleccionar el icono de la Fecha Inicial
    Then validar que se muestre el calendario
    Then Seleccionar el icono de la Fecha Final
    Then validar que se muestre el calendario
    Then seleccionar el combo de Paquetería
    Then Validar que se muestre una lista de Paqueterias

Scenario: El seller podrá seleccionar la Fecha inicial y final del periodo 
    Then Validar que se muestre el menú de Administración de Envios 
    Then Seleccionar el menú Administración de Envios
    Then Seleccionar el menú de "Detalle Costos Logísticos" en la posición 14
    Then Seleccionar el icono de la Fecha Inicial
    Then validar que se muestre el calendario
    Then colocar una fecha inicial
    Then Seleccionar el icono de la Fecha Inicial
    Then validar que se muestre el calendario
    Then colocar una fecha final
    Then validar que se muestre el botón "Buscar" habilitado

Scenario: El seller podrá seleccionar la Fecha inicial y el boton estara deshabilitado
    Then Validar que se muestre el menú de Administración de Envios
    Then Seleccionar el menú Administración de Envios
    Then Seleccionar el menú de "Detalle Costos Logísticos" en la posición 14
    Then Seleccionar el icono de la Fecha Inicial
    Then validar que se muestre el calendario
    Then colocar una fecha inicial
    Then validar que se muestre el botón "Buscar" deshabilitado

Scenario: El seller podrá ingresar el número de guia pero el botón deberá de permaneser deshabilitado
    Then Validar que se muestre el menú de Administración de Envios
    Then Seleccionar el menú Administración de Envios
    Then Seleccionar el menú de "Detalle Costos Logísticos" en la posición 14
    Then ingresar un numero de guia
    Then validar que se muestre el botón "Buscar" deshabilitado

Scenario: El seller podrá ingresar el número de guia y colocar una fecha de inicio pero el botón deberá de permaneser deshabilitado
    Then Validar que se muestre el menú de Administración de Envios
    Then Seleccionar el menú Administración de Envios
    Then Seleccionar el menú de "Detalle Costos Logísticos" en la posición 14
    Then ingresar un numero de guia
    Then Seleccionar el icono de la Fecha Inicial
    Then validar que se muestre el calendario
    Then colocar una fecha inicial
    Then validar que se muestre el botón "Buscar" deshabilitado

Scenario: El seller podrá ingresar el número de guia y colocar una fecha de final pero el botón deberá de permaneser deshabilitado
    Then Validar que se muestre el menú de Administración de Envios
    Then Seleccionar el menú Administración de Envios
    Then Seleccionar el menú de "Detalle Costos Logísticos" en la posición 14
    Then ingresar un numero de guia
    Then Seleccionar el icono de la Fecha Final
    Then validar que se muestre el calendario
    Then colocar una fecha final
    Then validar que se muestre el botón "Buscar" deshabilitado

Scenario: El seller podrá seleccionar la Fecha inicial y final del periodo 
    Then Validar que se muestre el menú de Administración de Envios
    Then Seleccionar el menú Administración de Envios
    Then Seleccionar el menú de "Detalle Costos Logísticos" en la posición 14
    Then ingresar un numero de guia
    Then Seleccionar el icono de la Fecha Inicial
    Then validar que se muestre el calendario
    Then colocar una fecha inicial
    Then Seleccionar el icono de la Fecha Inicial
    Then validar que se muestre el calendario
    Then colocar una fecha final
    Then validar que se muestre el botón "Buscar" habilitado

Scenario: El seller podrá seleccionar una paquetera 
    Then Validar que se muestre el menú de Administración de Envios
    Then Seleccionar el menú Administración de Envios
    Then Seleccionar el menú de "Detalle Costos Logísticos" en la posición 14
    Then ingresar un numero de guia
    Then seleccionar el combo de Paquetería
    Then Validar que se muestre una lista de Paqueterias
    Then seleccionar la paquetera "UPS" en la posición 0

Scenario: El seller podrá seleccionar la Fecha inicial una paquetera y colocar una guia pero el botón deberá de permaneser deshabilitado
    Then Validar que se muestre el menú de Administración de Envios
    Then Seleccionar el menú Administración de Envios
    Then Seleccionar el menú de "Detalle Costos Logísticos" en la posición 14
    Then ingresar un numero de guia
    Then Seleccionar el icono de la Fecha Inicial
    Then validar que se muestre el calendario
    Then colocar una fecha inicial
    Then seleccionar el combo de Paquetería
    Then Validar que se muestre una lista de Paqueterias
    Then seleccionar la paquetera "UPS" en la posición 0
    Then validar que se muestre el botón "Buscar" deshabilitado

Scenario: El seller podrá seleccionar la Fecha inicial y final del periodo ingresar un numero de guia y una paquetera y el boton de Enviar deberá de estar habilitado
    Then Validar que se muestre el menú de Administración de Envios
    Then Seleccionar el menú Administración de Envios
    Then Seleccionar el menú de "Detalle Costos Logísticos" en la posición 14
    Then ingresar un numero de guia
    Then Seleccionar el icono de la Fecha Inicial
    Then validar que se muestre el calendario
    Then colocar una fecha inicial
    Then Seleccionar el icono de la Fecha Inicial
    Then validar que se muestre el calendario
    Then colocar una fecha final
    Then seleccionar el combo de Paquetería
    Then Validar que se muestre una lista de Paqueterias
    Then seleccionar la paquetera "UPS" en la posición 0
    Then validar que se muestre el botón "Buscar" habilitado

Scenario: El seller podrá ingresar datos y al buscarlos el sistema deberá de mThenar un error de No se encontraron resultados
    Then Validar que se muestre el menú de Administración de Envios
    Then Seleccionar el menú Administración de Envios
    Then Seleccionar el menú de "Detalle Costos Logísticos" en la posición 14
    Then ingresar un numero de guia
    Then Seleccionar el icono de la Fecha Inicial
    Then validar que se muestre el calendario
    Then colocar una fecha inicial
    Then Seleccionar el icono de la Fecha Inicial
    Then validar que se muestre el calendario
    Then colocar una fecha final
    Then seleccionar el combo de Paquetería
    Then Validar que se muestre una lista de Paqueterias
    Then seleccionar la paquetera "UPS" en la posición 0
    Then validar que se muestre el botón "Buscar" habilitado
    Then seleccionar el boton de buscar
    Then Validar que se muestre una Alerta con el mensaje No se encontraron resultados