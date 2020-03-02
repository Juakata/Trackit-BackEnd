class UserSerializer < ActiveModel::Serializer

  attributes :id, :username, :password, :token

end
