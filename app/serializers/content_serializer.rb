class ContentSerializer < ActiveModel::Serializer
  attributes :id, :title, :position, :body, :content_type
  belongs_to :user
  belongs_to :space

  def content_type
    if object.audio
      "audio"
    elsif object.text
      "text"
    else
      "image"
    end
  end

  def body
    object.audio || object.text || object.image.url
  end

end
