# == Schema Information
#
# Table name: answers
#
#  id            :integer          not null, primary key
#  description   :text
#  qualification :integer
#  date          :date
#  user_id       :integer
#  question_id   :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Answer < ApplicationRecord
    belongs_to :user
    belongs_to :question
    has_many :comments, dependent: :destroy

    validates :user_id, presence: true
    validates :question_id, presence: true
    validates :description, presence: true, length: {minimum: 15}
    validates :date, presence: true

    #SCOPES
    # Mostrar una respuesta por medio de la description
    def self.desc
      Answer.where(description: "Sequi nulla culpa voluptates.")
    end
    # Mostrar una respuesta por medio de la fecha
    def self.date
      Answer.where(date: "2018-10-10")
    end
end
