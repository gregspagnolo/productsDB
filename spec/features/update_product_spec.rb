require 'rails_helper'

RSpec.describe "updating product" do
	it 'should update the product and redirect to the product page' do
		product = Product.create(name: "Product1", description: "Product1 description", price: 100)
		visit "/"
		click_link "mode_edit"
		fill_in "name", with: "Product2"
		click_button 'Update'
		expect(current_path).to eq("/")
		expect(page).to have_text("Product2")
	end
end