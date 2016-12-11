class ContentSerializer < ActiveModel::Serializer
  attributes :id, :title, :position, :image, :audio, :text
  has_one :user

  def image
    object.image.url
  end
end
