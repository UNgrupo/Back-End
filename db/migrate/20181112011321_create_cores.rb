class CreateCores < ActiveRecord::Migration[5.2]
  def change
    create_table :cores do |t|
      
      t.timestamps
    end
  end
end
