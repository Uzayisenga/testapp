class CreateGetFreeConsultants < ActiveRecord::Migration[6.0]
  def change
    create_table :get_free_consultants do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.date :dob
      t.text :street_name
      t.text :district
      t.text :sector
      t.text :cell
      t.string :how_did_you_us
      t.integer :height
      t.integer :weight
      t.text :gender
      t.string :concern
      t.string :family_history
      t.string :subcribe_article
      t.date :time

      t.timestamps
    end
  end
end
