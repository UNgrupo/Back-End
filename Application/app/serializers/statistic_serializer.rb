class StatisticSerializer < ActiveModel::Serializer
  attributes :id,:points, :number_of_questions, :number_of_answers, :number_of_best_answers,:user_id
end
