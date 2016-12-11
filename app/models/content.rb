class Content < ApplicationRecord
  belongs_to :user
  belongs_to :space

  mount_uploader :image, ImageUploader
end
