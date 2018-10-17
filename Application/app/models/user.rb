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

    validates :password, presence: true
    validates :name, presence: true, length: {minimum: 5}
    validates :level, presence: true
    validates :role, presence: true

    # muestra la informacion del usuario de acuerdo al titulo de la pregunta
    def self.quest
      #Question.where(name: "Doug Mayer")
      User.joins(:questions).where(questions: {title: "Nobis dolor modi aut."})
    end
    # muestra la informacion de un usuario dependiendo del numero de preguntas
    def self.numberq
      User.joins(:statistic).where(statistics: {number_of_questions: 237})
    end

  # Necessary to authenticate.
  has_secure_password
  
  # Basic password validation, configure to your liking.
  validates_length_of       :password, maximum: 16, minimum: 8, allow_nil: true, allow_blank: false
  validates_confirmation_of :password, allow_nil: true, allow_blank: false

  before_validation { 
    (self.email = self.email.to_s.downcase) && (self.usern = self.usern.to_s.downcase) 
  }

  # Make sure email and username are present and unique.
  validates_presence_of     :email
  validates_presence_of     :usern
  validates_uniqueness_of   :email
  validates_uniqueness_of   :usern

  # This method gives us a simple call to check if a user has permission to modify.
  def can_modify_user?(user_id)
    role == 'admin' || id.to_s == user_id.to_s
  end

  # This method tells us if the user is an admin or not.
  def is_admin?
    role == 'admin'
  end
end
