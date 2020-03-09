class CreateRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :relationships do |t|
      t.integer :tested_id
      t.datetime :tested_at

      t.timestamps
    end
    add_index :relationships, [:tested_id, :tested_at]
  end
end
