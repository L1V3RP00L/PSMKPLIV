class EtiquetasEnvioPage {
    elements = {
        txtTitulo: () => cy.get('h2[class="_category_category__title__5li2J"]',{timeout:20000}).contains('Etiquetas de envio'),
        txtMaximo: () => cy.get('div[class="_category_category__description__3zFJu"]',{timeout:20000}).contains('Solo se permite ingresar 100 etiquetas.'),
        descargarBtnDesHabilitado: () => cy.get('button[class="MuiButtonBase-root MuiButton-root MuiButton-contained MuiButton-containedPrimary MuiButton-sizeMedium MuiButton-containedSizeMedium Mui-disabled MuiButton-root MuiButton-contained MuiButton-containedPrimary MuiButton-sizeMedium MuiButton-containedSizeMedium _button_primary_medium__cXje6 css-15ht7j6"]',{timeout:20000}),
        simboloMasBtn: () => cy.get('button[class="MuiButtonBase-root MuiButton-root MuiButton-circulo MuiButton-circuloPrimary MuiButton-sizeMedium MuiButton-circuloSizeMedium Mui-disabled MuiButton-root MuiButton-circulo MuiButton-circuloPrimary MuiButton-sizeMedium MuiButton-circuloSizeMedium _category_category__button__WNAjp css-9hxh09"]',{timeout:20000}),
        simboloMasBtnHabili: () => cy.get('button[class="MuiButtonBase-root MuiButton-root MuiButton-circulo MuiButton-circuloPrimary MuiButton-sizeMedium MuiButton-circuloSizeMedium MuiButton-root MuiButton-circulo MuiButton-circuloPrimary MuiButton-sizeMedium MuiButton-circuloSizeMedium _category_category__button__WNAjp css-9hxh09"]',{timeout:20000}),
        txtArea: () => cy.get('#outlined-textarea',{timeout:20000}),
        txtAreaDato: () => cy.get('div[class="_category_category__option__mtpKM"]',{timeout:20000}),
        descargarBtn: () => cy.get('button[class="MuiButtonBase-root MuiButton-root MuiButton-contained MuiButton-containedPrimary MuiButton-sizeMedium MuiButton-containedSizeMedium MuiButton-root MuiButton-contained MuiButton-containedPrimary MuiButton-sizeMedium MuiButton-containedSizeMedium _button_primary_medium__cXje6 css-15ht7j6"]',{timeout:20000}),
        
        
    };


}
export const etiquetasenvioPage = new EtiquetasEnvioPage();