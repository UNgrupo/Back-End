class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      #t.integer :id_comment
      t.text :description
      t.date :date
      t.belongs_to :user, index: true
      t.belongs_to :answer, index: true

      t.timestamps
    end
  end
end
