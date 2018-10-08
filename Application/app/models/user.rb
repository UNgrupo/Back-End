class User < ApplicationRecord
    has_many :question
    has_many :answer
    has_many :comment
    has_one :statistic

    validates :id_user, uniqueness: true, numericality: { only_integer: true }
    validates :name, presence: true, length: {minimum: 5}
    validates :level, presence: true
    validates :role, presence: true
end
