class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      #t.integer :id_subject
      t.string :name
      t.integer :number_of_topics

      t.timestamps
    end
  end
end
