require 'test_helper'

RSpec.describe 'ImageFacade' do
  it "can create image objects with deep ai api" do
    images = ImageFacade.images('strawberry')
    image = images.first
    expect(image).to be_a(Image)
  end
end
