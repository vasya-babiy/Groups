class Picture < ActiveRecord::Base
  attr_accessible :imageable_id, :imageable_type, :name, :photo
  belongs_to :imageable, polymorphic: true
  has_attached_file :photo
end
