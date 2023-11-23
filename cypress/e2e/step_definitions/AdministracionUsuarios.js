import {
   Then
  } from "@badeball/cypress-cucumber-preprocessor";
  import {administracionUsuariosPage} from '@pages/AdministracionUsuariosPage'
  const tests = require('../../fixtures/credenciales.json')
  
  Then("validar que se muestre el titulo Administración  Usuarios", () => {
    administracionUsuariosPage.elements.txtTitulo().scrollIntoView().should("be.visible")  
  });

  Then("validar que se muestre el botón Crear Usuario", () => {
    administracionUsuariosPage.elements.txtBtnCreateUser().scrollIntoView().should("be.visible")  
  });

  Then("validar que se muestre el placeholder Buscar Usuario", () => {
    administracionUsuariosPage.elements.inputSearchUser().should("be.visible")  
  });

  Then("validar que se muestre el selector de Usuarios", () => {
    administracionUsuariosPage.elements.SelectAdmin().should("be.visible")  
  });

  Then("seleccionar el selector de Usuarios", () => {
    administracionUsuariosPage.elements.iconofechita().eq(1).click();
  });

  Then("lista de tipos de usuario", () => {
    administracionUsuariosPage.elements.listaTipoUsuario().should("be.visible")
  });
   
  Then("validar que se muestre el titulo {string} de la tabla de resultados en la posicion {int}", (txtArchivo,posicion) => {    
    administracionUsuariosPage.elements.txtTableUser().eq(posicion).should("have.text", txtArchivo).should("be.visible")
  });

  Then("validar que se muestren resultados en la tabla", () => {
    cy.get('body').type('{esc}');
    administracionUsuariosPage.elements.txtResultadoTable().eq(0).scrollIntoView().should("be.visible")  
  });
  
  Then("validar que se muestre el botón Buscar", () => {
    administracionUsuariosPage.elements.btnBuscar().scrollIntoView().should("be.visible")  
  });

  Then("seleccionar el botón Buscar", () => {
    administracionUsuariosPage.elements.btnBuscar().scrollIntoView().should("be.visible").click();
  });

  Then("Validar que se muestre el checkbox para habilitar al usuario", () => {
    administracionUsuariosPage.elements.inputCheckbox().eq(0).scrollIntoView().should("be.visible").click();
  });

  Then("Seleccionar el botón Crear Usuario", () => {
    administracionUsuariosPage.elements.txtBtnCreateUser().should("be.visible").click();
  });

  Then("Validar que se muestre la pantalla de Crear Usuario", () => {
    administracionUsuariosPage.elements.containerCreateUser().should("be.visible")
  });
 
  Then("Validar que se muestre el título de Alta de usuario", () => {
    administracionUsuariosPage.elements.txtTituloCreateUser().should("be.visible")
  });

  Then("Validar que se muestre el rol del usuario", () => {
    administracionUsuariosPage.elements.typeRol().should("be.visible")
  });

 /* Then("Validar que muestre la caja para el {string} del usuario en la posicion {int}", (caracter,posicion) => {
    administracionUsuariosPage.elements.userNameElement().eq(posicion).scrollIntoView().should("be.visible")
    if(caracter = "Apellido")
    {administracionUsuariosPage.elements.userNameElement().eq(1).should("be.visible")}
    if(caracter = "correo electronico")
    {administracionUsuariosPage.elements.userNameElement().eq(2).should("be.visible")}
    if(caracter = "clave de acceso")
    {administracionUsuariosPage.elements.userNameElement().eq(3).should("be.visible")}
    if(caracter = "Número Proveedor")
    {administracionUsuariosPage.elements.userNameElement().eq(4).should("be.visible")}
    if(caracter = "Id tienda Mirakl")
    {administracionUsuariosPage.elements.userNameElement().eq(5).should("be.visible")} 
    if(caracter = "Teléfono")
    {administracionUsuariosPage.elements.userNameElement().eq(6).should("be.visible")} 
    if(caracter = "Calle")
    {administracionUsuariosPage.elements.userNameElement().eq(7).should("be.visible")} 
 
  });*/
    
  Then("Seleccionar el tipo de usuario", () => {
    administracionUsuariosPage.elements.typeRol().eq(0).click();
  });

  Then("Validar que se muestre la lista con los tipos de usuarios", () => {
    administracionUsuariosPage.elements.listUser().should("be.visible")
  });
  
  Then("Seleccionar {string} como tipo usuario", (typeUser) => {
    if (typeUser == "Administrador"){
      administracionUsuariosPage.elements.userTypeAdmin().eq(0).click();
    }else{
      administracionUsuariosPage.elements.listUserType().contains(typeUser).should("be.visible").click();
    }
  });


  Then("Validar que se muestre el botón {string} para crear el usuario", (buttonTxt) => {
    if(buttonTxt == "Guardar"){
      administracionUsuariosPage.elements.btnGuardar().eq(2).should("have.text",buttonTxt)
    }
    if(buttonTxt == "Cancelar"){
      administracionUsuariosPage.elements.btnGuardar().eq(1).should("have.text",buttonTxt)
    }
  });

  Then("Validar que se permita seleccionar el botón {string} para crear el usuario", (buttonTxt) => {
    if(buttonTxt == "Guardar"){
      administracionUsuariosPage.elements.btnGuardar().eq(8).should("have.text",buttonTxt).click();
    }
    if(buttonTxt == "Cancelar"){
      administracionUsuariosPage.elements.btnGuardar().should("have.text",buttonTxt)
    }
  });

  Then("ingrsar el nombre {string} del usuario en la posicion {int}", (caracter,posicion) => {
    
    administracionUsuariosPage.elements.userNameElement().eq(posicion).scrollIntoView().should("be.visible")
  });

  Then("Validar que muestre la caja para el {string} del usuario en la posicion {int}", (caracter,posicion) => {
    administracionUsuariosPage.elements.userNameElement().eq(posicion).scrollIntoView().should("be.visible")
  });

  Then("ingresar los datos de un usuario con perfil {string}", (tipoUser) => {
    tests.forEach(test =>{
      if(test.tipeUser === tipoUser && tipoUser =="Administrador" || tipoUser =="Operador"){    
        searchUser = test.userEmail
        administracionUsuariosPage.elements.userNameElement().eq(0).type(test.nombre)
        administracionUsuariosPage.elements.userNameElement().eq(1).type(test.apellido)       
        administracionUsuariosPage.elements.userNameElement().eq(2).type(test.userEmail)
        administracionUsuariosPage.elements.userNameElement().eq(3).type(test.password)  
      }

      if(test.tipeUser === tipoUser && tipoUser =="Seller_nuevo" || tipoUser =="Seller"){    
        searchUser = test.userEmail
        administracionUsuariosPage.elements.userNameElement().eq(0).type(test.nombre)
        administracionUsuariosPage.elements.userNameElement().eq(1).type(test.apellido)       
        administracionUsuariosPage.elements.userNameElement().eq(2).type(test.userEmail)
        administracionUsuariosPage.elements.userNameElement().eq(3).type(test.password)
        administracionUsuariosPage.elements.userNameElement().eq(4).type(test.proveedor)
        administracionUsuariosPage.elements.userNameElement().eq(5).type(test.idMirakl)
        administracionUsuariosPage.elements.userNameElement().eq(6).type(test.telefono)  
        administracionUsuariosPage.elements.userNameElement().eq(7).type(test.Calle) 
        administracionUsuariosPage.elements.userNameElement().eq(8).type(test.numInt)
        administracionUsuariosPage.elements.userNameElement().eq(9).type(test.numExt)
        administracionUsuariosPage.elements.userNameElement().eq(10).type(test.Calle)
        administracionUsuariosPage.elements.userNameElement().eq(11).type(test.asentamiento)
        administracionUsuariosPage.elements.userNameElement().eq(12).type(test.codigoPostal)
        administracionUsuariosPage.elements.userNameElement().eq(13).type(test.municipio)
        administracionUsuariosPage.elements.userNameElement().eq(14).type(test.ciudad)
        administracionUsuariosPage.elements.userNameElement().eq(15).type(test.estado)
        administracionUsuariosPage.elements.userNameElement().eq(16).type(test.pais)
        //administracionUsuariosPage.elements.textarea().eq(1).type(test.articulos)
      }
       
    })
  });


   

  