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

    #Mostrar la informacion de un documento tomando el nombre de un usuario
    def self.userdoc
        Document.joins(:user).where(users: {name: "Doug Mayer"})
    end
    # Mostrar la informacion de un documentos tomando el titulo de la pregunta
    def self.questdoc
        Document.joins(:question).where(questions: {title: "Doloremque facilis a voluptas."})
    end

end
