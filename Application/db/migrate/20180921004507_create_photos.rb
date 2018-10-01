class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.integer :idPhoto
      t.string :Title
      t.integer :idUser

      t.timestamps
    end
  end
end
