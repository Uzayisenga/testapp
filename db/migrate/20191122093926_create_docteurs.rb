class CreateDocteurs < ActiveRecord::Migration[6.0]
  def change
    create_table :docteurs do |t|
      t.string :names
      t.string :field_in
      t.text :upload_cv
      t.text :upload_diploma
      t.string :email
      t.string :availability
      t.string :telephone

      t.timestamps
    end
  end
end
