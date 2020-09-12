require 'test_helper'

RSpec.describe 'pixabay Service' do
  it "can make an api call to pixabay" do
    data = [:id, :webformatURL]
    keywords = 'strawberry'

    service = PixabayService.get_image(keywords)
    data.each do |d|
      expect(service.keys.include?(d)).to eq(true)
    end
  end
end
