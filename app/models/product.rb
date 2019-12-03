class Product < ApplicationRecord
	require 'csv'
	validates :stock_number, :part_number, :num, :product_category, :stock_description1, :part_category, :stock_description2, :stock_description3, :unit, :pricing_method, :level1_price_mult, :level2_price_mult, :level3_price_mult, :level4_price_mult, :level5_price_mult, :special_mult, :last_cost, :quantity_on_hand, presence: true, allow_nil: true, allow_blank: true

	def self.import(file)
		CSV.foreach(file.path, { encoding: "UTF-8", headers: true, header_converters: :symbol, converters: :all}) do |row|
			if Product.exists?(stock_number: row[:stock_number])
				puts 'this product already exists'
			else
				Product.create! row.to_hash
			end
		end
	end
end