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
    def self.numquest
        Statistic.joins(:user).where(users: {name: "Libbie Littel"})
    end

end
