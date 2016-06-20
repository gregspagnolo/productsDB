require 'rails_helper'

RSpec.describe "editing product" do
	it 'should display the form with all the populated data' do
		product = Product.create(name: "Product1", description: "Product1 description", price: 100)
		visit "/"
		click_link "mode_edit"
		expect(current_path).to eq("/products/#{product.id}/edit")
		expect(find_field("Name").value).to eq(product.name)
		expect(find_field("Description").value).to eq(product.description)
		expect(find_field("Price").value).to eq("#{product.price}")
	end
end