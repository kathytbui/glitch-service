class Image
  attr_reader :id, :url, :source

  def initialize(image_params)
    @id = image_params[:id]
    @url = image_params[:url]
    @source = image_params[:source]
  end
end
