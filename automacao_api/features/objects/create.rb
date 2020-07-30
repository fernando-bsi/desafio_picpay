class CriarRecurso
  include HTTParty
  format :json
  headers 'Content-Type' => 'application/json'

  def criar_sucesso
    @user_id = 1
    body = {
      "title": ('A'..'Z').to_a.shuffle[0,5].join,
      "body":  ('A'..'Z').to_a.shuffle[0,13].join,
      "userId": @user_id}.to_json
    self.class.base_uri (CONFIG['jsonplaceholder-url']).to_s
    response = self.class.post('/posts', body: body)
    return [response, @user_id]
  end
 end