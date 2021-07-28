Dado('que realizo um {string} no rota {string}') do |method, route|
  @response = @request.submit_request(method: method, route: route)
end

Quando('recebo o status {int} da API') do |status|
  expect(@response.code).to eql status
end

Então('espero receber o campo {string} corretamente') do |attribute|
  expect(@response.parsed_response).to have_key(attribute)
end

Então('exibo o atributo {string} randomicamente') do |attribute|
  puts(JSON.pretty_generate(@response.parsed_response[attribute].sample))
end

Então('valido o contrato da resposta com o {string}') do |schema|
  @request.check_schema(@response, schema)
end
