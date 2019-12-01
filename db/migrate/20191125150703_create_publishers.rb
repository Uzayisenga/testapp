class CreatePublishers < ActiveRecord::Migration[6.0]
  def change
    create_table :publishers do |t|
      t.string :name
      t.text :publish
      t.string :email
      t.date :time

      t.timestamps
    end
  end
end
