class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      #t.integer :id_document
      #t.string :title
      t.string :name, null:false
      t.string :type_file, null: false
      t.string :extension, null:false
      t.string :path, null:false

      t.belongs_to :user, index: true
      t.belongs_to :question, index: true

      t.timestamps
    end
  end
end
