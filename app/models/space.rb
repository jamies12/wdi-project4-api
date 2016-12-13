class Space < ApplicationRecord
  belongs_to :user
  has_many :contents

  mount_uploader :image, ImageUploader
end
