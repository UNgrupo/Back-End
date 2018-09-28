class Answer < ApplicationRecord
  # Relacion Polimorfica
  belongs_to :answerable, polymorphic: true

  # Relacion --> Comment
  has_many :comments, as: :commentable

  # Validaciones de los campos
  validates :idAnswer, uniqueness: true, numericality: { only_integer: true }
  validates :Description, presence: true, confirmation: { case_sensitive: false }, length: {minimun 15}
  validates :qualification, presence: true numericality: { only_integer: true }
  validates :Date, presence: true

end
