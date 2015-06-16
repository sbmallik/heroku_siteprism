Given(/^I am on the puppy adoption site$/) do
	@home_page = Home.new
	@home_page.load
end

When(/^I click the view details button for "([^"]*)"$/) do | name |
	@detailsPage = @home_page.select_puppy
end

When(/^I click the adopt me button$/) do
    @shoppingCartPage = @detailsPage.start_checkout
end

When(/^I click the complete the adoption button$/) do
    @checkoutPage = @shoppingCartPage.go_to_checkout
end

When(/^I enter "([^"]*)" in the name field$/) do | name |
    @checkoutPage.name.set name
end

When(/^I enter "([^"]*)" in the address field$/) do | address |
	@checkoutPage.address.set address
end

When(/^I enter "([^"]*)" in the email field$/) do | email |
	@checkoutPage.email.set email
end

When(/^I select "([^"]*)" from the pay type dropdown$/) do | pay_type |
	@checkoutPage.pay_type.select pay_type
end

When(/^I click the Place Order button$/) do
	@checkoutPage.place_order.click
end

Then(/^I should see "([^"]*)"$/) do | message |
    expect(page).to have_text message
end
