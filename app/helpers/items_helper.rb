module ItemsHelper

def additem(item)
		current_user.create_cart
		current_user.cart.item1 = item.id
		current_user.cart.number1 = 4
		current_user.cart.save
end
def additem2(item)
		current_user.cart.item1 = item.id
		current_user.cart.save
end


def newitems(user)
	user.itempairs.build
end


end
