class Item < ActiveRecord::Base
	belongs_to :petitions
	attr_accessible :cost, :name, :petition_id
end
