class SpaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :color
  belongs_to :user
  has_many :contents

  def image
    object.image.url
  end
end
