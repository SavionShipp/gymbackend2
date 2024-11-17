class CreateHearts < ActiveRecord::Migration[7.1]
  def change
    create_table :hearts do |t|
      t.integer :user_id
      t.integer :exercise_id
      t.integer :routine_id

      t.timestamps
    end
  end
end
