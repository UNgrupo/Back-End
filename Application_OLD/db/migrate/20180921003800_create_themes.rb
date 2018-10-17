class CreateThemes < ActiveRecord::Migration[5.2]
  def change
    create_table :themes do |t|
      t.integer :idTheme
      t.string :Name
      t.integer :Questions_number
      t.integer :idMatter

      t.timestamps
    end
  end
end
