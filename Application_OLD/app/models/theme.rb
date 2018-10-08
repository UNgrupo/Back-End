class Theme < ApplicationRecord

  validates :idTheme, uniqueness: true, numericality: { only_integer: true }
  validates :Name, presence: true, confirmation: { case_sensitive: false }, length: {minimum: 5}
  validates :Questions_number, presence: false
  validates :idMatter, presence: false

  has_many :questions, as: :questionable


end
