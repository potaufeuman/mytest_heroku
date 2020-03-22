class AddSelectIdToAnswers < ActiveRecord::Migration[5.1]
  def change
    add_column :answers, :select_id, :integer
  end
end
