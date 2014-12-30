class AddAttachmentAvatarToPublicGroups < ActiveRecord::Migration
  def self.up
    change_table :public_groups do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :public_groups, :avatar
  end
end
