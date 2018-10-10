class Document < ApplicationRecord
    belongs_to :question
    belongs_to :user

    validates :question_id, presence: true
    validates :user_id, presence: true
    validates :title, presence: true, length: {minimum: 10}
end
