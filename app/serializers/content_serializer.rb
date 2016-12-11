class ContentSerializer < ActiveModel::Serializer
  attributes :id, :title, :position, :image, :audio, :text
  has_one :user
  has_one :space

  def image
    object.image.url
  end
end
