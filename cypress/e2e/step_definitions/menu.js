import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";
  import {loginPage} from '@pages/LoginPage'

Then("Validar que se muestre el menú de {string} en la posición {int}", (txtMenu,posicion) => {
    loginPage.elements.txtMenu().eq(posicion).should("have.text", txtMenu)
});

Then("Seleccionar el menú de {string} en la posición {int}", (txtMenu,posicion) => {
    loginPage.elements.txtMenu().eq(posicion).should("have.text", txtMenu).click();
});

Then("Validar que se muestre el menú de Administración de Envios", () => {
  loginPage.elements.txtMenuEnvios().scrollIntoView().should("be.visible")
});

Then("Validar que se muestre el titulo {string}", (txtMenu) => {
    loginPage.elements.txtGeneral().should("have.text", txtMenu)
});

Then("Seleccionar el menú Administración de Envios", () => {
    loginPage.elements.txtMenuEnvios().scrollIntoView().click();
});

Then("aceptar politicas de usuario", () => {
    loginPage.elements.checkBoxPoliticas().click();
    loginPage.elements.btnAceptarPoliticas().click();
});

// paso de Administradir de usuarios de busqueda de usuario por perfil
Then("Seleccionar el usuario de tipo {string}", (tipoUser) => {
    if (tipoUser == "Administrador"){
        loginPage.elements.checkBoxPoliticas().eq(0).click();        
        //loginPage.elements.checkBoxPoliticas().eq(0).type({esc});
    }else if(tipoUser == "Operador"){
        loginPage.elements.checkBoxPoliticas().eq(1).click();
    }else {
        loginPage.elements.checkBoxPoliticas().eq(2).click();
    }
    cy.get('body').type('{esc}');
});






