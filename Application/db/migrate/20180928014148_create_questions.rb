class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.references :questionable, polymorphic: true
      t.integer :idQuestion
      t.string :Title
      t.text :Description
      t.date :Date

      t.timestamps
    end
  end
end
