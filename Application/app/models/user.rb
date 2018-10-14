# == Schema Information
#
# Table name: users
#
#  id                  :integer          not null, primary key
#  name                :string
#  password            :string
#  level               :integer
#  reputation          :string
#  role                :string
#  number_of_followers :integer
#  photo               :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class User < ApplicationRecord

    has_many :questions
    has_many :answers
    has_many :comments
    has_one :statistic

    validates :password, presence: true, length: {minimum: 5}
    validates :name, presence: true, length: {minimum: 5}
    validates :level, presence: true
    validates :role, presence: true

    #Mostra la informacion del usurio de acuerdo al titulo de la pregunta
    def self.quest
      #Question.where(name: "Doug Mayer")
      User.joins(:questions).where(questions: {title: "Nobis dolor modi aut."})
    end
    # muestra la informacion de un usuario dependiendo del numero de preguntas
    def self.numberq
      User.joins(:statistic).where(statistics: {number_of_questions: 237})
    end

end
