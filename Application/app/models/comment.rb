# == Schema Information
#
# Table name: comments
#
#  id          :integer          not null, primary key
#  description :text
#  date        :date
#  user_id     :integer
#  answer_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Comment < ApplicationRecord
    belongs_to :answer
    belongs_to :user

    validates :answer_id, presence: true
    validates :user_id, presence: true
    validates :description, presence: true, length: {minimum: 15}
    validates :date, presence: true

    #SCOPES

    def self.desc
      Comment.where(description: "Sequi nulla culpa voluptates.")
    end
    
    def self.date
      Comment.where(date: "2018-10-10")
    end
end
