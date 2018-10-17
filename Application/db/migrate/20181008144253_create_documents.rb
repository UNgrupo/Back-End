class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      #t.integer :id_document
      t.string :title
      t.belongs_to :user, index: true
      t.belongs_to :question, index: true

      t.timestamps
    end
  end
end
