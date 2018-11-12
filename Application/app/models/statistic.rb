# == Schema Information
#
# Table name: statistics
#
#  id                     :integer          not null, primary key
#  points                 :integer
#  number_of_answers      :integer
#  number_of_questions    :integer
#  number_of_best_answers :integer
#  user_id                :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class Statistic < ApplicationRecord

    belongs_to :user

    validates :points, presence: true
    validates :number_of_answers, presence: true
    validates :number_of_questions, presence: true
    validates :number_of_best_answers, presence: true
    validates :user_id, presence: true

    # Mostrar el numero de preguntas de un usuario
    def self.user(usern)
        #Sttistic.joins(:user).where(users: {name: "Libbie Littel"})
        Statistic.joins(:user).where(users: {usern: usern})
    end

    # Queries necesarios para realizar los filtros
    def self.points(points)
        #Statistic.where("points > 300")
        Statistic.where(points: points)
    end

    def self.question(questions)
        Statistic.where(number_of_questions: questions)
    end

    def self.answer(answers)
        Statistic.where(number_of_answers: answers)
    end

end
