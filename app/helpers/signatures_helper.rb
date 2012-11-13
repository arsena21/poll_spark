module SignaturesHelper
	def last
		return Signature.last.total
	end
	
	
	def test
		Signature.find_by_remember_token(current_user.remember_token).present?
	end
	
	def find
		@petitions = Petition.find(:all)
		@petitions.each do |petition| 
			if petition.pass == "pass"
			if petition.launched == "yes"
				return petition
				
			end	
			end
		end	
	end
	
  # this method will embed the code from the partial
  def youtube_video(url)
    render :partial => 'shared/video', :locals => { :url => url }
  end 
  
  def signature(user)
    user.signer = "yes"
	user.save
  end  
  
    def shared(friendsdone)
    current_user.shares = friendsdone
	current_user.save
  end 
  
end