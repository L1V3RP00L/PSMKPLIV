import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";
  import {generadorEtiquetasBTPage} from '@pages/GeneradorEtiquetasBTPage'
  
  
  Then("validar que se muestre el titulo Generación de etiquetas para surtido BT", () => {
    generadorEtiquetasBTPage.elements.txtTitulo().scrollIntoView().should("be.visible")
    
  });