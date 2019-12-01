class CreateAdvices < ActiveRecord::Migration[6.0]
  def change
    create_table :advices do |t|
      t.string :name
      t.text :field_in
      t.text :advice
      t.string :email
      t.date :time

      t.timestamps
    end
  end
end
