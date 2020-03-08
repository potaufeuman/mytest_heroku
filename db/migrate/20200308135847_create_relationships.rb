class CreateRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :relationships do |t|
      t.integer :tester_id
      t.integer :tested_id

      t.timestamps
    end
  end
end
