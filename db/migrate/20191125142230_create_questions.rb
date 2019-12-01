class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :name
      t.text :question
      t.string :email
      t.date :time

      t.timestamps
    end
  end
end
