import {
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";
  import {consultaCategoriasPage} from '@pages/ConsultaCategoriasPage' 

    Then("validar que se muestre el input de categoria", () => {
        consultaCategoriasPage.elements.txtBoxCategorias().should("be.visible")
    });   
  
    Then("validar que se muestre el area de categorias", () => {
    consultaCategoriasPage.elements.txtAreaCategoria().should("be.visible") 
    }); 

    Then("validar que este en la pagina de Consulta categorías", () => {
    consultaCategoriasPage.elements.txtTitulo().should("be.visible") 
    });

    Then("ingreso el grupo de artículos {string}", (categoria) => {
    consultaCategoriasPage.elements.txtBoxCategorias().should("be.visible").type(categoria) 
    });

    Then("Validar que se muestre la alerta {string}", (sms) => {
        consultaCategoriasPage.elements.alertMessage().should("be.visible").contains(sms) 
        cy.wait(4000);
    });
    
    Then("veo un listado de las categorías que coinciden con el {string} ingresado", (grupo) => {
        consultaCategoriasPage.elements.grupoArticulo().should("be.visible").contains(grupo) 
    });
    

    Then("tengo la opción de borrar la consulta y volver a ingresar un nuevo valor de {string}", (grupo) => {
        consultaCategoriasPage.elements.borrarGrupoArticulo().should("be.visible").click();
        consultaCategoriasPage.elements.txtBoxCategorias().scrollIntoView().clear();
        consultaCategoriasPage.elements.txtBoxCategorias().scrollIntoView().type(grupo) 

    });
    

    