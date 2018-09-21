class Answer < ApplicationRecord

  validates :idAnswer, uniqueness: true, numericality: { only_integer: true }
  validates :Description, presence: true, confirmation: { case_sensitive: false }, length: {minimun 15}
  validates :qualification, presence: true numericality: { only_integer: true }
  validates :Date, presence: true
  validates :idUser, presence: false
  validates :idQuestion, presence: false

  belongs_to :user
  validates_associated :user

  belongs_to :question
  validates_associated :question

  has_many :comments
  validates_associated :comments
end
