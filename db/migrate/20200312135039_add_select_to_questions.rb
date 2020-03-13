class AddSelectToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :select_id, :integer
    add_column :questions, :point, :integer
  end
end
