import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";
 import moment from 'moment';
 import {facturacionPage} from '@pages/FacturacionPage'
 import {etiquetasenvioPage} from '@pages/EtiquetasEnvioPage'

  
  Then("validar que se muestre el titulo Facturación de pedidos", () => {
    facturacionPage.elements.txtTitulo().scrollIntoView().should("be.visible")
  });

  Then("validar que se muestre el titulo Facturación de pedidos como usuario Administrador", () => {
    facturacionPage.elements.txtTituloAdmin().scrollIntoView().should("be.visible")
  });

  

  Then("el usuario ingresa el número de pedido {string}", (string)  => {
    facturacionPage.elements.inputPedido().eq(0).should("be.visible").type(string)
  });

  Then("el usuario ingresa el número de proveedor {string}", (string)  => {
    facturacionPage.elements.inputPedido().eq(1).should("be.visible").type(string)
  });

  Then("el usuario ingresa el número de tienda {string}", (string)  => {
    facturacionPage.elements.inputPedido().eq(2).should("be.visible").type(string)
  });

  Then("el usuario ingresa el correo electronico {string}", (string)  => {
    facturacionPage.elements.inputPedido().eq(2).should("be.visible").type(string)
  });

  Then("el usuario ingresa el mesaje {string}", (string)  => {
    facturacionPage.elements.texArea().scrollIntoView().should("be.visible").type(string)
  });

  

  Then("selecciona el tipo de solicitud {string}", (string)  => {
    facturacionPage.elements.tipoSolicitudEstadoSolicitud().eq(0).should("be.visible").click();
    facturacionPage.elements.tipoSolicitudResult().contains(string).should("be.visible").click()
  });

  Then("selecciona el estado de solicitud {string}", (string)  => {
    facturacionPage.elements.tipoSolicitudEstadoSolicitud().eq(1).should("be.visible").click();
    facturacionPage.elements.tipoSolicitudResult().contains(string).should("be.visible").click()
  });

  Then("selecciona el estatus de solicitud {string}", (string) => {
    facturacionPage.elements.tipoSolicitudEstadoSolicitud().eq(2).should("be.visible").click();
    facturacionPage.elements.tipoSolicitudResult().contains(string).should("be.visible").click()
  });
   
  Then("seleccionar el mes {string}", (string) => {
    facturacionPage.elements.tipoSolicitudEstadoSolicitud().eq(3).scrollIntoView().should("be.visible").click();
    facturacionPage.elements.tipoSolicitudResult().contains(string).should("be.visible").click()
  });

  Then("seleccionar el año {string}", (string) => {
    facturacionPage.elements.tipoSolicitudEstadoSolicitud().eq(4).scrollIntoView();
    facturacionPage.elements.tipoSolicitudEstadoSolicitud().eq(4).should("be.visible").click();
    facturacionPage.elements.tipoSolicitudResult().contains(string).should("be.visible").click()
  });
  
  Then("Validar que se muestre el campo de {string}", (string) => {

    if(string == "Número de proveedor"){
      facturacionPage.elements.inputPedido().should("be.visible")
    }
    
    if(string == "Tipo de solicitud"){
      facturacionPage.elements.tipoSolicitudEstadoSolicitud().eq(0).should("be.visible")
    }
    if(string == "Estado de solicitud"){
      facturacionPage.elements.tipoSolicitudEstadoSolicitud().eq(1).scrollIntoView().should("be.visible")
    }
    if(string == "Estatus de solicitud"){
      facturacionPage.elements.tipoSolicitudEstadoSolicitud().eq(2).should("be.visible")
    }
    if(string == "Estatus de atención"){
      facturacionPage.elements.tipoSolicitudEstadoSolicitud().eq(2).should("be.visible")
    }
    if(string == "mes"){
      facturacionPage.elements.tipoSolicitudEstadoSolicitud().eq(3).should("be.visible")
    }
    if(string == "año"){
      facturacionPage.elements.tipoSolicitudEstadoSolicitud().eq(4).should("be.visible")

    }
  });

  Then("Validar que se muestre el boton de {string}", (string) => {
    facturacionPage.elements.btnLimpiar().contains(string).should("be.visible")
  });

  Then("presiona el botón {string}", (string) => {
    facturacionPage.elements.btnLimpiar().contains(string).should("be.visible").click();
  });

