class Subject < ApplicationRecord
    has_many :topic, dependent: :destroy

    validates :topic, presence: true
    validates :id_subject, uniqueness: true, numericality: {only_integer: true}
    validates :name, presence: true, length: {minimum: 5}
  end
