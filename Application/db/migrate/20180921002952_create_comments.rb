class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :idComment
      t.integer :idUser
      t.integer :idAnswer
      t.text :Description
      t.date :Date

      t.timestamps
    end
  end
end
