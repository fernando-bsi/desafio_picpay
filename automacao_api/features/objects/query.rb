class ConsultarRecurso
  include HTTParty
  format :json
  headers 'Content-Type' => 'application/json'

  def consulta_sucesso
    self.class.base_uri (CONFIG['jsonplaceholder-url']).to_s
    response = self.class.get("/posts/#@user_id/") 
    return [response]
  end

  def consulta_invalida
    self.class.base_uri (CONFIG['jsonplaceholder-url']).to_s
    response = self.class.get("/posts/m/") 
    return [response]
  end
end
