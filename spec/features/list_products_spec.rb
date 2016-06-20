require 'rails_helper'

RSpec.describe 'listing products' do
	it 'displays list of products' do
		product = Product.create(name:"Shoe", description:"Walking", price: 10.00, category_id: 6)
		product = Product.create(name:"Boots", description:"Running", price: 20.00, category_id: 6)
		visit "/"
		expect(page).to have_text("Shoe")
		expect(page).to have_text("10.00")
		expect(page).to have_text("Boots")
		expect(page).to have_text("20.00")
	end
end