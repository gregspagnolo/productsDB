require 'rails_helper'

RSpec.describe 'listing products' do
	it 'displays list of products' do
		c = Category.create(name: "Footwear")
		c.products.create(name: "Shoe", description: "Walking", price: 10.00)
		visit "/"
		expect(page).to have_text("Shoe")
		expect(page).to have_text("Footwear")
		expect(page).to have_text("10.00")
		expect(page).to have_text("Walking")
	end
end