class Product < ActiveRecord::Base
	belongs_to :category
	validates :name, :description, :price,  presence: true
end
