class AddTestedToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :tested_id, :integer
    add_column :users, :tested_at, :datetime
  end
end
