class AddAttachmentPictureToMotorcycles < ActiveRecord::Migration
  def self.up
    change_table :motorcycles do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :motorcycles, :picture
  end
end
