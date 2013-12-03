class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string  :title,     null: false
      t.boolean :completed, null: false

      t.timestamps
    end
  end
end
