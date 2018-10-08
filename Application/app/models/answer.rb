class Answer < ApplicationRecord
    belongs_to :user
    belongs_to :question
    has_many :comment, dependent: :destroy
 
    validates :user, presence: true
    validates :question, presence: true
    validates :id_answer, uniqueness: true, numericality: { only_integer: true }
    validates :description, presence: true, length: {minimum: 15}
    validates :date, presence: true
end
