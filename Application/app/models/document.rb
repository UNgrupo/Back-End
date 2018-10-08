class Document < ApplicationRecord
    belongs_to :question
    belongs_to :user

    validates :question, presence: true
    validates :user, presence: true
    validates :id_document, uniqueness: true, numericality: { only_integer: true }
    validates :title, presence: true, length: {minimum: 10}  
end
