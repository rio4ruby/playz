# frozen_string_literal: true
class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :name, null: false

      t.timestamps
    end
    add_index :songs, :name, unique: true
  end
end
