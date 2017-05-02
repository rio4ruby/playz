# frozen_string_literal: true

class CreateListHeads < ActiveRecord::Migration[5.0]
  def change
    create_table :list_heads do |t|
      t.references :user, foreign_key: true
      t.string :name, null: false
      t.boolean :is_playing, default: false

      t.timestamps
    end
    add_index :list_heads, %i[user_id name], unique: true
  end
end
