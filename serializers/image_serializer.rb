class ImageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :url, :source
end
