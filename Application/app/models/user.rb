class User < ApplicationRecord

  validates :idUser, uniqueness: true, numericality: { only_integer: true }
  validates :Name, presence: true, confirmation: { case_sensitive: false }, length: {minimun 5}
  validates :Level, presence: true
  validates :Reputation, presence: false
  validates :Role, presence: true
  valdiates :Followers_number, numericality: { only_integer: true }
  validates :idStat, presence: true

  has_many :questions
  validates_associated :questions

  has_many :documents
  validates_associated :documents

  has_one :stat
  validates_associated :stat

  has_many :photos
  validates_associated :photos

  has_many :comments
  validates_associated :comments

  has_many :answers
  validates_associated :answers

end
