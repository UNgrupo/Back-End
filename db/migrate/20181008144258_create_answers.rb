class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      #t.integer :id_answer
      t.text :description
      t.integer :qualification
      t.date :date
      t.belongs_to :user, index: true
      t.belongs_to :question, index: true

      t.timestamps
    end
  end
end
