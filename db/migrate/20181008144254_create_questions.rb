class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      #t.integer :id_question
      t.string :title
      t.text :description
      t.date :date
      t.belongs_to :user, index: true
      t.belongs_to :topic, index: true

      t.timestamps
    end
  end
end
