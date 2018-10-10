class Subject < ApplicationRecord
    has_many :topic, dependent: :destroy

    validates :number_of_topics, presence: true
    validates :name, presence: true, length: {minimum: 5}
  end
