require "faraday"
require "json"

class DeepService
  def self.get_image(keywords)
    response = conn.post '/api/text2img' do |req|
      req.params['text'] = keywords
    end
    json = JSON.parse(response.body, symbolize_names: true)
  end

  private

  def self.conn
    Faraday.new 'https://api.deepai.org' do |f|
      f.headers['api-key'] = ENV['DEEP_API_KEY']
    end
  end
end
