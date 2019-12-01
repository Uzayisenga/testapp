class RemoveImageFromDocteurs < ActiveRecord::Migration[6.0]
  def change
    remove_column :docteurs, :image
  end
end
