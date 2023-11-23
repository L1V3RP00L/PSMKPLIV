import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";
  import {comprasDTAPage} from '@pages/ComprasDTAPage'
    
  Then("validar que estoy en el home", () => {
    comprasDTAPage.elements.txtHeader().scrollIntoView().should("be.visible")  
  });

  Then("iniciar sesion con una cuenta en QA2", () => {
    comprasDTAPage.elements.btnIniciarSesion().scrollIntoView().click();
    comprasDTAPage.elements.InputUser().scrollIntoView().should("be.visible")
    comprasDTAPage.elements.InputUser().type("jcgascag@liverpool.com.mx")
    comprasDTAPage.elements.InputPass().type("Liverpool1")
    comprasDTAPage.elements.btnSubirArchivo().click();
    comprasDTAPage.elements.txtHeader().scrollIntoView().should("be.visible")  
  });

  Then("iniciar sesion con una cuenta en PWAQA", () => {
    comprasDTAPage.elements.headerIniciarSesion().scrollIntoView().click();
    comprasDTAPage.elements.InputUser().scrollIntoView().should("be.visible")
    comprasDTAPage.elements.InputUser().type("jcgascag@liverpool.com.mx")    
    comprasDTAPage.elements.btnContinuarSesion().click();
    comprasDTAPage.elements.InputPass().type("Liverpool1")
    comprasDTAPage.elements.btnContinuarSesion().click();
    comprasDTAPage.elements.txtHeaderpwaqa().scrollIntoView().should("be.visible")  
   });


   Then("iniciar sesion con una cuenta en QA3", () => {
    comprasDTAPage.elements.headerIniciarSesion().scrollIntoView().click();
    comprasDTAPage.elements.InputUser().scrollIntoView().should("be.visible")
    comprasDTAPage.elements.InputUser().type("jcgascag@liverpool.com.mx")    
    comprasDTAPage.elements.InputPass().type("Liverpool1")
    comprasDTAPage.elements.btnIniciarSesionQa3().click();
    comprasDTAPage.elements.txtHeaderpwaqa().scrollIntoView().should("be.visible")  
   });



  
  


  Then("ingresas el sku {int}", (sku) => {
      comprasDTAPage.elements.headerpwaqasearch().scrollIntoView().should("be.visible")
      comprasDTAPage.elements.headerpwaqasearch().type(sku)
      comprasDTAPage.elements.imgProduc().eq(0).should("be.visible").click();

  });

  Then("buscar el sku {int}", (sku) => {
    cy.wait(6000); // Espera 10 segundos (10000 milisegundos)
    comprasDTAPage.elements.headerdtasearch().eq(0).should("be.visible")

    comprasDTAPage.elements.headerdtasearch().eq(0).type(sku)
    comprasDTAPage.elements.imgProducdta().eq(0).should("be.visible").click();

});



  
  
  Then("seleccionar al seller {string}", (seller) => {
    comprasDTAPage.elements.btnAgregar().should("be.visible")
    comprasDTAPage.elements.ofertasSelle().scrollIntoView().click();
    comprasDTAPage.elements.nameSeller().eq(0).should('have.text', seller)
    console.log("El texto es ");
  });
  

    
    Given("seleccionar el boton Agregar a mi bolsa {int}", (cantidad) => {
      // seleccionar el color
      //comprasDTAPage.elements.colorRojo().scrollIntoView().click();
      cy.wait(3000);
      for (let index = 0; index <= cantidad; index++) {
        comprasDTAPage.elements.btnAgregarBolsa().click();
        cy.wait(2000); // Espera 10 segundos (10000 milisegundos)
      }
    });

    

    Then("seleccionar la bolsita", () => {
      comprasDTAPage.elements.btnBolsa().should("be.visible")
      comprasDTAPage.elements.btnBolsa().scrollIntoView().click();
      cy.visit("https://dtaqa.liverpool.com.mx/tienda/cart")
      
    });

    Then("seleccionar el boton comprarQA2", () => {
      comprasDTAPage.elements.btnComprar().should("be.visible")
      comprasDTAPage.elements.btnComprar().scrollIntoView().click();
      cy.visit("https://dtaqa.liverpool.com.mx/tienda/oneCheckout")
      
    });

    Then("seleccionar la bolsa", () => {
      /*comprasDTAPage.elements.btnBolsa().should("be.visible")
      comprasDTAPage.elements.btnBolsa().scrollIntoView();
      comprasDTAPage.elements.btnBolsa().scrollIntoView().click();*/
      cy.visit("/cart")
      
    });

    Then("seleccionar el boton comprar", () => {
      comprasDTAPage.elements.btnComprar().should("be.visible")
      comprasDTAPage.elements.btnComprar().scrollIntoView().click();
      cy.visit("/oneCheckout")
      
    });

    Then("seleccionar el metodo de pago", () => {
      cy.visit("/oneCheckout")
      comprasDTAPage.elements.mensualidadPaypal().should("be.visible")
      comprasDTAPage.elements.mensualidadPaypal().click();
      comprasDTAPage.elements.unPagoPaypal().should("be.visible")
      comprasDTAPage.elements.unPagoPaypal().eq(0).click();
           
    });
    
    Then("seleccionar el botón Terminar compra", () => {
      comprasDTAPage.elements.terminarCompra().should("be.visible")
      comprasDTAPage.elements.terminarCompra().click();
                 
    });

    
    

    Given("validar que se muestre la pantalla de gracias por la compra", function () {

      comprasDTAPage.elements.compraExitosaQa3().should("be.visible")
  
    });
      
    /////////// QA3 ####
  

    Then("buscar el sku otras ofertas {int}", (sku) => {
      cy.wait(6000); // Espera 10 segundos (10000 milisegundos)
      comprasDTAPage.elements.headerpwaqasearch().eq(0).should("be.visible")
      comprasDTAPage.elements.headerpwaqasearch().eq(0).type(sku)
      comprasDTAPage.elements.imgProduc().eq(0).should("be.visible").click();
      //comprasDTAPage.elements.btnAgregar().scrollIntoView()
      comprasDTAPage.elements.compartir().scrollIntoView()
      comprasDTAPage.elements.otrasOfertasQa3().click()
    
    });

    Given("seleccionar el boton Agregar a mi bolsa en otras ofertas {int}", (cantidad) => {
      // seleccionar el color
      //comprasDTAPage.elements.colorRojo().scrollIntoView().click();
      cy.wait(1000);
      comprasDTAPage.elements.carouselQa3().eq(0).scrollIntoView();
      cy.wait(1000);
      comprasDTAPage.elements.btnAgregarOtherOfertQa3().eq(2).scrollIntoView();
      cy.wait(1000);
      
      //for (let index = 0; index < cantidad; index++) {
        comprasDTAPage.elements.btnAgregarOtherOfertQa3().eq(2).contains('Agregar a mi bolsa').click();
        cy.wait(1000); // Espera 10 segundos (10000 milisegundos)
     // }

    });

    Then("regresar al home", () => {
      comprasDTAPage.elements.compraExitosaQa3().should("be.visible");
      cy.visit("/")
    });

    
    