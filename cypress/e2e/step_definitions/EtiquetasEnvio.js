import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";
  import {etiquetasenvioPage} from '@pages/EtiquetasEnvioPage'
  
  
  Then("validar que se muestre el titulo Etiquetas de envio", () => {
    etiquetasenvioPage.elements.txtTitulo().scrollIntoView().should("be.visible")
    
  });

  Then("validar que se muestre el texto Solo se permite ingresar 100 etiquetas", () => {
    etiquetasenvioPage.elements.txtMaximo().scrollIntoView().should("be.visible")
    
  });

  Then("validar que se muestre el botón Descargar deshabilitado", () => {
    etiquetasenvioPage.elements.descargarBtnDesHabilitado().should("be.visible")
  });
  

  Then("validar que se muestre el botón +", () => {
    etiquetasenvioPage.elements.simboloMasBtn().should("be.visible")
  });

  Then("validar que se muestre el compo para ingresar una etiqueta", () => {
    etiquetasenvioPage.elements.txtArea().should("be.visible")
  });

  Then("validar que permita ingresar el datos {string} de la etiqueta", (txtEtiqueta) => {
    etiquetasenvioPage.elements.txtArea().should("be.visible").type(txtEtiqueta)
  });

  Then("validar que se permita seleccionar el botón +", () => {
    etiquetasenvioPage.elements.simboloMasBtnHabili().should("be.visible").click();
  });

  Then("validar que se muestre el texto ingresado en el Txt Area", () => {
    etiquetasenvioPage.elements.txtAreaDato().should("be.visible").click();
  });
  
  Then("seleccionar el botón {string}", (string) => {
    cy.wait(4000);
    etiquetasenvioPage.elements.descargarBtn().contains(string).should("be.visible").click();
  });


  // Modulo de Notificaciones

  Then("validar que se muestre el botón Guardar", () => {
    etiquetasenvioPage.elements.descargarBtn().should("be.visible").contains("Guardar");
  });

  Then("seleccionar el botón Guardar", () => {
    etiquetasenvioPage.elements.descargarBtn().should("be.visible").contains("Guardar").click();
  });
  