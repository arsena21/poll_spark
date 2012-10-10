module PetitionsHelper

	def uprating(petition)
		petition.rating += 1
		petition.save
	end
		

end
