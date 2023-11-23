class GestorPage {
    elements = {
        usuario: () => cy.get('#_usr',{timeout:20000}),
        password: () => cy.get('#_password',{timeout:20000}),
        btIngresa: () => cy.get('#btIngresa',{timeout:20000}),
        menu: () => cy.get('.drop',{timeout:20000}),
        mGenerar: () => cy.get('a:nth-child(12) > li',{timeout:20000}),
        remision: () => cy.get('#_remision',{timeout:20000}),
        referencia: () => cy.get('#_referencia',{timeout:20000}),
        centro: () => cy.get('#_milista',{timeout:20000}),
        correo: () => cy.get('#_correo',{timeout:20000}),
        ext: () => cy.get('#_ext',{timeout:20000}),
        int:() => cy.get('#_int',{timeout:20000}),
        ciudad:() => cy.get('#_ciudad',{timeout:20000}),
        lp:() => cy.get('#_lp',{timeout:20000}),
        bagregar:() => cy.get('#bagregar',{timeout:20000}),
        benviar: () => cy.get('#benviar'),
        
    };
}
export const gestorPage = new GestorPage();