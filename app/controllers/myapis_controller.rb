class MyapisController < ApplicationController
  before_action :set_myapi, only: [:show, :edit, :update, :destroy]
protect_from_forgery with: :null_session
  # GET /myapis
  # GET /myapis.json

  #http://localhost:3000/product_by_category.txt?category=AuthenticBrandZone
  def product_by_category

    @products = Product.where(:product_category => params[:category])
    respond_to do |format|
          my_primary_json = {:product => @products.to_json(:only => [:id, :short_title,:discount_price], :methods => [:avatar1])}
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
   end

  #http://localhost:3000/product_by_id.txt?id=10&category=AuthenticBrandZone
  def product_by_id

    @products = Product.where(:id => params[:id])
    @comments = Comment.where(:product_id => params[:id])
    @related_products = Product.where.not(:id => params[:id]).where(:product_category => params[:category])
    respond_to do |format|
          my_primary_json = {:product => @products.to_json(
            :only => [
                          :id,
                          :description, 
                          :notice,
                          :product_size, 
                          :product_color, 
                          :delivery_rate, 
                          :product_video,
                          :delivery_time,
                          :pick_up, 
                          :ebuy_delivery,
                          :product_category, 
                          :title,
                          :actual_price, 
                          :discount_price,
                          :quantity,
                          :specsq,
                          :specsa, 
                          :question, 
                          :answer
                      ], :methods => [:avatar1,:avatar2,:avatar3,:avatar4,:avatar5]),
          :customer_review => @comments.to_json(:only => [:buyer_name, :buyer_comment]),
          :related_product => @related_products.to_json(:only => [:id, :short_title, :discount_price], :methods => [:avatar1])

        }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
   end


# http://localhost:3000/all_products.txt
  def all_products

    @products = Product.all
    @cover_images = CoverImage.all

    respond_to do |format|
          my_primary_json = {:product => @products.to_json(:only => [:id, :short_title,:discount_price], :methods => [:avatar1]),
                             :advertisement => @cover_images.to_json(:only  => [:id],:methods => [:cover_photo])
          }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
   end


   #http://localhost:3000/customer_review?product_name=productname&buyer_comment=buyercomment&product_id=1&buyer_name=htoomyat
   def customer_review
        
        @get_buyer_name = Buyer.where(:buyer_name => params[:buyer_name]).pluck(:id)
        @buyer_id = @get_buyer_name.to_s.gsub("[","").gsub("]","")
       
        @customer_review = Comment.new(:product_name => params[:product_name], :buyer_comment => params[:buyer_comment], :buyer_id => @buyer_id, :product_id => params[:product_id], :buyer_name => params[:buyer_name])
        @customer_review.save

  end

#http://localhost:3000/my_info.txt?buyer_id=1
  def my_info

    @buyers = Buyer.where(:id => params[:buyer_id])
    respond_to do |format|
          my_primary_json = @buyers.to_json(:only => [:id, :buyer_name,:buyer_phone,:buyer_township,:buyer_address])
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end


 #http://localhost:3000/edit_my_info?buyer_id=1&new_buyer_name=kohtoomyataung&new_buyer_phone=0934453&new_buyer_township=haing&new_buyer_address=kan street&email=htoomyatmyat@gmail.com&password=123321&password_confirmation=123321
  def edit_my_info

     @edit_info = Buyer.find(params[:buyer_id])
     @edit_info.update(
          :buyer_name => params[:new_buyer_name],
          :buyer_phone  => params[:new_buyer_phone],
          :buyer_township => params[:new_buyer_township],
          :buyer_address => params[:new_buyer_address],
          :email => params[:email],
          :password => params[:password],
          :password_confirmation => params[:password]
      )
  end


#http://localhost:3000/my_shoppinglist.txt?buyer_id=1
  def my_shoppinglist

    @orders = Order.where(:buyer_id => params[:buyer_id])
    respond_to do |format|
          my_primary_json = @orders.to_json(:only => [
                                              :id, 
                                              :buyer_name,
                                              :buyer_email,
                                              :buyer_phone,
                                              :buyer_address,
                                              :buyer_township,
                                              :buyer_city,
                                              :payment_type,
                                              :order_status
                            ])
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end

  end

#http://localhost:3000/my_wish_list.txt?buyer_id=1
  def my_wish_list

    @orders = WishList.where(:buyer_id => params[:buyer_id])
    respond_to do |format|
          my_primary_json = @orders.to_json(:only => [
                                              :id, 
                                              :product_name
                            ])
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end

  end


#http://localhost:3000/my_coupon_list.txt
def my_coupon_list

    @orders = Coupon.all
    respond_to do |format|
          my_primary_json = @orders.to_json(:only => [
                                              :id, 
                                              :title,
                                              :expire_date,
                                              :limitation
                                          ])
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end

  end


#http://localhost:3000/myorder_list.txt?buyer_id=1
def myorder_list

   @orders = Order.where(:buyer_id => params[:buyer_id]).where(:order_status => "paid")
    respond_to do |format|
          my_primary_json = @orders.to_json(:only => [
                                              :id, 
                                              :buyer_name,
                                              :buyer_email,
                                              :buyer_phone,
                                              :buyer_address,
                                              :buyer_township,
                                              :buyer_city,
                                              :payment_type,
                                              :order_status
                            ])
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end

  end


