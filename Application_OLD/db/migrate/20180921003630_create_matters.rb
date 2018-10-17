class CreateMatters < ActiveRecord::Migration[5.2]
  def change
    create_table :matters do |t|
      t.integer :idMatter
      t.string :Name
      t.integer :Themes_number

      t.timestamps
    end
  end
end
