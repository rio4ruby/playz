# frozen_string_literal: true
class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :name, null: false
      t.string :wikiname

      t.timestamps
    end

    add_index :artists, :name, unique: true
  end
end
