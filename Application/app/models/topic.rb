class Topic < ApplicationRecord
    belongs_to :subject
    has_many :question
    
    validates :subject, presence: true
    validates :id_theme, uniqueness: true, numericality: { only_integer: true }
    validates :name, presence: true, length: {minimum: 5}
  end
