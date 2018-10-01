class Comment < ApplicationRecord
  # Relacion Polimorfica
  belongs_to :commentable, polymorphic: true

  # Validaciones de los campos
  validates :idComment, uniqueness: true, numericality: { only_integer: true }
  validates :Description, presence: true, confirmation: { case_sensitive: false }, length: {minimum: 15}
  validates :Date, presence: true

end
