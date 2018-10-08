class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :idUser
      t.string :Name
      t.integer :Level
      t.string :Reputation
      t.string :Role
      t.integer :Followers_number
      t.integer :idStat

      t.timestamps
    end
  end
end
