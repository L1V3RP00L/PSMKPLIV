import 'cypress-xpath';
class AdministracionUsuariosPage {
    elements = {
        txtTitulo: () => cy.get('div[class="_UserAdmin_userAdmin_container__sj00Y"]',{timeout:20000}).contains('Administración Usuarios'),
        txtBtnCreateUser: () => cy.get('div[class="_UserAdmin_button_container__gPT5m"]',{timeout:20000}).contains('Crear Usuario'),
        inputSearchUser: () => cy.get('input[class="MuiInputBase-input MuiOutlinedInput-input MuiInputBase-inputSizeSmall MuiInputBase-inputAdornedEnd css-b52kj1"]',{timeout:20000}),
        txtTableUser: () => cy.get('th[class="MuiTableCell-root MuiTableCell-head MuiTableCell-stickyHeader MuiTableCell-sizeMedium css-8coetn"]',{timeout:20000}),
        txtResultadoTable: () => cy.get('tr[class="MuiTableRow-root css-vz8kpy"]',{timeout:20000}),
        listaTipoUsuario: () => cy.get('ul[class="MuiList-root MuiList-padding MuiMenu-list css-r8u8y9"]',{timeout:20000}),
        //inputIdTienda: () => cy.get('div[class="_PortalModal_modal_background_show__g9eHl"]',{timeout:20000}),
        iconoActualizar: () => cy.get('span[class="_UsersTable_user_edit_icon_containter__ddyVG"]',{timeout:20000}),
        //inputIdTienda: () => cy.xpath('(//div[@class="_PortalModal_modal_input_name_wrapper__fszhS"]//input[@class="MuiInputBase-input MuiOutlinedInput-input MuiInputBase-inputSizeSmall css-1o6z5ng"])'),
        //

        inputIdTienda: () => cy.get('._PortalModal_modal_input_name_wrapper__fszhS'),
        inputNumer:() => cy.get('._PortalModal_modal_input_name_wrapper_variant__uo__a'),
        btnGuardar:() => cy.get('button[style="text-transform: none;"]',{timeout:20000}),
        btnBuscar:() => cy.get('button',{timeout:20000}).contains('Buscar'),
        iconofechita:() => cy.get('div[role="button"]',{timeout:20000}),        
        SelectAdmin:() => cy.get('div[class="MuiSelect-select MuiSelect-outlined MuiSelect-multiple MuiInputBase-input MuiOutlinedInput-input MuiInputBase-inputSizeSmall css-182didf"]',{timeout:20000}),
        tableResult:() => cy.get('th[class="MuiTableCell-root MuiTableCell-body MuiTableCell-sizeMedium css-q34dxg"]',{timeout:20000}),
        inputCheckbox:() => cy.get('span[class="MuiSwitch-root MuiSwitch-sizeMedium css-ecvcn9"]',{timeout:20000}),
        // crear usuario
        containerCreateUser:() => cy.get('div[class="_PortalModal_modal_container__3YTFa undefined false"]',{timeout:20000}),
        txtTituloCreateUser:() => cy.get('._PortalModal_modal_title__wMzRd'),
        typeRol:() => cy.get('.MuiInputBase-root.MuiOutlinedInput-root.MuiInputBase-colorPrimary.MuiInputBase-fullWidth.MuiInputBase-formControl.MuiInputBase-sizeSmall.css-1s6s2cs',{timeout:20000}),
        userNameElement: () => cy.get('input[class="MuiInputBase-input MuiOutlinedInput-input MuiInputBase-inputSizeSmall css-1o6z5ng"]',{timeout:20000}),
        listUser: () => cy.get('ul[class="MuiList-root MuiList-padding MuiMenu-list css-r8u8y9"]',{timeout:20000}),
        listUserType: () => cy.get('li[class="MuiButtonBase-root MuiMenuItem-root MuiMenuItem-gutters MuiMenuItem-root MuiMenuItem-gutters css-9jmqdl"]',{timeout:20000}),
        userTypeAdmin: () => cy.get('li[data-value="Administrador"]',{timeout:20000}),
        // update user
        habilitUser: () => cy.get('span[class="MuiSwitch-thumb css-19gndve"]',{timeout:20000}),
        tapUser: () => cy.get('div[class="_PortalModal_modal_background_show__g9eHl"]',{timeout:20000}),
        tipoUser: () => cy.get('div[class="MuiInputBase-root MuiOutlinedInput-root MuiInputBase-colorPrimary MuiInputBase-fullWidth MuiInputBase-formControl MuiInputBase-sizeSmall css-1s6s2cs"]',{timeout:20000}),
        textarea: () => cy.get('textarea[class="MuiInputBase-input MuiOutlinedInput-input MuiInputBase-inputMultiline MuiInputBase-inputSizeSmall css-x7mp9n"]',{timeout:20000}),

        
        
        //userLastNameElement:() => cy.get('#:re:'),
        //userEmailElement:() => cy.get('#:rf:'),
    };
}
export const administracionUsuariosPage = new AdministracionUsuariosPage();