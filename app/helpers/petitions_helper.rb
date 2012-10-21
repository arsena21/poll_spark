module PetitionsHelper

	def uprating(petition)
		petition.rating += 1
		petition.save!
	end
		
	  def change_user_status(user)
		user.petitioner = "yes"
		user.save
	  end
	  
	  def user_petition_save(user)
		user.petition_id = @petition.id
		user.save
	  end	  
	  
end
