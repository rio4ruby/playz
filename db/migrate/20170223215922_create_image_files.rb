# frozen_string_literal: true
class CreateImageFiles < ActiveRecord::Migration[5.0]
  def change
    create_table :image_files do |t|
      t.string :filename, null: false
      t.references :file_dir, foreign_key: true, null: false

      t.datetime :file_modified_time, null: false
      t.string :format, null: false
      t.integer :columns, null: false
      t.integer :rows, null: false
      t.integer :depth, null: false
      t.integer :number_colors, null: false
      t.integer :filesize, null: false
      t.float :x_resolution, null: false
      t.float :y_resolution, null: false
      t.string :units
      t.string :mime_type, limit: 50, null: false

      t.timestamps
    end
  end
end
