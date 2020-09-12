class ImageFacade
  def self.images(keywords)
    images = []
    images << deep_image(keywords)
    images << pixabay_image(keywords)
    images
  end

  private

  def self.deep_image(keywords)
    data = DeepService.get_image(keywords)
    image_data = {
      id: data[:id],
      url: data[:output_url],
      source: 'Deep AI'
    }
    Image.new(image_data)
  end

  def self.pixabay_image(keywords)
    data = PixabayService.get_image(keywords)
    image_data = {
      id: data[:id],
      url: data[:webformatURL],
      source: 'Pixabay'
    }
    Image.new(image_data)
  end
end
