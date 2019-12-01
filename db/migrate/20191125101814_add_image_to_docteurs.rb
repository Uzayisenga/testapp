class AddImageToDocteurs < ActiveRecord::Migration[6.0]
  def change
    add_column :docteurs, :image, :string
  end
end
