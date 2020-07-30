class ExcluirrRecurso
    include HTTParty
    format :json
    headers 'Content-Type' => 'application/json'
  
    def initialize
        @obter_consulta = ConsultarRecurso.new
        @id_consulta    = @obter_consulta.consulta_sucesso[0][0]["id"]
    end

    def excluir_sucesso
      self.class.base_uri (CONFIG['jsonplaceholder-url']).to_s
      self.class.delete("/posts/#@id_consulta/") 
    end
end  
