import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";
  import {costoslogisticosPage} from '@pages/CostosLogisticosPage'
  import {loginPage} from '@pages/LoginPage'
  
  
  Then("validar que se muestre el titulo Costos Logísticos", () => {
    costoslogisticosPage.elements.txtTitulo().scrollIntoView().should("be.visible")  
  });

  Then("validar que se muestre el placeHolders {string} en la posición {int}", (txtMenu,posicion) => {
    costoslogisticosPage.elements.placeHolderspan().eq(posicion-1).should("have.text", txtMenu).should("be.visible") 
  });

  Then("seleccionar el combo de Paquetería", () => {
    costoslogisticosPage.elements.comboPaquetera().click();
  });

  Then("Validar que se muestre una lista de Paqueterias", () => {
    costoslogisticosPage.elements.listShipping().should("be.visible")
  });

  Then("Seleccionar el icono de la Fecha Inicial", () => {
    costoslogisticosPage.elements.fechas().eq(0).click();
  });

  Then("Seleccionar el icono de la Fecha Final", () => {
    costoslogisticosPage.elements.fechas().eq(1).click();
  });

  Then("validar que se muestre el calendario", () => {
    costoslogisticosPage.elements.calendario().should("be.visible")
  });
  
  Then("colocar una fecha inicial", () => {
    costoslogisticosPage.elements.inputFechaInicial().eq(0).should("have.text", "1").should("be.visible").click();
    
  });

  Then("colocar una fecha final", () => {
    costoslogisticosPage.elements.inputFechaInicial().eq(28).should("have.text", "30").should("be.visible").click();
  });
  
  Then("validar que se muestre el botón Buscar habilitado", () => {
    // MODIFICADO 11/05/2023
    // .eq(1)
    costoslogisticosPage.elements.BuscarBtnHabilitado().should("have.text", "Buscar").should("be.visible")
  });

  Then("validar que se muestre el botón Buscar deshabilitado", () => {
    costoslogisticosPage.elements.BuscarBtnDesHabilitado().should("be.visible")
  });

 

  

  Then("ingresar un numero de guia", () => {
    costoslogisticosPage.elements.inputNumGuia().eq(1).type("2378223842")
  });

  Then("seleccionar la paquetera {string} en la posición {int}", (txtPaquetera,posicion) => {
    costoslogisticosPage.elements.listNameShipping().eq(posicion).should("have.text", txtPaquetera).should("be.visible").click();
  });

  Then("Validar que se muestre una Alerta con el mensaje No se encontraron resultados", () => {
    loginPage.errorMessageVisible();
  });

  Then("seleccionar el boton de Buscar", () => {    
    cy.wait(4000);
    costoslogisticosPage.elements.BuscarBtnHabilitado().eq(0).should("have.text", "Buscar").should("be.visible").click();
    cy.wait(4000);
  });

  Then("seleccionar el boton de buscar", () => {
    // modificado 11/05/2023
    costoslogisticosPage.elements.BuscarBtnHabilitado().eq(0).should("have.text", "Buscar").should("be.visible").click();
    cy.wait(4000);
  });

  // ELEMENTOS DE CONSULTA DE CATEGORIAS

  Then("validar que se muestre el botón {string} deshabilitado", (string) => {
    costoslogisticosPage.elements.BuscarBtnDesHabilitado().contains(string).scrollIntoView().should("be.visible")
  });  

  Then("validar que se muestre el botón {string} habilitado", (string) => {
    costoslogisticosPage.elements.BuscarBtnHabilitado().contains(string).scrollIntoView().should("be.visible")
  });

  Then("presiono el botón Consultar", () => {
    //.eq(1).should("have.text", "Consultar")
    costoslogisticosPage.elements.BuscarBtnHabilitado().should("be.visible").click();
  });

 

// elementos de Notificaciones
Then("Validar que se muestre una Alerta con el mensaje Error al crear Notificación", () => {
  //loginPage.errorMessageVisible();
  loginPage.elements.errorMessage().contains("Error al crear Notificación")
});  

  
  