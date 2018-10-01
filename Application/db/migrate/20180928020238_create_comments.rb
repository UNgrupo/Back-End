class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :commentable, polymorphic: true
      t.integer :idComment
      t.text :Description
      t.date :Date

      t.timestamps
    end
  end
end
