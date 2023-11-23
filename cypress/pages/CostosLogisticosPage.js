class CostosLogisticosPage {
    elements = {
        txtTitulo: () => cy.get('label[class="_costs-detail_costs-detail__title__pBEwj"]',{timeout:20000}).contains('Costos Logísticos'),
        placeHolderGuia: () => cy.get('#provider-number-label',{timeout:20000}).contains('No. de Guia'),
        placeHolderFechaInicial: () => cy.get('#:r4:-label',{timeout:20000}).contains('Fecha inicial '),
        placeHolderspan: () => cy.get('fieldset',{timeout:20000}),
        comboPaquetera: () => cy.get('#shipping-company',{timeout:20000}),
        listShipping: () => cy.get('ul[role="listbox"]',{timeout:20000}),
        fechas: () => cy.get('button[aria-label="Choose date"]',{timeout:20000}),
        calendario: () => cy.get('div[class="MuiCalendarPicker-root css-1brzq0m"]',{timeout:20000}),
        inputFechaInicial: () => cy.get('button[class="MuiButtonBase-root MuiPickersDay-root MuiPickersDay-dayWithMargin css-9o7v7t"]',{timeout:20000}),
        BuscarBtnHabilitado: () => cy.get('button[class="MuiButtonBase-root MuiButton-root MuiButton-contained MuiButton-containedPrimary MuiButton-sizeMedium MuiButton-containedSizeMedium MuiButton-root MuiButton-contained MuiButton-containedPrimary MuiButton-sizeMedium MuiButton-containedSizeMedium _button_primary_medium__cXje6 css-15ht7j6"]',{timeout:20000}),
        BuscarBtnDesHabilitado: () => cy.get('button[class="MuiButtonBase-root MuiButton-root MuiButton-contained MuiButton-containedPrimary MuiButton-sizeMedium MuiButton-containedSizeMedium Mui-disabled MuiButton-root MuiButton-contained MuiButton-containedPrimary MuiButton-sizeMedium MuiButton-containedSizeMedium _button_primary_medium__cXje6 css-15ht7j6"]',{timeout:20000}),
        inputNumGuia: () => cy.get('input[id="provider-number"]',{timeout:20000}),
        listNameShipping: () => cy.get('li[class="MuiButtonBase-root MuiMenuItem-root MuiMenuItem-gutters MuiMenuItem-root MuiMenuItem-gutters css-9jmqdl"]',{timeout:20000}),

    };

}
export const costoslogisticosPage = new CostosLogisticosPage();