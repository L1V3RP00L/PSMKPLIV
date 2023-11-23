import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";
  import {generacionGuiaManualPage} from '@pages/GeneracionGuiaManualPage'
  
  
  /*Then("validar que se carga el módulo de Generación de Guía", () => {
    generacionGuiaManualPage.elements.txtTitulo().scrollIntoView().should("be.visible")
    
  });*/

  Then("validar que se muestre el input para ingresar un numero de pedido para la Generación de Guía", () => {
    generacionGuiaManualPage.elements.txtArea().scrollIntoView().should("be.visible")
  });

  Then("ingresar un número de pedido no valido", () => {
    generacionGuiaManualPage.elements.txtArea().type("08608600990-A");
  });

  Then("validar que el número de pedido ingresado se muestre en el Area", () => {
    generacionGuiaManualPage.elements.txtAreaNumCategoria().scrollIntoView().should("be.visible")
  });

     
  Then("Generar guiaaas", () => {
    generacionGuiaManualPage.clickIngresarBtn();
  });
  