require 'test_helper'

RSpec.describe 'Image' do
  it "can create an image" do
    data = {
      id: "eb0e8808-318e-477f-849c-c1786402119b",
      url: "https://api.deepai.org/job-view-file/eb0e8808-318e-477f-849c-c1786402119b/outputs/output.jpg",
      source: 'Deep AI'
    }

    image = Image.new(data)
    expect(image.id).to eq(data[:id])
    expect(image.url).to eq(data[:url])
    expect(image.source).to eq(data[:source])
  end
end
