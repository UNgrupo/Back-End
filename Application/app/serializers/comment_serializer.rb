class CommentSerializer < ActiveModel::Serializer
  attributes :id, :description, :date, :user_id, :answer_id
end
