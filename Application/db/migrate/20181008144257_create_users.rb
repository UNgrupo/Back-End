class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      #t.integer :id_user
      t.string :name
      t.string :email,null: false,index: true,unique: true
      t.string :usern,null: false,unique: true
      t.string :password_digest
      t.integer :level
      t.string :reputation
      t.string :role
      t.integer :number_of_followers
      #t.string :photo

      t.timestamps
    end
  end
end
