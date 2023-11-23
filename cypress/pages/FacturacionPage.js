class FacturacionPage {
    elements = {
        txtTitulo: () => cy.get('div[class="_InvoiceSeller_invoice_container_title__ayEjR"]').contains('Facturación de pedidos',{timeout:20000}),
        txtTituloAdmin: () => cy.get('div[class="_Invoice_invoice_container_title__hxEtM"]').contains('Facturación de pedidos',{timeout:20000}),
        inputPedido: () => cy.get('input[class="MuiInputBase-input MuiOutlinedInput-input MuiInputBase-inputSizeSmall css-1o6z5ng"]',{timeout:20000}),
        tipoSolicitudEstadoSolicitud: () => cy.get('div[class="MuiSelect-select MuiSelect-outlined MuiInputBase-input MuiOutlinedInput-input MuiInputBase-inputSizeSmall css-182didf"]',{timeout:20000}),
        btnLimpiar:() => cy.get('button[class="MuiButtonBase-root MuiButton-root MuiButton-contained MuiButton-containedPrimary MuiButton-sizeMedium MuiButton-containedSizeMedium MuiButton-root MuiButton-contained MuiButton-containedPrimary MuiButton-sizeMedium MuiButton-containedSizeMedium _button_secondary_medium__Y87xk css-15ht7j6"]',{timeout:20000}),
        tipoSolicitudResult: () => cy.get('ul[class="MuiList-root MuiList-padding MuiMenu-list css-r8u8y9"]',{timeout:20000}),
        texArea: () => cy.get('#title',{timeout:20000}),
        txtMsj: () => cy.get('p',{timeout:20000}),
        btnConsultar: () => cy.get('button',{timeout:20000}),
        txtcien: ()  => cy.get('div[class="_InvoiceTable_invoice_showTable_description__jPSrA"]',{timeout:20000}),
        txtTh: () => cy.get('th[class="MuiTableCell-root MuiTableCell-head MuiTableCell-stickyHeader MuiTableCell-sizeMedium css-8coetn"]',{timeout:20000}),
        btnResponder: ()  => cy.get('span[class="_InvoiceTable_invoice_edit_icon_containter__5_h_Z"]',{timeout:20000}),
        modalResponder: ()  => cy.get('div[class="_InvoiceModal_modal_container_answer___fU2_"]',{timeout:20000}),
        txtSpan: () => cy.get('span',{timeout:20000}),
        txtArchivo: () => cy.get('label[class="_MultipleFileUpload_file_label__wY2ET"]',{timeout:20000}),
        txtTituloModalResponder: () => cy.get('div[class="_InvoiceModal_modal_title__fbxct"]',{timeout:20000}),
        uploadFileFacturas: () => cy.get('input[class="_MultipleFileUpload_hide-file-input__AwORP"]',{timeout:20000}),
        inputPedidoModal: () => cy.get('input[class="MuiInputBase-input MuiOutlinedInput-input Mui-disabled MuiInputBase-inputSizeSmall css-1o6z5ng"]',{timeout:20000}),   
        archivoXmlPdf:() => cy.get('._InvoiceModal_attached_preview__TUsGA'),  
    };
    
    upload(archivo){
        // lee el archivo 
        cy.readFile('C://selenium_drivers//'+archivo, 'binary').then(content => {
            // crea un nuevo archivo con los 
            // datos del archivo que se encuentra en la carpeta de selenium_drivers
            cy.writeFile("cypress/fixtures/"+archivo,content)
        });
        // se le pasa al dom de la pagina web el archivo que se ha creado anteriormente
        this.elements.txtArchivo().attachFile(archivo);
    }


}
export const facturacionPage = new FacturacionPage();