class ConsultaCategoriasPage {
    elements = {
        txtTitulo: () => cy.get('._category_category__title__5li2J',{timeout:20000}).contains('Consulta Categorías'),
        txtBoxCategorias: () => cy.get('#outlined-textarea',{timeout:20000}),
        txtAreaNumCategoria:() => cy.get('div[class="_category_category__option__mtpKM"]',{timeout:20000}),
        txtAreaCategoria:() => cy.get('span[class="_category_category__container-options__box__F1SEW"]',{timeout:20000}),
        alertMessage: () => cy.get('div[class="MuiAlert-message css-1xsto0d"]',{timeout:20000}),
        grupoArticulo: () => cy.get('td[class="_categoryTable_category_table_element__EE7Xd"]',{timeout:20000}),
        borrarGrupoArticulo: () => cy.get('svg[data-testid="CancelIcon"]',{timeout:20000}),
    
        
    };
    
}
export const consultaCategoriasPage = new ConsultaCategoriasPage();