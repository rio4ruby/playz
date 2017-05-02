# frozen_string_literal: true

class CreateFileDirs < ActiveRecord::Migration[5.0]
  def change
    create_table :file_dirs do |t|
      t.string :name, null: false
      t.string :ancestry

      t.timestamps
    end
    add_index :file_dirs, :name, unique: true
  end
end
