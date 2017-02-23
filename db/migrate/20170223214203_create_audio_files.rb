class CreateAudioFiles < ActiveRecord::Migration[5.0]
  def change
    create_table :audio_files do |t|
      t.references :file_dir, foreign_key: true, :null => false
      t.references :artist, foreign_key: true
      t.references :album, foreign_key: true
      t.references :song, foreign_key: true
      t.references :genre, foreign_key: true

      t.string :filename
      t.integer :file_size, :null => false
      t.datetime :file_modified_time, :null => false

      t.integer :tracknum
      t.integer :bitrate
      t.integer :samplerate
      t.float :length
      t.integer :layer
      t.integer :mpeg_version
      t.boolean :vbr
      t.integer :audio_start
      t.integer :audio_length
      t.string :mime_type, :limit => 50, :null => false

      t.timestamps
    end
    add_index :audio_files, [:file_dir_id,:filename], :unique => true
  end
end
