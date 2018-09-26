class AddQuestionId < ActiveRecord::Migration[5.2]
  def change
    add_column :answers, :question_id, :integer, null: false
    add_index :answers, :question_id, unique: false
  end
end
