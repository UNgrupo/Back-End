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
    validates :name, presence: true, length: {minimum: 10}

    # paperclip
    # take of https://github.com/thoughtbot/paperclip/issues/2448
    has_attached_file :file

    validates_attachment_content_type :file ,content_type: [
         "application/pdf", "application/msword"
    ]

    #SCOPES

    def self.title
        Document.where(name: "Todo sobre la via lactea")
    end
    #Mostrar la informacion de un documento tomando el nombre de un usuario
    def self.userdoc
        Document.joins(:user).where(users: {name: "Doug Mayer"})
    end
    # Mostrar la informacion de un documentos tomando el titulo de la pregunta
    def self.questdoc
        Document.joins(:question).where(questions: {title: "Doloremque facilis a voluptas."})
    end

end
