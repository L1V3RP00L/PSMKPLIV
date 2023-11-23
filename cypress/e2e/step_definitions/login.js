import {
  Given,
  When,
  Then,
} from "@badeball/cypress-cucumber-preprocessor";
import {loginPage} from '@pages/LoginPage'
import {administracionUsuariosPage} from '@pages/AdministracionUsuariosPage'
import {costoslogisticosPage} from '@pages/CostosLogisticosPage'
const tests = require('../../fixtures/credenciales.json')
var seaUser;
var searchUser;
var posicion;
var valor;



Then("validar que se muestre el acceso al sistema", () => {
  loginPage.clickIngresarBtn();
  loginPage.pageVisible();
  
});

/*When("ingreso un usuario incorrecto y una contraseña correcta, y hace click en el botón de inicio de sesión", () => {
  loginPage.submitLogin("jcgascag@gmail.com","Liverpool1")
  
});*/

Then("Validar que se muestre una Alerta con el mensaje de Usuario o contraseña incorrecta", () => {
  loginPage.errorMessageVisible();
});

Then("Validar que se muestre Dashboard del usuario logeado", () => {
  loginPage.dashboardVisible(); 
  
});


//When("ingreso un usuario administrador y una contraseña correcta, y hace click en el botón de inicio de sesión", () => {
  
 /* beforeEach("ingreso un usuario administrador1",()=>{
    loginPage.guardaSesion("jcgascag@liverpool.com.mx","Liverpool1")
  })*/
  //loginPage.submitLogin("jcgascag@liverpool.com.mx","Liverpool1")  
  //loginPage.guardaSesion("jcgascag@liverpool.com.mx","Liverpool1")
//});


/*
When("ingreso un usuario seller y una contraseña correcta, y hace click en el botón de inicio de sesión", () => {
  loginPage.submitLogin("jcgasca.gu@gmail.com","Liverpool1")  
});
*/

Then("el usuario ha iniciado sesion con perfil de {string}", (tipoUser) => {
  console.log("datos ingrssa ",tipoUser)
  tests.forEach(test =>{
    if(test.tipeUser === tipoUser){
      console.log("usuarios ",test.tipeUser,"datos ingrssa ",tipoUser)
      loginPage.submitLogin(test.userEmail,test.password)
    }
     
  })
});

Then("ingreso un usuario con perfil de {string}", (tipoUser) => {
  tests.forEach(test =>{
    if(test.tipeUser === tipoUser){    
      searchUser = test.userEmail
      cy.log("correo "+searchUser)
      administracionUsuariosPage.elements.inputSearchUser().eq(2).type(test.userEmail) 
    }
     
  })
});

Then("ingreso las primeras letras de un usuario {string}", (tipoUser) => {
  tests.forEach(test =>{
    if(test.tipeUser === tipoUser){    
      //seaUser = test.username
      let fistSeaUserLetter = test.userEmail.split('@');   
      administracionUsuariosPage.elements.inputSearchUser().eq(2).type(fistSeaUserLetter[0]) 
    }
     
  })
});


Then("Validar que se muestre el usuario buscado", () => {
  administracionUsuariosPage.elements.tableResult().eq(2).contains(searchUser).should("be.visible");
  //.contains(seaUser).should("be.visible")
});

Then("Validar que se muestren los usuario de tipo {string}", (tipoUser) => {
  administracionUsuariosPage.elements.tableResult().contains(tipoUser).should("be.visible")
});
// update user

Then("validar que se muestre el check de habilitar", () => {
  administracionUsuariosPage.elements.habilitUser().scrollIntoView().should("be.visible");
});

Then("validar que se muestre el icono de actualizar habilitar", () => {
  administracionUsuariosPage.elements.iconoActualizar().eq(0).should("be.visible");
});

Then("validar que se muestre el icono de eliminar habilitar", () => {
  administracionUsuariosPage.elements.iconoActualizar(1).should("be.visible");
  //.scrollIntoView()
});

Then("validar que no se muestre el icono de eliminar", () => {
  //administracionUsuariosPage.elements.iconoActualizar().should("not.be.visible");
});

Then("validar que se muestre el icono de actualizar habilitar.", () => {
 // cy.get('._UsersTable_user_edit_icon_containter__ddyVG').scrollTo('left', { easing: 'linear' })
  cy.wait(4000);
 // cy.get('table').scrollTo('._UsersTable_user_edit_icon_containter__ddyVG', { ensureScrollable: true })
  administracionUsuariosPage.elements.iconoActualizar().eq(0);//.should("be.visible");
});

Then("Seleccionar el icono de actualizar habilitar", () => {
  cy.wait(4000);
  administracionUsuariosPage.elements.iconoActualizar().eq(0).should("be.visible").click();
});

Then("Validar que se muestre una pantalla emergente", () => {
  administracionUsuariosPage.elements.tapUser().should("be.visible");
});

Then("Validar que se muestre tipo de usuario {string} en la pantalla emergente", (tipoUser) => {
  administracionUsuariosPage.elements.tipoUser().should("be.visible");
});

Then("Validar que se muestre el nombre de usuario registrado en la pantalla emergente", () => {
  administracionUsuariosPage.elements.userNameElement().eq(0).should('have.value', tipoUser)
});


