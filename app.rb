# require "./spec/test_helper"
require 'sinatra/base'
require 'faraday'
require 'rake'
require 'shotgun'
require 'dotenv'
require 'pry'
require 'json'
require 'fast_jsonapi'
require 'faraday'
require 'rack/test'
require './poros/image'
require './services/pixabay_service'
require './services/deep_service'
require './facades/image_facade'
require './serializers/image_serializer'
require './app.rb'
Dotenv.load

class GlitchService < Sinatra::Base
  before do
    content_type 'application/json'
  end

  get '/images/:keywords' do
    ImageSerializer.new(ImageFacade.images(params[:keywords])).serialized_json
  end
end
