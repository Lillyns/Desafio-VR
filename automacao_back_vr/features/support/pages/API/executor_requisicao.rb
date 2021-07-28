class ExecutorRequisicao
  include HTTParty
  include RSpec::Matchers

  base_uri DATA['base_uri']

  def submit_request(method:, route:, body: nil)
    header = {
      'Content-Type': 'application/json'
    }

    self.class.send(method, route, headers: header, verify: false, timeout: 60)
  end

  def check_schema(response, schema)
    schema = File.read(Dir.pwd + '/environments/schema/' + schema + '.json')
    schema = JSON.parse(schema)

    response_body = JSON.parse(response.body)
    validations   = JSON::Validator.fully_validate(schema, response_body, strict: true)

    raise(validations.join("\n")) unless validations.empty?
  end
end
