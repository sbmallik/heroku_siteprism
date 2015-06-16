class DetailsPage < SitePrism::Page

	element :add_to_cart, "input[value = 'Adopt Me!']"

	def start_checkout
		self.add_to_cart.click
		ShoppingCartPage.new
	end

end
