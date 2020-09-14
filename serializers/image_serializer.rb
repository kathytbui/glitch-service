require "fast_jsonapi"

class ImageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :url, :source
end
