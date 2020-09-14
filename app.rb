require 'sinatra/base'
require_relative 'facades/image_facade'
require_relative 'serializers/image_serializer'
require 'rack'
require 'dotenv'
Dotenv.load

class GlitchService < Sinatra::Base
  set :protection, :except => [:json_csrf]
  before do
    content_type 'application/json'
  end

  get '/' do
    'Hello world'
  end

  get '/images/:keywords' do
    ImageSerializer.new(ImageFacade.images(params[:keywords])).serialized_json
  end
end
