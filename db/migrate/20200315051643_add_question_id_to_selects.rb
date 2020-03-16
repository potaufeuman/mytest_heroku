class AddQuestionIdToSelects < ActiveRecord::Migration[5.1]
  def change
    add_column :selects, :question_id, :integer
  end
end
