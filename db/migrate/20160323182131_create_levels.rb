class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.integer :index, null: false
      t.string :name, null: false
      t.string :maze, null: false
      t.string :password
      t.string :message
    end
  end
end
