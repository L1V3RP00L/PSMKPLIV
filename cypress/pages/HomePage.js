class HomePage {
    elements = {
        txtTitulo: () => cy.get('p[class="_dashboard_dashboard_boldText__sv50B"]'),
    };
}
export const homePage = new HomePage();