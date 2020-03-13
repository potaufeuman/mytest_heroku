class CreateSelects < ActiveRecord::Migration[5.1]
  def change
    create_table :selects do |t|
      t.text :content
      t.integer :judge

      t.timestamps
    end
  end
end
