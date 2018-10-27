class DocumentSerializer < ActiveModel::Serializer
  attributes :id,:title, :user_id, :question_id
end
