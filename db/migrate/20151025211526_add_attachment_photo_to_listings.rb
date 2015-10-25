class AddAttachmentPhotoToListings < ActiveRecord::Migration
  def self.up
    change_table :listings do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :listings, :photo
  end
end
