class Comment < ApplicationRecord
    belongs_to :answer
    belongs_to :user

    validates :answer, presence: true
    validates :user, presence: true
    validates :id_comment, uniqueness: true, numericality: { only_integer: true }
    validates :description, presence: true, length: {minimum: 15}
    validates :date, presence: true  
end
