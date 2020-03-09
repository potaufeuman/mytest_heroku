class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.integer :test_id
      t.text :Q
      t.text :correct_A

      t.timestamps
    end
    add_index :questions, :test_id
  end
end
