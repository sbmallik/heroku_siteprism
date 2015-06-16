class ShoppingCartPage < SitePrism::Page

	element :continue_shopping, "input[value = 'Adopt Another Puppy']"
	element :proceed_to_checkout, "input[value = 'Complete the Adoption']"

	def go_to_checkout
		self.proceed_to_checkout.click
		CheckoutPage.new
	end

end
