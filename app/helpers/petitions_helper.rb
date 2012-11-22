module PetitionsHelper

	def uprating(petition)
		petition.rating += 1
		petition.save!
	end
	
	def record(petition)
		current_user.create_vote
		current_user.vote.vote1 = @petition.id
		current_user.vote.save
	end	
	
	def record2(petition)
		if current_user.votesleft == 2
			current_user.vote.vote2 = @petition.id
			current_user.vote.save
		else
			current_user.vote.vote3 = @petition.id
			current_user.vote.save
		end	
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
	
	  def votes_left(user)
		user.votesleft
	end
 
	def votesdown(user)
		user.votesleft -= 1
		user.save!
	end
	
	def change(user)
	user.votesleft = 3
	user.save
	end
	
	def downvote(petitionvotes)
		petitionvotes -= 1
		petitionvotes.save!
	end
	
end
