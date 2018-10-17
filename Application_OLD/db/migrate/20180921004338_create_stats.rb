class CreateStats < ActiveRecord::Migration[5.2]
  def change
    create_table :stats do |t|
      t.integer :idStat
      t.integer :Points
      t.integer :Questions_number
      t.integer :Answers_number
      t.integer :Best_Answers

      t.timestamps
    end
  end
end
