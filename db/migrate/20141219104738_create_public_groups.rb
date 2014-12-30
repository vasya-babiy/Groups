class CreatePublicGroups < ActiveRecord::Migration
  def change
    create_table :public_groups do |t|
      t.string :name

      t.timestamps
    end
  end
end
