class Theme < ApplicationRecord

  validates :idTheme, uniqueness: true, numericality: { only_integer: true }
  validates :Name, presence: true, confirmation: { case_sensitive: false }, length: {minimun 5}
  validates :Questions_number, presence: false
  validates :idMatter, presence: false


  has_many :questions
  validates_associated :matters

  belongs_to :matter
  validates_associated :matter

end
