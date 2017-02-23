class CreateListNodes < ActiveRecord::Migration[5.0]
  def change
    create_table :list_nodes do |t|
      t.string :ancestry
      t.integer :ancestry_depth
      t.integer :position
      t.references :listable, :polymorphic => true, null: false

      t.timestamps
    end
    add_index :list_nodes, [:listable_id, :listable_type]
  end
end
