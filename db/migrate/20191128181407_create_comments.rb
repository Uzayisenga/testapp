class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :description
      t.references :publisher, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
