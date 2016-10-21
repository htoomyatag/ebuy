class LineItem < ActiveRecord::Base

	belongs_to :product
	belongs_to :cart

	def total_price
		product.discount_price.to_i * quantity
	end

	





end
