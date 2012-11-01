class Item < ActiveRecord::Base
	belongs_to :petitions
	mount_uploader :pictures, AvatarUploader
	
	attr_accessible :cost, :name, :petition_id, :pictures
end
