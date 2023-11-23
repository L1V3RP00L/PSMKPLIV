class GeneracionGuiaManualPage {
    elements = {
        txtTitulo: () => cy.get('h2[class="_category_category__title__5li2J"]').contains('Generación de Guías'),
        txtArea: () => cy.get('#outlined-textarea',{timeout:20000}),
        txtAreaNumCategoria:() => cy.get('div[class="_category_category__option__mtpKM"]',{timeout:20000}),
    };
    
}
export const generacionGuiaManualPage = new GeneracionGuiaManualPage();