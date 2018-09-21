class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      t.integer :idDocument
      t.string :Title
      t.integer :idUser
      t.integer :idQuestion

      t.timestamps
    end
  end
end
