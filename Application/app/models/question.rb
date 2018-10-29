# == Schema Information
#
# Table name: questions
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  date        :date
#  user_id     :integer
#  topic_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Question < ApplicationRecord
    belongs_to :user
    belongs_to :topic
    has_many :documents, dependent: :destroy
    has_many :answers, dependent: :destroy

    validates :user_id, presence: true
    validates :topic_id, presence: true
    validates :title, presence: true, length: {minimum: 10}
    validates :description, presence: true, length: {minimum: 15}
    validates :date, presence: true
    # despues de haber sido creada la pregunta se envia un correo
    after_create :send_mail

    def send_mail
        QuestionMailer.new_question(self).deliver_later
    end


    #SCOPES
    #Buscar una pregunta de un usuario
    #scope :usern, joins(:users).where(name: "Doug Mayer")
    def self.questans
      Question.joins(:answers).where(answers: {qualification: 66})
    end

    # Mostrar la informacion de la pregunta <-----
    def self.questdoc
      Question.joins(:documents).where(documents: {title: "Enim inventore sunt velit."})
    end
end
