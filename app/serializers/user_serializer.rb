class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :spaces
end
