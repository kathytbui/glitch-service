require 'test_helper'

RSpec.describe 'Image Serializer' do
  it "can serialize" do
    data = {
      id: "eb0e8808-318e-477f-849c-c1786402119b",
      url: "https://api.deepai.org/job-view-file/eb0e8808-318e-477f-849c-c1786402119b/outputs/output.jpg",
      source: 'Deep AI'
    }

    image = Image.new(data)
    serialized_image = ImageSerializer.new(image)
    json = JSON.parse(serialized_image.to_json, symbolize_names: true)
    expect(json[:data].keys.include?(:id)).to eq(true)
    expect(json[:data].keys.include?(:type)).to eq(true)
    expect(json[:data].keys.include?(:attributes)).to eq(true)
    expect(json[:data][:attributes].keys.include?(:id)).to eq(true)
    expect(json[:data][:attributes].keys.include?(:url)).to eq(true)
    expect(json[:data][:attributes].keys.include?(:source)).to eq(true)
  end
end
