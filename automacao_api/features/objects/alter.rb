class AlterarRecurso
    include HTTParty
    format :json
    headers 'Content-Type' => 'application/json'
  
    def initialize
        @obter_consulta = ConsultarRecurso.new
        @id_consulta    = @obter_consulta.consulta_sucesso[0][0]["id"]
    end

    def alterar_sucesso
      body = {
        "title": "alterar",
        "body":  "alterar body",
        "userId": 111}.to_json
      self.class.base_uri (CONFIG['jsonplaceholder-url']).to_s
      response = self.class.put("/posts/#@id_consulta/", body: body)
      return [response]
    end
end