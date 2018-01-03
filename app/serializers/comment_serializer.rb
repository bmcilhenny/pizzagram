class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :user, :pizza
    belongs_to :pizza
end
