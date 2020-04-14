class AddPictureToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :picture, :string
  end
end
