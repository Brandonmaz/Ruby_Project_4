class CreateEntry < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
        t.string "task"
        t.string "description"
        t.string "due_date"
        t.boolean "done"
    end
  end
end
