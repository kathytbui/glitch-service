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
    'Welcome to GlitchService

  To use the service, simply edit the path in the URL as follows:
  Add a "/images/{your search keyword}" to the end of the URL in the address bar.

  Example: https://damp-forest-93176.herokuapp.com/images/strawberry'
  end

  get '/images' do
    redirect_to '/'
  end

  get '/images/:keywords' do
    ImageSerializer.new(ImageFacade.images(params[:keywords])).serialized_json
  end
end
