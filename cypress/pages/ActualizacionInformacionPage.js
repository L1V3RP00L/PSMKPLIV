class ActualizacionInformacionPage {
    elements = {
        txtTitulo: () => cy.get('p[class="_shipping-info_title___LXvN"]',{timeout:20000}).contains('Actualización de información de guías Sellers'),
        uploadFile: () => cy.get('._upload-file_hide-file-input__jV0yG',{timeout:20000}),        
        btnSubir: () => cy.get('button',{timeout:20000}).contains('Subir archivo'),
        
    };

    upload(archivo){
        // lee el archivo 
        cy.readFile('C://selenium_drivers//'+archivo, 'binary').then(content => {
            // crea un nuevo archivo con los 
            // datos del archivo que se encuentra en la carpeta de selenium_drivers
            cy.writeFile("cypress/fixtures/"+archivo,content)
        });
        // se le pasa al dom de la pagina web el archivo que se ha creado anteriormente
        this.elements.uploadFile().attachFile(archivo);
    }
}
export const actualizacionInformacionPage = new ActualizacionInformacionPage();