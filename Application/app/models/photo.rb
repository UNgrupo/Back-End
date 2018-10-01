class Photo < ApplicationRecord


  validates :idPhoto, uniqueness: true, numericality: { only_integer: true }
  validates :Title, presence: true, confirmation: { case_sensitive: false }, length: {minimun: 5}
  validates :idUser, presence: true

  belongs_to :user
  validates_associated :user

end
