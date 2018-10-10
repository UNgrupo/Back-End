class Statistic < ApplicationRecord
    belongs_to :user

    validates :points, presence: true
    validates :number_of_answers, presence: true
    validates :number_of_questions, presence: true
    validates :number_of_best_answers, presence: true
    validates :user_id, presence: true
end
