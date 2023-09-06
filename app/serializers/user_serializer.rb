class UserSerializer < ActiveModel::Serializer
  # include Rails.application.routes.url_helpers
  attributes :id,:images

  def product_images
    object.images.map do |image|
      Rails.application.routes.url_helpers.rails_blob_url(image, only_path: true) if object.images.attached?
    end
  end
end
