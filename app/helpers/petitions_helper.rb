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
		if current_user.vote.vote2.nil? 
			current_user.vote.vote2 = petition.id
			current_user.vote.save
			return
		end
		if current_user.vote.vote3.nil? 
			current_user.vote.vote3 = petition.id
			current_user.vote.save
			return
		end	
		if current_user.vote.vote1.nil? 
			current_user.vote.vote1 = petition.id
			current_user.vote.save
			return
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
	user.votesleft += 1
	user.save
	end
	
	def downvote(petitionvotes)
		petitionvotes -= 1
		petitionvotes.save!
	end
	
	def updati(petition)
		petition.rating -= 1
		petition.save!
	end		
	
	def deleting1(vote)
		vote.vote1 = ""
		vote.save!
	end	
	def deleting2(vote)
		vote.vote2 = ""
		vote.save!
	end	
	def deleting3(vote)
		vote.vote3 = ""
		vote.save!
	end		
end
