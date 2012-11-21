class Vote < ActiveRecord::Base
	belongs_to :user
	
	attr_accessible :user_id, :vote1, :vote2, :vote3
end
