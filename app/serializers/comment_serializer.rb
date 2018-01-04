class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_name, :user
    belongs_to :user
    belongs_to :pizza



end
