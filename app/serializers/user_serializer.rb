class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :profile_pic_url
  has_many :pizzas
end
