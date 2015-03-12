class CreateUserTasks < ActiveRecord::Migration
  def change
    create_table :user_tasks do |t|
      t.string :task_name
      t.string :string
      t.string :status
      t.string :string
      t.string :result
      t.string :text
      t.string :info
      t.string :text

      t.timestamps null: false
    end
  end
end