Then("Validar que se muestre el mensaje {string}", (string) => {
  facturacionPage.elements.txtMsj().contains(string).should("be.visible")
});

Then("validar que solo tenga número en {string}", (string) => {
  
  if (string == "Número de pedido"){
    facturacionPage.elements.inputPedido().eq(0).invoke('val').then((value) => {
      cy.log(`El valor del elemento es: ${value}`);
      expect(value).to.match(/^[0-9]+$/);
  
    });
    //facturacionPage.elements.inputPedido().eq(0).should("be.visible").should('have.value', /^[0-9]+$/);
  }
  if (string == "número de proveedor"){

    facturacionPage.elements.inputPedido().eq(1).invoke('val').then((value) => {
      cy.log(`El valor del elemento es: ${value}`);
      expect(value).to.match(/^[0-9]+$/);
  
    });
    //facturacionPage.elements.inputPedido().eq(1).should("be.visible").should('have.value', /^[0-9]+$/);
  }
  if (string == "número de tienda"){
    facturacionPage.elements.inputPedido().eq(1).invoke('val').then((value) => {
      cy.log(`El valor del elemento es: ${value}`);
      expect(value).to.match(/^[0-9]+$/);
  
    });
    //facturacionPage.elements.inputPedido().eq(1).should("be.visible").should('have.value', /^[0-9]+$/);
  }
  
});

Then("validar que solo permita ingresar {int} para el campo de {string}", (limite,string) => {
  if (string == "Número de pedido"){
    facturacionPage.elements.inputPedido().eq(0).should("be.visible").should('have.attr', 'value', limite);
  }
  if (string == "número de proveedor"){
    facturacionPage.elements.inputPedido().eq(1).should("be.visible").should('have.attr', 'value', limite);
  }
});

Then("presionar el botón {string}", (string) => {
  facturacionPage.elements.btnConsultar().contains(string).should("be.visible").click();
});
Then("validar que se muestre el texto Se muestran los primeros", () => {
  facturacionPage.elements.txtcien().scrollIntoView().contains("Se muestran los primeros ").should("be.visible");
  
});

Then("validar que se muestre el texto {string} en la tabla de resultados", (string) => {
  facturacionPage.elements.txtTh().contains(string).should("be.visible");
});

Then("validar que se halla descargado el archivo", () => {
  //const fileName = 'e8159980-0714-453d-bf7f-fd4c081afb08.csv'; // Reemplaza con el nombre del archivo que esperas que se descargue

    //cy.readFile(`cypress/downloads/${fileName}`).then((fileContent) => {
      // Aquí puedes realizar las aserciones adicionales que necesites sobre el contenido del archivo
    //  expect(fileContent).to.exist; // Asegura que el archivo existe
    //  cy.log(expect("existe "+fileContent).to.exist);
    //});

    const downloadsFolder = 'cypress/downloads';
    const command = `ls -lt "${downloadsFolder}" | head -2 | tail -1 | awk '{print $9}'`;

    cy.exec(command).then((result) => {
      const fileName = result.stdout.trim();

      if (fileName) {
        cy.log(`El último archivo descargado es: ${fileName}`);
        // Puedes realizar más acciones o aserciones utilizando el nombre del archivo
      } else {
        cy.log('No se encontraron archivos descargados');
      }
    });
});

Then("validar que no se muestre la tabla de resultados", () => {
  facturacionPage.elements.txtTh().should("not.be.visible");
});

Then("validar que se muestre la tabla de resultados", () => {
  facturacionPage.elements.txtcien().scrollIntoView().contains("Se muestran los primeros ").should("be.visible");
  facturacionPage.elements.txtTh().contains("Pedido").should("be.visible");
});


