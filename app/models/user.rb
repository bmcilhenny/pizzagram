class User < ApplicationRecord
  has_many :pizzas
  has_many :comments
end
