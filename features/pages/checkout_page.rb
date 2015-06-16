class CheckoutPage < SitePrism::Page

	element :name, "input[id = 'order_name']"
	element :address, "textarea[id = 'order_address']"
	element :email, "input[id = 'order_email']"
	element :pay_type, "select[id = 'order_pay_type']"
	element :place_order, "input[value = 'Place Order']"

end
