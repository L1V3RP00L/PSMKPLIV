import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";
  import {homePage} from '@pages/HomePage'
  
  
  Then("validar que se muestre el Dashboard de Bienvenido", () => {
    
    homePage.elements.txtTitulo().eq(0).scrollIntoView().should("have.text", "Si deseas ingresar a tu tienda de Liverpool Marketplace da click aqui.").should("be.visible")
  });

