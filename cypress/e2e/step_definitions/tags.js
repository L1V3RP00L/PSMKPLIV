import {
  Given,
  When,
  Then,
} from "@badeball/cypress-cucumber-preprocessor";
import {loginPage} from '@pages/LoginPage'


Given("estoy en el sitio web", () => {
  Cypress.on('uncaught:exception', (err, runnable) => {
    // returning false here prevents Cypress from failing the test
    return false
  })
  
  cy.visit("/",{ failOnStatusCode: false });
  // deshabilita todos los reques que manda llamar la página
  //cy.intercept({resourceType: /xhr|fetch/ }, { log: false});

  cy.get('body').then(($body) => {
    if ($body.find('.error-message').length > 0) {
      cy.log('Error al cargar la página');
      cy.visit("/",{ failOnStatusCode: false });
      // Agrega aquí las acciones adicionales para manejar el error, si es necesario
    } else {
      cy.log('La página se cargó correctamente');      
      // Agrega aquí las acciones adicionales que deseas realizar en la página cargada
    }
  });





});


Given("estoy en el sitio web de QA2", () => {
  Cypress.on('uncaught:exception', (err, runnable) => {
    // returning false here prevents Cypress from failing the test
    return false
  })
  
  cy.visit("https://dtaqa.liverpool.com.mx/tienda/home");
});

Given("estoy en el sitio web de QA1", () => {
  Cypress.on('uncaught:exception', (err, runnable) => {
    // returning false here prevents Cypress from failing the test
    return false
  })
  
  cy.visit("https://pwaqa.liverpool.com.mx/tienda/home");
});


Given("A web browser is at the saucelabs login page", () => {
  cy.visit("https://www.liverpool.com.mx/tienda/home");
});

Given("validar que este en el home", () => {
  cy.visit("https://www.liverpool.com.mx/tienda/home").contains("/tienda/home");
});



When("A user enters the username {string}, the password {string}, and clicks on the login button - tag demo", (username,password) => {
  loginPage.submitLogin(username,password)
});

When("A user provides incorrect credentials, and clicks on the login button - tag demo", (table) => {
  table.hashes().forEach((row) => {
    cy.log(row.username);
    cy.log(row.password);
    loginPage.submitLogin(row.username, row.password)

  });
});
Then("the url will contains the inventory subdirectory - tag demo", () => {
  cy.url().should("contains", "/inventory.html");
});
Then("The error message {string} is displayed - tag demo", (errorMessage) => {
  loginPage.elements.errorMessage().should("have.text", errorMessage);
});
