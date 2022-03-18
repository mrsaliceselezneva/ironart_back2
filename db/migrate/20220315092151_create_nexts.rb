class CreateNexts < ActiveRecord::Migration[5.2]
  def change
    create_table :nexts do |t|
      t.integer :number

      t.timestamps
    end
  end
end
