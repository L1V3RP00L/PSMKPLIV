import {
    Then
   } from "@badeball/cypress-cucumber-preprocessor";
   import {actualizacionInformacionPage} from '@pages/ActualizacionInformacionPage'
   
   Then("validar que se muestre el titulo Actualización de información de guías Sellers", () => {
        actualizacionInformacionPage.elements.txtTitulo().scrollIntoView().should("be.visible")  
   });

   Then("cargar el archivo {string} para las medidas de pedidos", (archivo) => {
        actualizacionInformacionPage.uploadFile().attachFile(archivo);
   });

   Then("seleccionar el boton Subir archivo guias", () => {
        actualizacionInformacionPage.elements.btnSubir().click();
   });

    Then("cargar un archivo CSV con un formato correcto", () => {
        actualizacionInformacionPage.elements.uploadFile().attachFile("Actualizacion_guias_qw.csv");
    });

    Then("cargar un archivo CSV con un formato incorrecto o campos faltantes", () => {
        actualizacionInformacionPage.elements.uploadFile().attachFile("Actualizacion_error.csv");
    });

    Then("cargar un archivo CSV con el campo pedido faltante en una línea", () => {
        actualizacionInformacionPage.elements.uploadFile().attachFile("Actualizacion_error_pedido_faltante.csv");
    });

    Then("cargar un archivo CSV con el campo número de guía faltante en una línea", () => {
        actualizacionInformacionPage.elements.uploadFile().attachFile("Actualizacion_error_guia_faltante.csv");
    });
    

    