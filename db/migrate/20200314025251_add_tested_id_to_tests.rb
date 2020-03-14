class AddTestedIdToTests < ActiveRecord::Migration[5.1]
  def change
    add_column :tests, :tested_id, :integer
  end
end
