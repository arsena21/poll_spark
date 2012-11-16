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
	
	def notpetitioner(user)
		user.petitioner = "no"	
		user.save!
	end 	
	
	def updating(user)
		user[0].petitioner = "no"
		user[0].petition_id = ""
		user[0].save!
	end
	
	
	
end
