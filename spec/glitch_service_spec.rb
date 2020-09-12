require 'test_helper'

RSpec.describe 'Feature' do
  include Rack::Test::Methods

  def app
    GlitchService.new
  end

  it "can get an image" do
    keyword = 'strawberry'
    get "/images/#{keyword}"
    image = JSON.parse(last_response.body, symbolize_names: true)
    expect(last_response).to be_successful
    expect(last_response.content_type).to eq('application/json')
    expect(image[:data][0].keys.include?(:id)).to eq(true)
    expect(image[:data][0].keys.include?(:type)).to eq(true)
    expect(image[:data][0].keys.include?(:attributes)).to eq(true)
    expect(image[:data][0][:attributes].keys.include?(:id)).to eq(true)
    expect(image[:data][0][:attributes].keys.include?(:url)).to eq(true)
    expect(image[:data][0][:attributes].keys.include?(:source)).to eq(true)
  end
end
