class Answer < ApplicationRecord
    belongs_to :user
    belongs_to :question
    has_many :comment, dependent: :destroy

    validates :user_id, presence: true
    validates :question_id, presence: true
    validates :description, presence: true, length: {minimum: 15}
    validates :date, presence: true
end
