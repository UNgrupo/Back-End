class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.references :answerable, polymorphic: true
      t.integer :idAnswer
      t.text :Description
      t.integer :Qualification
      t.date :Date

      t.timestamps
    end
  end
end
