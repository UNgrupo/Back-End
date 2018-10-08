class Question < ApplicationRecord
    belongs_to :user
    belongs_to :topic
    has_many :document, dependent: :destroy
    has_many :answer, dependent: :destroy

    validates :user, presence: true
    validates :topic, presence: true
    validates :id_question, uniqueness: true, numericality: { only_integer: true }
    validates :title, presence: true, length: {minimum: 10}
    validates :description, presence: true, length: {minimum: 15}  
    validates :date, presence: true
end
