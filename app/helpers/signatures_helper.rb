module SignaturesHelper
	def last
		return Signature.last.total
	end

	def uptotal(signatur)
		signatur.total = 2
		signatur.save
	end
	
end
