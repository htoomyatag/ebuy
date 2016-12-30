class LineItem < ActiveRecord::Base

	belongs_to :product
	belongs_to :cart




		 # def total_price

		 # 	@currency_exchange = CurrencyExchange.pluck(:currency_rate).last
	 	# 	number = product.discount_price.to_i * @currency_exchange.to_i
		 #    last_three_number = (number.to_s).last(3).to_s
		 #    mylast_fourth_number = (number.to_s).last(4).to_s
		 #    fourth_number = (number.to_s).last(4).to_s.first

	
		    
		 #    if 500 <= last_three_number.to_i

		    
		 #      last_fourth_number = fourth_number.to_i+1
		 #      fourth_number = last_fourth_number.to_s+"000"
		 #      product_price = (number.to_s).gsub(mylast_fourth_number,fourth_number)

		 #      product_price.to_i * quantity 

		   

		 #    elsif 500 > last_three_number.to_i

		 #      last_fourth_number = fourth_number.to_i
		 #      fourth_number = last_fourth_number.to_s+"000"
		 #      product_price = (number.to_s).gsub(mylast_fourth_number,fourth_number)
		  
		 #      product_price.to_i * quantity


		 #    else
		 #    end
		   
    
   #      end


        def total_price

	          @currency_exchange = CurrencyExchange.pluck(:currency_rate).last
		 	  number = product.discount_price.to_i * @currency_exchange.to_i
			  length = (number.to_s).length
			  my_length = length-3
			  first_three_number = (number.to_s).first(my_length).to_s
			  last_three_number = (number.to_s).last(3).to_s


			      if 500 <= last_three_number.to_i

			        myfirst_three_number = first_three_number.to_i+1
			        product_price = myfirst_three_number.to_s+"000"
			        product_price.to_i * quantity 

			      elsif 500 > last_three_number.to_i


			          myfirst_three_number = first_three_number.to_i
			          product_price = myfirst_three_number.to_s+"000"
			          product_price.to_i * quantity 

			      end




        end

	





end