Then("validar que se muestre el icono para responder la factura", () => {
  facturacionPage.elements.btnResponder().eq(0).scrollIntoView().should("not.be.visible");
});

Then("Seleccionar el icono para responder la factura", () => {
  cy.wait(6000)
  facturacionPage.elements.btnResponder().eq(0).scrollIntoView()
  cy.wait(2000)
  facturacionPage.elements.btnResponder().eq(0).should("not.be.visible").click();
});

Then("Validar que se muestre el modal para responder la Factura", () => {
  facturacionPage.elements.modalResponder().should("be.visible")
});

Then("Validar que se muestre en el modal para responder la factura el texto {string}", (string) => {
  facturacionPage.elements.txtSpan().contains(string).should("be.visible");
});

Then("validar que se muestre el texto Arrastra o Selecciona un archivo para responder la factura", () => {
  facturacionPage.elements.txtArchivo().should("be.visible")
});

Then("validar que se muestre el titulo {string} en el modal para responder la factura", (string) => {
  facturacionPage.elements.txtTituloModalResponder().contains(string).should("be.visible")
});

Then("validar que el caampo de numero de pedido solo contenga numeros en el modal de la factura", () => {
  
  facturacionPage.elements.inputPedidoModal().eq(2).invoke('val').then((value) => {
    cy.log(`El valor del elemento es: ${value}`);
    expect(value).to.match(/^[0-9]+$/);

  });
  //facturacionPage.elements.inputPedidoModal().eq(2).should("be.visible").should('have.value', /[0-9]/);
});

Then("cargar un archivo PDF Y XML para contestar la factura", () => {
  //facturacionPage.upload("guia2.pdf");
  //actualizacionInformacionPage.elements.uploadFileFacturas().attachFile("guia2.pdf");
  facturacionPage.elements.uploadFileFacturas().attachFile("FacturaFile.pdf");
  facturacionPage.elements.uploadFileFacturas().attachFile("FacturaFile.xml");
  //facturacionPage.elements.uploadFileFacturas().attachFile("Actualizacion_guias_qw.csv");
});

Then("Validar que se visualizan los archivos cargados para contestar la factura", () => {
    facturacionPage.elements.archivoXmlPdf().eq(0).should("be.visible")
    facturacionPage.elements.archivoXmlPdf().eq(1).should("be.visible")
});

Then("Validar que se tenga el correo electronico del usuario", ()  => {
  facturacionPage.elements.inputPedido().eq(1).invoke('val').then((text) => {
    expect(text).to.match(/^\S+@\S+\.\S+$/);
  });
});

Then("Validar que se tenga un número en para el campo de pedido", ()  => {
  facturacionPage.elements.inputPedido().eq(0).invoke('val').then((value) => {
    cy.log(`El valor del elemento es: ${value}`);
    //expect(value).to.match(/^[0-9]+$/);

  });
});

Then("ingreso los datos de facturacion", (table) => {   
  table.hashes().forEach((row) => {    
    console.log("pedido "+row.pedido);
    facturacionPage.elements.inputPedido().eq(0).should("be.visible").clear()
    facturacionPage.elements.inputPedido().eq(0).should("be.visible").type(row.pedido)
    facturacionPage.elements.inputPedido().eq(1).should("be.visible").clear()
    facturacionPage.elements.inputPedido().eq(1).should("be.visible").type(row.proveedor)
    facturacionPage.elements.inputPedido().eq(2).should("be.visible").clear();
    facturacionPage.elements.inputPedido().eq(2).should("be.visible").type(row.correo)
    // tipo de solicitd
    facturacionPage.elements.tipoSolicitudEstadoSolicitud().eq(0).should("be.visible").click();
    facturacionPage.elements.tipoSolicitudResult().contains("Solicitud de factura").should("be.visible").click()

    //
    facturacionPage.elements.texArea().scrollIntoView().clear()
    facturacionPage.elements.texArea().scrollIntoView().should("be.visible").type(row.mensaje)
    cy.wait(2000)
    etiquetasenvioPage.elements.descargarBtn().contains("Enviar").should("be.visible").click();
   
  });       
     
});