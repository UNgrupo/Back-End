class Stat < ApplicationRecord

  belongs_to :user
  validates_associated :user

  # validations every day

  validates :idStat, uniqueness: true, numericality: { only_integer: true }
  validates :Points, presence: false
  validates :Answers_number, presence: false
  validates :Questions_number, presence: false
  valdiates :Best_answers, presence: false
end
