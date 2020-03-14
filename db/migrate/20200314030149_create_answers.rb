class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.integer :test_id
      t.integer :tested_id
      t.integer :select_A
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
