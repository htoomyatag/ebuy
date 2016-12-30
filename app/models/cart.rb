class Cart < ActiveRecord::Base

	has_many :line_items, :dependent => :destroy

	def add_item(product_id,size,color,delivery_method,quantity,product_model)
		current_item = line_items.where(:product_id => product_id).first
		# if current_item
		# 	current_item.quantity += 1
		# else
			current_item = LineItem.new(:product_id=> product_id,:product_size => size,:product_color => color,:delivery_method => delivery_method,:quantity => quantity.to_i, :product_model => product_model)
			line_items << current_item
		# end
		# current_item
	end


	def total_price
		line_items.to_a.sum { |product| product.total_price }
	end

    def total_quantity
		line_items.to_a.sum { |product| product.quantity }
	end

	



end
