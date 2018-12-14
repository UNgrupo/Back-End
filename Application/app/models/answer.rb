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

    validates_numericality_of :qualification, less_than:10

    # despues de haber sido creada la respuesta se envia un correo
    after_create :send_mail

    def send_mail
        AnswerMailer.new_answer(self).deliver_later
    end
    #SCOPES
    # Mostrar una respuesta por medio de la description
    def self.desc
      Answer.where(description: "Sequi nulla culpa voluptates.")
    end
    # Mostrar una respuesta por medio de la fecha
    def self.date
      Answer.where(date: "2018-10-10")
    end

    # Mostrar la informacion de una respuesta deacuerdo a la descripcion de un comentario
    def self.comdesc
      Answer.joins(:comments).where(comments: {description: "Odio repellat et ex."})
    end

    # Mostrar la informacion de una respuesta deacuerdo al nombre de un usuario
    def self.userans
      Answer.joins(:user).where(users: {name: "Doug Mayer"})
    end
end
