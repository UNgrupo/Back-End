class Comment < ApplicationRecord

  validates :idComment, uniqueness: true, numericality: { only_integer: true }
  validates :idUser, presence: true
  validates :idAnswer, presence: true
  validates :Description, presence: true, confirmation: { case_sensitive: false }, length: {minimun 15}
  validates :Date, presence: true

  belongs_to :answer
  validates_associated :answer

  belongs_to :user
  validates_associated :user
end
