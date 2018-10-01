class Document < ApplicationRecord
  # Relacion polimorfica
  belongs_to :documentable, polymorphic: true

  # Validaciones para los campos
  validates :idDocument, uniqueness: true, numericality: { only_integer: true }
  validates :Title, presence: true, confirmation: { case_sensitive: false }, length: {minimun: 15}

end
