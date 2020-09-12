require 'test_helper'

RSpec.describe 'Deep Service' do
  it "can make an api call to deep ai" do
    data = [:id, :output_url]
    keywords = 'strawberry'

    service = DeepService.get_image(keywords)
    data.each do |d|
      expect(service.keys.include?(d)).to eq(true)
    end
  end
end
