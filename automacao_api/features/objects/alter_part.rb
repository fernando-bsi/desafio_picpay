class AlterarParteDoRecurso
    include HTTParty
    format :json
    headers 'Content-Type' => 'application/json'
  
    def initialize
        @obter_consulta = ConsultarRecurso.new
        @id_consulta    = @obter_consulta.consulta_sucesso[0][0]["id"]
    end

    def alterar_titulo
      body = {
        "title": "alterando o titulo"}.to_json
      self.class.base_uri (CONFIG['jsonplaceholder-url']).to_s
      response = self.class.patch("/posts/#@id_consulta/", body: body)
      return [response]
    end
end