Then("Validar que se muestre el {string} del usuario buscado", (name) => {
  
   
  tests.forEach(test =>{

    if(test.tipeUser === searchUser && name.toLowerCase() === "nombre"){      
      administracionUsuariosPage.elements.userNameElement().eq(0).should('have.value', test.nombre)
    }
    if(test.tipeUser === searchUser && name.toLowerCase() === "apellido"){      
      administracionUsuariosPage.elements.userNameElement().eq(1).should('have.value', test.apellido)
    }

    if(test.tipeUser === searchUser && name.toLowerCase() === "correo"){      
      //cy.log(`email: ${searchUser}`);      
      administracionUsuariosPage.elements.userNameElement().eq(2).should('have.value', test.userLastName)
    }

    if(test.tipeUser === searchUser && name.toLowerCase() === "proveedor"){      
      administracionUsuariosPage.elements.userNameElement().eq(3).should('have.value', test.proveedor)
    }

    if(test.tipeUser === searchUser && name.toLowerCase() === "idMirakl"){      
      administracionUsuariosPage.elements.userNameElement().eq(4).should('have.value', test.idMirakl)
    }
    if(test.tipeUser === searchUser && name.toLowerCase() === "telefono"){      
      administracionUsuariosPage.elements.userNameElement().eq(5).should('have.value', test.telefono)
    }

    if(test.tipeUser === searchUser && name.toLowerCase() === "numInt"){      
      administracionUsuariosPage.elements.userNameElement().eq(6).should('have.value', test.numInt)
    }

    if(test.tipeUser === searchUser && name.toLowerCase() === "numExt"){      
      administracionUsuariosPage.elements.userNameElement().eq(7).should('have.value', test.numExt)
    }
    if(test.tipeUser === searchUser && name.toLowerCase() === "Calle"){      
      administracionUsuariosPage.elements.userNameElement().eq(8).should('have.value', test.Calle)
    }

    if(test.tipeUser === searchUser && name.toLowerCase() === "asentamiento"){      
      administracionUsuariosPage.elements.userNameElement().eq(9).should('have.value', test.asentamiento)
    }

    if(test.tipeUser === searchUser && name.toLowerCase() === "codigoPostal"){      
      administracionUsuariosPage.elements.userNameElement().eq(10).should('have.value', test.codigoPostal)
    }

    if(test.tipeUser === searchUser && name.toLowerCase() === "municipio"){      
      administracionUsuariosPage.elements.userNameElement().eq(11).should('have.value', test.municipio)
    }
    
  })

  
  
});

Then("Seleccionar el botón Guardar para actualizar los datos del usuario", () => {
  administracionUsuariosPage.elements.btnGuardar().eq(9).should("have.text", "Guardar").click();
});


// .eq(0).contains(tipoUser+"Rol")
//////

Then("ingreso un usuario", (table) => {   
  table.hashes().forEach((row) => {
    
    console.log(row.usuario);
    administracionUsuariosPage.elements.inputSearchUser().eq(2).clear();   
    administracionUsuariosPage.elements.inputSearchUser().eq(2).type(row.usuario)
    cy.wait(2000);
    costoslogisticosPage.elements.BuscarBtnHabilitado().eq(0).should("have.text", "Buscar").should("be.visible").click();
    cy.wait(2000);
    administracionUsuariosPage.elements.iconoActualizar().eq(0).click();
    //administracionUsuariosPage.elements.inputIdTienda().find('._PortalModal_modal_container__3YTFa undefined undefined').find('.MuiInputBase-input MuiOutlinedInput-input MuiInputBase-inputSizeSmall css-1o6z5ng').click();
    //administracionUsuariosPage.elements.inputIdTienda().eq(1).should('be.visible').type()
    administracionUsuariosPage.elements.inputIdTienda().eq(1).should('be.visible').type(row.id_mirakl)
    cy.wait(2000);
    administracionUsuariosPage.elements.inputIdTienda().eq(3).should('be.visible').scrollIntoView();
    cy.wait(2000);
    administracionUsuariosPage.elements.inputNumer().eq(1).type('5555555555')
    cy.wait(2000);
    administracionUsuariosPage.elements.inputNumer().eq(3).type(row.cp)
    
    administracionUsuariosPage.elements.btnGuardar().eq(9).should("have.text", "Guardar").click();
    cy.wait(4000);
    //administracionUsuariosPage.elements.inputIdTienda().should('be.visible').eq(1).click();
    
    //.eq(5).clear();
    // .trigger('tap').
    //administracionUsuariosPage.elements.inputIdTienda().type(row.id_mirakl)

  });       
     
});











When("A user provides incorrect credentials, and clicks on the login button", (table) => {
  table.hashes().forEach((row) => {
    cy.log(row.username);
    cy.log(row.password);
    loginPage.submitLogin(row.username, row.password)

  });
});
Then("the url will contains the inventory subdirectory", () => {
  cy.url().should("contains", "/inventory.html");
});
Then("The error message {string} is displayed", (errorMessage) => {
  loginPage.elements.errorMessage().should("have.text", errorMessage);
});

/*---------------------------------*/
When("ingresar el usuario {string}, y la contraseña {string}, y presionar el botón iniciar sesion", (username,password) => {
  loginPage.submitLogin(username,password)
  
});