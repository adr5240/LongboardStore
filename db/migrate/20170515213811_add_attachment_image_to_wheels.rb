class AddAttachmentImageToWheels < ActiveRecord::Migration
  def self.up
    change_table :wheels do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :wheels, :image
  end
end
