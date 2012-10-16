module SignaturesHelper
	def last
		return Signature.last.total
	end
	
	
	def test
		Signature.find_by_remember_token(current_user.remember_token).present?
	end
	
end