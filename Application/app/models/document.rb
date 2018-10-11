# == Schema Information
#
# Table name: documents
#
#  id          :integer          not null, primary key
#  title       :string
#  user_id     :integer
#  question_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Document < ApplicationRecord
    belongs_to :question
    belongs_to :user

    validates :question_id, presence: true
    validates :user_id, presence: true
    validates :title, presence: true, length: {minimum: 10}
    #SCOPES

    def self.title
      Document.where(title: "Quia accusamus fugiat iusto.")
    end
    
    def self.useri
      Document.where(user_id: "2")
    end
end
