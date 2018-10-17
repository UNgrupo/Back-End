class Matter < ApplicationRecord

  validates :idMatter, uniqueness: true, numericality: { only_integer: true }
  validates :Name, presence: true, confirmation: { case_sensitive: false }, length: {minimun: 5}
  validates :Themes_number, presence: false


  has_many :themes
  validates_associated :themes

end
