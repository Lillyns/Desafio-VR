/// <reference types="Cypress" />

import Elements from '../elements/Elements'

class GoogleMapsPage {

    verificaCarregamentoMaps() {
        cy.intercept(/.*maps\.googleapis\.com.*/).as('mapsApiRequests')
        cy.get(Elements['Maps']()).should('be.visible')
        cy.wait('@mapsApiRequests').its('response.statusCode').should('eq', 200)
    }
}
    
export default GoogleMapsPage;