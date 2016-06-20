require 'rails_helper'

RSpec.describe "create new products page" do
	before do
		visit 'products/new'
	end
	it 'creates a new product and redirects to product page' do
		fill_in "Name", with: "Product1"
		fill_in "Description", with: "Product 1 Description"
		fill_in "Price", with: "20.00"
		click_button "Create"
		expect(current_path).to eq("/")
		expect(page).to have_text("Product1")
	end

	it 'returns to the new products page if does not pass validations' do
		click_button 'Create'
		expect(current_path).to eq("/products/new")
		expect(page).to have_text("Name can't be blank")
		expect(page).to have_text("Description can't be blank")
		expect(page).to have_text("Price can't be blank")
	end
end