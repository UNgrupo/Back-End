class CreateStatistics < ActiveRecord::Migration[5.2]
  def change
    create_table :statistics do |t|
      #t.integer :id_statistic
      t.integer :points
      t.integer :number_of_answers
      t.integer :number_of_questions
      t.integer :number_of_best_answers
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
