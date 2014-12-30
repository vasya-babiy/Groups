class AddAttachmentAvatarToPrivateGroups < ActiveRecord::Migration
  def self.up
    change_table :private_groups do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :private_groups, :avatar
  end
end