#http://localhost:3000/mycancel_list.txt?buyer_id=1
def mycancel_list

   @orders = Order.where(:buyer_id => params[:buyer_id]).where(:order_status => "order_cancel")

    respond_to do |format|
          my_primary_json = @orders.to_json(:only => [
                                              :id, 
                                              :buyer_name,
                                              :buyer_email,
                                              :buyer_phone,
                                              :buyer_address,
                                              :buyer_township,
                                              :buyer_city,
                                              :payment_type,
                                              :order_status
                            ])
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end

  end




#http://localhost:3000/mycart_list_by_buyer_id.txt?buyer_id=1
def mycart_list_by_buyer_id

   @orders = LineItem.where("buyer_id = ? ", params[:buyer_id])

   respond_to do |format|
      
          my_primary_json = {:cart => @orders.to_json(
                      :only => [
                                  :product_id,
                                  :cart_id,
                                  :buyer_id,
                                  :quantity,
                                  :product_size,
                                  :product_color,
                                  :delivery_method,
                                  :product_model
                                ])
                  }

          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end

  end



#http://localhost:3000/mycart_list_by_cart_key.txt?cart_key=123
def mycart_list_by_cart_key

   @orders = LineItem.where("cart_key = ? ", params[:cart_key])

    respond_to do |format|
      
          my_primary_json = {:cart => @orders.to_json(
                      :only => [
                                  :product_id,
                                  :cart_id,
                                  :buyer_id,
                                  :quantity,
                                  :product_size,
                                  :product_color,
                                  :delivery_method,
                                  :product_model
                                ])
                  }

          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end

  end




  def add_to_cart_mobi
        
      @cart = current_cart_mobi
      puts "xxxxxxxxxxxxxxxxxxxxxxxxxxx"+@cart.to_s+"yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy"
      
      
      product = Product.find(params[:product_id])
      color = params[:product_color]
      delivery_method = params[:delivery_method]
      size = params[:product_size]
      quantity = params[:product_quantity].to_i
      product_model = params[:product_model]
      buyer_id = params[:buyer_id]

      @line_item = @cart.add_item_mobi(product.id,size,color,delivery_method,quantity,product_model,buyer_id)
     
   end


  def add_to_cart_mobi_with_key
        
      
      if params[:cart_key] == ""
            @cart = current_cart_mobi
            cart_key = Random.rand(1001...2001) 
            puts "xxxxxxxxxxxxxxxxxxxxxxxxxxx"+@cart.to_s+"yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy"
            
            
            product = Product.find(params[:product_id])
            color = params[:product_color]
            delivery_method = params[:delivery_method]
            size = params[:product_size]
            quantity = params[:product_quantity].to_i
            product_model = params[:product_model]
           

            @line_item = @cart.add_item_mobi_with_key(product.id,size,color,delivery_method,quantity,product_model,cart_key)
            render :json => { :success => true, :key => cart_key}

      else

            @cart = current_cart_mobi
            cart_key = params[:cart_key]
            puts "xxxxxxxxxxxxxxxxxxxxxxxxxxx"+@cart.to_s+"yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy"
            
            
            product = Product.find(params[:product_id])
            color = params[:product_color]
            delivery_method = params[:delivery_method]
            size = params[:product_size]
            quantity = params[:product_quantity].to_i
            product_model = params[:product_model]
           

            @line_item = @cart.add_item_mobi_with_key(product.id,size,color,delivery_method,quantity,product_model,cart_key)
            render :json => { :success => true, :key => cart_key}


      end

            
   end

   #http://localhost:3000/delete_cart
   def delete_cart
    
      @line_items = LineItem.where(:cart_id => params[:cart_id])
      @line_items.each do |line_item|
            line_item.destroy
      end


     @carts = Cart.where(:id => params[:cart_id])
     @carts.each do |cart|
            cart.destroy
      end

      render :json => { :success => true}
   

   end




  def index
    @myapis = Myapi.all
  end

  # GET /myapis/1
  # GET /myapis/1.json
  def show
  end

  # GET /myapis/new
  def new
    @myapi = Myapi.new
  end

  # GET /myapis/1/edit
  def edit
  end

  # POST /myapis
  # POST /myapis.json
  def create
    @myapi = Myapi.new(myapi_params)

    respond_to do |format|
      if @myapi.save
        format.html { redirect_to @myapi, notice: 'Myapi was successfully created.' }
        format.json { render :show, status: :created, location: @myapi }
      else
        format.html { render :new }
        format.json { render json: @myapi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myapis/1
  # PATCH/PUT /myapis/1.json
  def update
    respond_to do |format|
      if @myapi.update(myapi_params)
        format.html { redirect_to @myapi, notice: 'Myapi was successfully updated.' }
        format.json { render :show, status: :ok, location: @myapi }
      else
        format.html { render :edit }
        format.json { render json: @myapi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myapis/1
  # DELETE /myapis/1.json
  def destroy
    @myapi.destroy
    respond_to do |format|
      format.html { redirect_to myapis_url, notice: 'Myapi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myapi
      @myapi = Myapi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def myapi_params
      params.fetch(:myapi, {})
    end
end
