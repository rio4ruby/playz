class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.string :name, :null => false
      t.integer :album_dir_id, :null => false
      t.integer :album_artist_id
      t.integer :album_image_file_id

      t.timestamps
    end
    add_index :albums, [:album_dir_id,:name], :unique => true 

  end
end
