class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
      t.integer :user_id
      t.integer :question_id
      t.string :result
      t.string :result_bef

      t.timestamps
    end
  end
end
