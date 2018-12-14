# == Schema Information
#
# Table name: subjects
#
#  id               :integer          not null, primary key
#  name             :string
#  number_of_topics :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Subject < ApplicationRecord

    has_many :topics, dependent: :destroy

    validates :number_of_topics, presence: true
    validates :name, presence: true, length: {minimum: 5}

    # Muestra la informacion de la materia de acuerdo al nombre de un tema
    def self.topicn
        Subject.joins(:topics).where(topics: {name: "explicabo"})
    end

  end
