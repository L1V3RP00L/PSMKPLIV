class ComprasDTAPage {
    elements = {
        txtHeader: () => cy.get('div[class="Header_wrapper_container_header__5Zvm_"]',{timeout:20000}),
        InputUser: () => cy.get('#username',{timeout:20000}),
        InputPass: () => cy.get('#password',{timeout:20000}),
        btnSubirArchivo: () => cy.get('button',{timeout:20000}).contains('Iniciar sesión'),
        btnIniciarSesion: () => cy.get('a[class="text-sm text-contrastBrandColor"]',{timeout:20000}).contains('Iniciar sesión'),
        headerIniciarSesion: () => cy.get('span[class="a-header__topLink"]',{timeout:20000}),
        headerdtasearch: () => cy.get('input[class="bg-white h-14 w-full px-12 rounded-lg focus:outline-none hover:cursor-pointer border-borderSearchbox border-2 border-opacity-100 InputSearch_input_container__V_nH_ undefined"]',{timeout:20000}),
        imgProducdta: () => cy.get('.InputSearch_product_image__c0qe_',{timeout:40000}),
        btnAgregarBolsa: () => cy.get('#opc_pdp_addCartButton',{timeout:30000}),
        btnComprar: () => cy.get('button[class="a-btn a-btn--primary a-product__buttonBuy"]',{timeout:30000}),
        mensualidadPaypal: () => cy.get('#a-select-state-modal__btn',{timeout:30000}),
        unPagoPaypal: () => cy.get('span[class="a-checkout-promoList-ppBold"]',{timeout:30000}),
        terminarCompra: () => cy.get('#submitForPaypal',{timeout:30000}).contains('Terminar compra'),
        

        //********* ELEMENTO PWQA QA1 
        btnContinuarSesion: () => cy.get('div[class="c1b766a1c"]',{timeout:20000}).contains('Continuar'),
        txtHeaderpwaqa: () => cy.get('div[class="m-searchBar"]',{timeout:20000}),
        headerpwaqasearch: () => cy.get('#mainSearchbar',{timeout:20000}),
        imgProduc: () => cy.get('.m-figureCard__figure',{timeout:40000}),
        btnAgregar: () => cy.get('#opc_pdp_addCartButton',{timeout:20000}).contains('Agregar a mi bolsa'),
        selledByLink: () => cy.get('.a-productInfo__selledByLink',{timeout:20000}),
        ofertasSelle: () => cy.get('.m-vendors__offersTitle',{timeout:20000}),
        totalofertasSelle: () => cy.get('.m-table-tr row',{timeout:20000}),
        nameSeller: () => cy.get('a[class="a-offer-vendor__name name-market-place"]',{timeout:30000}),
        //btnAgregarBolsa: () => cy.get('#opc_pdp_addCartButton',{timeout:30000}),
        btnBolsa: () => cy.get('.a-header__bag',{timeout:30000}),
        colorRojo: () => cy.get('a[data-skuid="1030528871"]',{timeout:30000}),
        
       //********* ELEMENTO PWQA QA3 */
        
        /*btnIniciarSesionQa3: () => cy.get('div[class="c972fd828"]',{timeout:30000}),
        otrasOfertasQa3: () => cy.get('a[class="m-vendors__offersTitle"]',{timeout:30000}),
        btnAgregarOtherOfertQa3: () => cy.get('button[class="a-btn a-btn--primary o-pdp__offerListBtns order-lg-0"]',{timeout:50000}),
        carouselQa3: () => cy.get('section[class="o-carousel-section"]',{timeout:30000}),
        compraExitosaQa3: () => cy.get('div[class="product-list__header"]',{timeout:60000}).contains('Detalles de compra'),
        compartir: () => cy.get('ul[id="size-list-container"]',{timeout:30000}),
        */
    
    
        
        
    
    };
}
export const comprasDTAPage = new ComprasDTAPage();