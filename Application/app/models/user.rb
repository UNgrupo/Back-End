class User < ApplicationRecord

  validates :idUser, uniqueness: true, numericality: { only_integer: true }
  validates :Name, presence: true, confirmation: { case_sensitive: false }, length: {minimun 5}
  validates :Level, presence: true
  validates :Reputation, presence: false
  validates :Role, presence: true
  valdiates :Followers_number, numericality: { only_integer: true }
  validates :idStat, presence: true

  # Relacion ---> Comment
  has_many :comments, as: :commentable

  # Relacion ---> Question
  has_many :questions, as: :questionable

  # Relacion ---> Answer
  has_many :answers, as: :answerable

  # Relacion ---> Documents
  has_many :documents, as: :documentable

end
