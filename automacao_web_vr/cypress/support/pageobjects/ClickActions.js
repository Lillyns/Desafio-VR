/// <reference types="Cypress" />

import Elements from '../elements/Elements'

class ClickActions {
    clicarBotao(selector) {
        cy.get(Elements[selector]()).click()
    }
}
    
export default ClickActions;