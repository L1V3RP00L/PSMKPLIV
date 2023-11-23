class GeneradorEtiquetasBTPage {
    elements = {
        txtTitulo: () => cy.get('div[class="_category_category__title__5li2J"]').contains('Generación de etiquetas para surtido BT'),
    };


}
export const generadorEtiquetasBTPage = new GeneradorEtiquetasBTPage();