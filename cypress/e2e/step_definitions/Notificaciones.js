import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";
  import {notificacionesPage} from '@pages/NotificacionesPage'
  
  
  Then("se carga la sección de notificaciones", () => {
    notificacionesPage.elements.txtTitulo().eq(0).scrollIntoView().should("be.visible");
  });

  Then("validar que se carga el módulo de notificaciones", () => {
    notificacionesPage.elements.txtTituloAdmin().scrollIntoView().should("be.visible").contains(' Notificaciones Seller');
  });

  
  Then("Validar que se muestre el boton de eliminar notificacion", () => {
    notificacionesPage.elements.btnEliminar().eq(1).scrollIntoView().should("be.visible");
  });


  Then("validar que se muestre el placeholder Introduce o pega tu contenido aquí", () => {
    notificacionesPage.elements.txtIntroduce().scrollIntoView().should("be.visible");
  });

  Then("validar que se muestre el botón de Adjuntar", () => {
    notificacionesPage.elements.btnAdjuntar().scrollIntoView().should("be.visible");
  });

  Then("validar que se muestre los botones necesarios para crear una notificacion en el TextArea", () => {
    notificacionesPage.elements.itemsArea().scrollIntoView().should("be.visible");
  });

  /*Then("validar que se pueda ingresar el texto {string}", (texto) => {
    notificacionesPage.elements.txtArea().type(texto)
 });*/

  

  