class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :description, :qualification, :date, :user_id, :question_id
end
