const { defineConfig } = require("cypress");
const createBundler = require("@bahmutov/cypress-esbuild-preprocessor");
const preprocessor = require("@badeball/cypress-cucumber-preprocessor");
const createEsbuildPlugin = require("@badeball/cypress-cucumber-preprocessor/esbuild");
const allureWriter = require("@shelex/cypress-allure-plugin/writer");
//const { defineConfig } = require('cypress')
async function setupNodeEvents(on, config) {
  // This is required for the preprocessor to be able to generate JSON reports after each run, and more,
  await preprocessor.addCucumberPreprocessorPlugin(on, config);

  on(
    "file:preprocessor",
    createBundler({
      plugins: [createEsbuildPlugin.default(config)],
    })
  );
 /* const version = config.env.version || 'local';
  config.env = require('./cypress/configuracion/'+version+'.json');
  config.baseUrl = config.env.baseUrl;
  allureWriter(on, config);*/
  

  // Make sure to return the config object as it might have been modified by the plugin.
  return config;
}

module.exports = defineConfig({
  
  reporter: 'junit',
  retries: {"runMode": 2, "openMode": 0},
  video: false,
  screenshotOnRunFailure: true,
  e2e: {
    setupNodeEvents,
    specPattern: "cypress/e2e/features/Frontend/ADMINISTRADOR/0.- LoginPage/*",
    //specPattern: "cypress/e2e/features/Frontend/ADMINISTRADOR/1.- AdministracionUsuarios/*",
    //specPattern: "cypress/e2e/features/Frontend/ADMINISTRADOR/2.- FacturacionPedidos/*",
    //specPattern: "cypress/e2e/features/Frontend/ADMINISTRADOR/3.- ConsultaCategorias/*",
    //specPattern: "cypress/e2e/features/Frontend/ADMINISTRADOR/4.- CargaInformacion/*",
    //specPattern: "cypress/e2e/features/Frontend/ADMINISTRADOR/5.- NotificacionesSeller/*",
    //specPattern: "cypress/e2e/features/Frontend/ADMINISTRADOR/16.-AdministracionEnvios/*",
    //specPattern: "cypress/e2e/features/Frontend/TODOS/*",
          
    baseUrl: "https://mkpsellerportal-qa.liverpool.com.mx",
   chromeWebSecurity: false,
    failOnStatusCode: false,
    env: {
      allureReuseAfterSpec: true,
    },
  },
});