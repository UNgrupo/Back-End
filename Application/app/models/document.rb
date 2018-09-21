class Document < ApplicationRecord

  validates :idDocument, uniqueness: true, numericality: { only_integer: true }
  validates :Title, presence: true, confirmation: { case_sensitive: false }, length: {minimun 15}
  validates :idUser, presence: true
  validates :idQuestion, presence: true

  belongs_to :user
  validates_associated :user

  belongs_to :question
  validates_associated :question

end
