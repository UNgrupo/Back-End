class Comment < ApplicationRecord
    belongs_to :answer
    belongs_to :user

    validates :answer_id, presence: true
    validates :user_id, presence: true
    validates :description, presence: true, length: {minimum: 15}
    validates :date, presence: true
end
