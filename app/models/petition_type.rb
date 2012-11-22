class PetitionType < ActiveRecord::Base
	belongs_to :petition
	
	
	attr_accessible :book, :fitness, :food, :fun, :home, :petitionid
	
	
	
	
end
