#language: pt
@api
Funcionalidade: Verificar retorno da API   

    Cenario: Validar campo typeOfEstablishment
        Dado que realizo um 'get' no rota '/api-web/comum/enumerations/VRPAT'
        Quando recebo o status 200 da API
        Então espero receber o campo 'typeOfEstablishment' corretamente
            E exibo o atributo 'typeOfEstablishment' randomicamente

    Cenario: Validar contrato da resposta de sucesso
        Dado que realizo um 'get' no rota '/api-web/comum/enumerations/VRPAT'
        Quando recebo o status 200 da API
        Então valido o contrato da resposta com o 'vr_schema'