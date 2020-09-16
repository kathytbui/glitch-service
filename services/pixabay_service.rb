require "faraday"
require "json"

class PixabayService
  def self.get_image(keywords)
    json = JSON.parse(response(keywords).body, symbolize_names: true)
    json[:hits][rand(0..19)]
  end

  private

  def self.response(keywords)
    Faraday.get "https://pixabay.com/api/" do |f|
      f.params['key'] = ENV['PIXABAY_API_KEY']
      f.params['q'] = keywords
    end
  end
end
