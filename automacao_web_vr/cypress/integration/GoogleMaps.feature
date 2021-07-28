
Feature: Visualização de integração com o GoogleMaps

    Scenario: Visualizar mapa do Google
        Given acesso a rota "/"
        When clico no botao "Pra Você"
        And clico no botao "Onde usar meu cartão VR"
        Then devo visualizar o Google Maps