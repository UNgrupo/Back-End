class Topic < ApplicationRecord
    belongs_to :subject
    has_many :question

    validates :subject_id, presence: true
    validates :name, presence: true, length: {minimum: 5}

  end
