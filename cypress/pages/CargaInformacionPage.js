class CargaInformacionPage {
    elements = {
        txtTitulo: () => cy.get('p[class="_upload-information_title__DVofs"]',{timeout:20000}).contains('Cargar información'),
        comboArchivo: () => cy.get('#demo-multiple-name',{timeout:20000}),
        arrastraArchivo: () => cy.get('label[class="_upload-file_file_label__9d5PW"]',{timeout:20000}).contains('Arrastra o Selecciona un archivo'),
        btnSubirArchivo: () => cy.get('div[class="MuiGrid-root MuiGrid-item MuiGrid-grid-xs-12 css-v03q7b"]',{timeout:20000}).contains('Subir archivo'),
        listaComboArchivos: () => cy.get('ul[class="MuiList-root MuiList-padding MuiMenu-list css-r8u8y9"]',{timeout:20000}),
        tituloListaComboArchivos: () => cy.get('li[class="MuiButtonBase-root MuiMenuItem-root MuiMenuItem-gutters MuiMenuItem-root MuiMenuItem-gutters css-9jmqdl"]',{timeout:20000}),
        
    };
}
export const cargaInformacionPage = new CargaInformacionPage();

