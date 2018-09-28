class Question < ApplicationRecord
  # Relaciones Polimorficas
  belongs_to :questionable, polymorphic: true

  # Validaciones para los campos
  validates :idQuestion, uniqueness: true, numericality: { only_integer: true }
  validates :Title, presence: true, confirmation: { case_sensitive: false }, length: {minimun 15}
  validates :Date, presence: true
  validates :Description, presence: true, confirmation: { case_sensitive: false }, length: {minimun 15}

  # Relacion ---> Answer
  has_many :answer, as: :answerable

  # Relacion ---> Answer
  has_many :documents, as: :documentable

  

end
