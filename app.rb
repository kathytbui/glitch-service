require "./spec/test_helper"

# class GlitchService < Sinatra::Base
  before do
    content_type 'application/json'
  end

  get '/' do
    'hello world'
  end

  get '/images/:keywords' do
    ImageSerializer.new(ImageFacade.images(params[:keywords])).serialized_json
  end
# end
