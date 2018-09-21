class Question < ApplicationRecord

  validates :idQuestion, uniqueness: true, numericality: { only_integer: true }
  validates :Title, presence: true, confirmation: { case_sensitive: false }, length: {minimun 5}
  validates :Description, presence: true, confirmation: { case_sensitive: false }, length: {minimun 15}
  validates :Date, presence: true
  validates :idTheme, presence: true
  validates :idUser, presence: true

  belongs_to :user
  validates_associated :user

  belongs_to :theme
  validates_associated :theme

  has_many :documents
  validates_associated :documents

  has_many :answers
  validates_associated :answers
end
