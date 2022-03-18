class CreateNextQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :next_questions do |t|
      t.integer :number

      t.timestamps
    end
  end
end
