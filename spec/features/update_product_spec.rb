require 'rails_helper'

RSpec.describe "updating product" do
	it 'should update the product and redirect to the product page' do
		category = Category.create(name: "Category1")
		category2 = Category.create(name: "Category2")
		product = category.products.create(name: "Product1", description: "Product1 description", price: 100)
		visit "/"
		click_link "mode_edit"
		fill_in "name", with: "Product2"
		page.select "category2", from: "product[category_id]"
		click_button 'Update'
		expect(current_path).to eq("/")
		expect(page).to have_text("Product2")
		expect(page).to have_text("Category2")
	end
end