class QuestionSerializer < ActiveModel::Serializer
  attributes :id,:title, :description, :date, :user_id, :topic_id
end
