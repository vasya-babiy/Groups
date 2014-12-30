class CreatePrivateGroups < ActiveRecord::Migration
  def change
    create_table :private_groups do |t|
      t.string :name

      t.timestamps
    end
  end
end
