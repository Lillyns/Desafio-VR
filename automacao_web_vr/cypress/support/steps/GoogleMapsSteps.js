/* global Given, Then, When */

import ClickActions from '../pageobjects/ClickActions'
import GoogleMapsPage from '../pageobjects/GoogleMapsPage'

const clickActions = new ClickActions
const googleMapsPage = new GoogleMapsPage

Given("acesso a rota {string}", (rota) => {
    cy.visit(rota);
})

When("clico no botao {string}", (botao) => {
    clickActions.clicarBotao(botao);
})

Then("devo visualizar o Google Maps", () => {
    googleMapsPage.verificaCarregamentoMaps();
})