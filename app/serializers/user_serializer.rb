class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :age
  has_many :activities
end
