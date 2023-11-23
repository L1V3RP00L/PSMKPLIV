import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";
  import {gestorPage} from '@pages/GestorPage'
  
  
  Then("iniciar sesion en Gestor", () => {
    gestorPage.elements.usuario().type("JCGASCAG")
    gestorPage.elements.password().type("Liverpool1")
    gestorPage.elements.btIngresa().click()
    cy.wait(4000);
    
  });

  Then("ir al menu generar", () => {
    gestorPage.elements.menu().click()
    gestorPage.elements.mGenerar().click()
    cy.wait(4000);
    
  });

  Then("ingresar los datos para las guias", (table) => {  
    cy.wait(4000); 
    table.hashes().forEach((row) => {
      gestorPage.elements.remision().clear();
        gestorPage.elements.remision().type(row.Remision)
        gestorPage.elements.referencia().click()
        cy.wait(4000);
        gestorPage.elements.referencia().clear();
        gestorPage.elements.referencia().type(row.Referencia)
        gestorPage.elements.centro().clear();
        gestorPage.elements.centro().type(row.Centro)
        gestorPage.elements.correo().clear();
        gestorPage.elements.correo().type(row.Correo)
        gestorPage.elements.ext().clear();
        gestorPage.elements.ext().type(row.Num_exterior)
        gestorPage.elements.int().clear();
        gestorPage.elements.int().type(row.Num_interior)
        gestorPage.elements.ciudad().clear();
        gestorPage.elements.ciudad().type(row.Ciudad)
        gestorPage.elements.lp().clear();
        gestorPage.elements.lp().type(row.Lp)   
             
        gestorPage.elements.bagregar().click()
        cy.wait(4000);
        gestorPage.elements.benviar().click()
        cy.wait(6000);
        row.Remision = "";

      /*console.log(row.Remision);
      console.log(row.Referencia);
      console.log(row.Centro);
      console.log(row.Correo);
      console.log(row.Num_exterior);
      console.log(row.Num_interior);
      console.log(row.Ciudad);
      console.log(row.Lp);*/
      
    });       
     
});




  