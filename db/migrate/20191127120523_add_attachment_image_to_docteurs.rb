class AddAttachmentImageToDocteurs < ActiveRecord::Migration[6.0]
  def self.up
    change_table :docteurs do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :docteurs, :image
  end
end
