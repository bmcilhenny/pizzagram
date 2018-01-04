class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :profile_pic_url, :pizzas #, :comments
  has_many :pizzas
  has_many :comments
end
