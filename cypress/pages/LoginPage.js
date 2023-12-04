class LoginPage {
  elements = {

    usernameInput: () => cy.get('input[name="email"]',{timeout:20000}),
    passwordInput: () => cy.get('input[name="password"]',{timeout:20000}),
    ingresarBtn: () => cy.get('a[class="_header_header__form-label__Ipoz5"]').contains('Ingresar'),
    txtIniciarSesion: () => cy.get('div[class="_login_register_text__R115B"]',{timeout:20000}).contains('Iniciar sesión'),
    loginBtn: () => cy.get('button[type="button"]').contains('Iniciar sesión'),
    loginBtnDeshabilitado:() => cy.get('button[disabled]',{timeout:20000}),
    errorMessage: () => cy.get('div[class="MuiAlert-message css-1xsto0d"]',{timeout:20000}),
    dashboard: () => cy.get('div[class="_menu_menu__container__vBFpk"]',{timeout:10000}).contains('Dashboard'),
    txtMenu: () => cy.get('div[class="_menu_menu__container__vBFpk"]',{timeout:10000}),
    txtMenuEnvios: () => cy.get('div[class="_menu_menu_accordion_container__x958Y"]',{timeout:20000}).contains('Administración de Envios'),
    txtGeneral: () => cy.get('/*',{timeout:1000}),
    checkBoxPoliticas: () => cy.get('input[class="PrivateSwitchBase-input css-1m9pwf3"]',{timeout:20000}),
    btnAceptarPoliticas: () => cy.get('button',{timeout:20000}).contains('Acceder al Portal'),
    olvidaste: () => cy.get('button',{timeout:20000}).contains('¿Olvidaste tu contraseña? Restablecela aquí'),
    placeholdeCorreo: () => cy.get('label[id=":r5:-label"]',{timeout:20000}).contains('Correo electrónico'),
    placeholdeContraseña: () => cy.get('label[id=":r6:-label"]',{timeout:20000}).contains('Contraseña'),
    textP: () => cy.get('p'),
    
    
    
  };

  clickIngresarBtn() {
    this.elements.ingresarBtn().click();
    
  }

  pageVisible(){
    this.elements.txtIniciarSesion().should('be.visible');
    this.elements.usernameInput().should('be.visible');
    this.elements.passwordInput().should('be.visible');
  }
  
  submitLogin(username,password){
    this.elements.usernameInput().type(username);
    this.elements.passwordInput().type(password);
    this.elements.loginBtn().click();
  } 

  guardaSesion(username,password){
    cy.session("Login",()=>{
      this.elements.usernameInput().type(username);
      this.elements.passwordInput().type(password);
      this.elements.loginBtn().click();
    })
  }

  errorMessageVisible(){
    this.elements.errorMessage().should('be.visible');
  }

  dashboardVisible(){
    this.elements.dashboard().should('be.visible');
  }
  

  
}

export const loginPage = new LoginPage();
