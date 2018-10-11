# == Schema Information
#
# Table name: topics
#
#  id         :integer          not null, primary key
#  name       :string
#  subject_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Topic < ApplicationRecord
    belongs_to :subject
    has_many :questions

    validates :subject_id, presence: true
    validates :name, presence: true, length: {minimum: 5}
    def self.questT
      Topic.joins(:questions).where(questions: {title: "Dignissimos incidunt dolor esse."})
    end
  end
