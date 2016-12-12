class SpaceSerializer < ActiveModel::Serializer
  attributes :id, :name
  belongs_to :user
  has_many :contents
end
