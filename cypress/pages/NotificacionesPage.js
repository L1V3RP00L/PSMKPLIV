class NotificacionesPage {
    elements = {
        txtTitulo: () => cy.get('div[class="MuiBox-root css-193g1cs"]',{timeout:30000}),
        btnEliminar:() => cy.get('span[class="material-symbols-outlined"]',{timeout:20000}),
        btnAdjuntar:() => cy.get('._editor_editor_file_button__uAev4',{timeout:20000}),
        txtTituloAdmin:() => cy.get('._editor_notifications_title__RO4DS',{timeout:20000}),
        txtIntroduce:() => cy.get('p[class="ck-placeholder"]'),
        itemsArea:() => cy.get('div[class="ck ck-toolbar__items"]'),
        txtArea:() => cy.get('div[role="textbox"]'),
    };
    
}
export const notificacionesPage = new NotificacionesPage();



