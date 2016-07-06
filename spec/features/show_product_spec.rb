require 'rails_helper'

RSpec.describe "show products page" do
	it 'displays all the information about the product' do
		category = Category.create(name: "Category")
		product = category.products.create(name: "Product1", description: "Product1 description", price: 100.0)
		visit "/"
		click_link "visibility"
		expect(current_path).to eq("/products/#{product.id}")
		expect(page).to have_text("Product1")
		expect(page).to have_text("Product1 description")
		expect(page).to have_text("Category")
		expect(page).to have_text("100.0")
	end
end