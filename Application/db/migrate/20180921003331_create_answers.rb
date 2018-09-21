class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.integer :idAnswer
      t.text :Description
      t.integer :Qualification
      t.date :Date
      t.integer :idUser
      t.integer :idQuestion

      t.timestamps
    end
  end
end
