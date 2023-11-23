import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";
  import {cargaInformacionPage} from '@pages/CargaInformacionPage'
  
  Then("validar que se muestre el titulo Cargar información", () => {
    cargaInformacionPage.elements.txtTitulo().scrollIntoView().should("be.visible")  
  });

  Then("validar que se muestre el combo para la carga de información", () => {
    cargaInformacionPage.elements.comboArchivo().scrollIntoView().should("be.visible")  
  });

  Then("validar que se muestre el texto Arrastra o Selecciona un archivo", () => {
    cargaInformacionPage.elements.arrastraArchivo().scrollIntoView().should("be.visible")  
  });

  Then("validar que se muestre el botón con el texto Subir archivo", () => {
    cargaInformacionPage.elements.btnSubirArchivo().scrollIntoView().should("be.visible")  
  });
  
  Then("seleccionar el combo de Seleccionar archivo", () => {
    cargaInformacionPage.elements.comboArchivo().scrollIntoView().should("be.visible").click();
  });

  Then("Validar que se muestre una lista con los titulos de lo módulos para subir el archivo", () => {
    cargaInformacionPage.elements.listaComboArchivos().scrollIntoView().should("be.visible")
  });
  
  Then("seleccionar {string} de la lista desplegable que se encuentra en la posicion {int}", (txtArchivo,posicion) => {
    cargaInformacionPage.elements.tituloListaComboArchivos().eq(posicion).should("have.text", txtArchivo).should("be.visible").click();
  });
  

  Then("Validar que se muestre {string} en la posición {int}", (txtArchivo,posicion) => {    
    cargaInformacionPage.elements.tituloListaComboArchivos().eq(posicion).should("have.text", txtArchivo).should("be.visible")
  });

  Then("validar que el combo muestre el titulo {string}", (txtArchivo) => {    
    cargaInformacionPage.elements.comboArchivo().should("have.text", txtArchivo).should("be.visible")
  });


  
