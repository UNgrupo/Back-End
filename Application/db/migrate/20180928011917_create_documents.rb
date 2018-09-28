class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      t.references :documentable, polymorphic: true
      t.integer :idDocument
      t.string :Title

      t.timestamps
    end
  end
end
