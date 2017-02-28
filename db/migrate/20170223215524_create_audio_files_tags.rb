# frozen_string_literal: true
class CreateAudioFilesTags < ActiveRecord::Migration[5.0]
  def change
    create_table :audio_files_tags do |t|
      t.references :audio_file, foreign_key: true, null: false
      t.references :tag, foreign_key: true, null: false

      t.timestamps
    end
    add_index :audio_files_tags, [:audio_file_id, :tag_id], unique: true
  end
end
