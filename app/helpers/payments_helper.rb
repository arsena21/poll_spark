module PaymentsHelper


	def paying(items)
		items.each do |i| 
			i.paid = "yes"
			i.save
		end
	end
	
	
end
