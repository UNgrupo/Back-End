class Statistic < ApplicationRecord
    belongs_to :user
    
    validates :user, presence: true
    validates :id_statistic, uniqueness: true, numericality: { only_integer: true }
    validates :points, presence: false
    validates :number_of_answers, presence: false
    validates :number_of_questions, presence: false
    validates :Best_answers, presence: false
end
