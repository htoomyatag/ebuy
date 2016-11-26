class FrontendsController < ApplicationController
  before_action :set_frontend, only: [:show, :edit, :update, :destroy]

  # GET /frontends
  # GET /frontends.json

  def my_wishlist
        @wish_lists = WishList.where(:buyer_id => current_buyer.id)
  end

  def my_coupon
        @coupons = Coupon.all
  end

  def fill_your_order_form
         @product = Product.find(params[:id])
  end


  def product_detail_mobiview
     @product = Product.find(params[:id])
  end

  def customer_review_mobiview
     @product = Product.find(params[:id])
     
      @comment = Comment.new
      @comments = Comment.where(:product_id => @product.id)
  end

  def productqanda_mobiview
     @product = Product.find(params[:id])
  end

  def notice_mobiview
     @product = Product.find(params[:id])
  end


  def submit_online_payment

  
  
      if params[:cart_id]
         @line_items = LineItem.where("cart_id = ? ", params[:cart_id])
      end
     
   # order number
   @myorder_number = Order.maximum(:id)
   if @myorder_number.nil?
      @order_number =  13
   else
      @order_number = Order.maximum(:id) + 1
   end

   #product description
   @my_product_desc = params[:product_name].to_s;
   #product_price
      @total = params[:total_price];
      if @total.to_s.length == 1
        @concattotal = "000000000" + @total.to_s
      elsif @total.to_s.length == 2
        @concattotal = "00000000" + @total.to_s
      elsif @total.to_s.length == 3
        @concattotal = "0000000" + @total.to_s
      elsif @total.to_s.length == 4
        @concattotal = "000000" + @total.to_s
      elsif @total.to_s.length == 5
        @concattotal = "00000" + @total.to_s
      elsif @total.to_s.length == 6
        @concattotal = "0000" + @total.to_s
      elsif @total.to_s.length == 7
        @concattotal = "000" + @total.to_s
      elsif @total.to_s.length == 8
        @concattotal = "00" + @total.to_s
      elsif @total.to_s.length == 9
        @concattotal = "0" + @total.to_s
      elsif @total.to_s.length == 10
        @concattotal = @total.to_s
      end


    #address
    @address = params[:customer_phone].to_s+params[:customer_house].to_s+params[:customer_township].to_s+params[:customer_city].to_s;

    @personal = params[:customer_name].to_s;
                
    
      key = 'ROHBJXV0BZM1SRXJQXACQM0HI22QBYGX';
      @merchant_id = "208104000702167";

      @invoice_no = "eBuyMyanmar"+Date.today.strftime("%d%m%y")+@order_number.to_s;

      @product_desc = @my_product_desc;

      @amount =  @concattotal.to_s+"00";
      @currency_code = "104";
      @user_defined_1 = @address;
      @user_defined_2 = @personal;
      @user_defined_3 = params[:customer_email].to_s;


      @tmp_data = [@merchant_id,@invoice_no,@product_desc,@amount,@currency_code,@user_defined_1,@user_defined_2,@user_defined_3]
      puts "aaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      puts @tmp_data
      @thisaok = @tmp_data.sort
      @myaok = @thisaok.to_s.gsub('"', " ").gsub(',', "").gsub('[', "").gsub(']', "").gsub(' ', "")

      digest = OpenSSL::Digest.new('sha1')
      hmac = OpenSSL::HMAC.hexdigest(digest, key, @myaok)
      @aok = hmac







  end

  def add_to_wish_list
      WishList.create(:product_name => params[:product_name], :product_id => params[:product_id], :buyer_id => current_buyer.id)
      redirect_to request.referer

  end

  def order_form
    @order = Order.new
    @coupons = Coupon.all
    if params[:cart_id]
         @line_items = LineItem.where("cart_id = ? ", params[:cart_id])
    end
  end
  
  def use_coupon

    @raw_coupon = Coupon.where("title = ?", params[:title]).where("limitation > ?", params[:limitation]).pluck(:discount_percentage)
    render :text => {:discount_price => @raw_coupon }
# date filter sat yay yan
  end





  def check_out
      @order = Order.new
   end

  def product_info


     @product = Product.find(params[:id])
     @first_authentic_products = Product.where(:product_category => "AuthenticBrandZone").last(6)
     @second_authentic_products = Product.where(:product_category => "AuthenticBrandZone").where.not(id: 1).limit(6) 


      @comment = Comment.new
      @comments = Comment.where(:product_id => @product.id)


  end

  def view_image
     @product = Product.find(params[:id])
  end


  def my_account

  end


  def career_opportunity

  end


  def termns_and_condition

  end

  def privacy_policy

  end


  def how_to_buy

  end

  def payment

  end

  def shipment_delivery

  end

  def customer_feedback

  end

  def search_result
        if !params[:title].nil?
        @products = Product.where("title LIKE ?", params[:title]).limit(10) 
        elsif !params[:price_from].nil?
        @products = Product.where(:discount_price => params[:price_from]..params[:price_to]).limit(10) 
        end

  end

  
  def about_us

  end

  def contact_us

  end

  def help

  end

  def index
    @frontends = Frontend.all
  end

  def home
     @first_authentic_products = Product.where(:product_category => "AuthenticBrandZone").last(6)
     @second_authentic_products = Product.where(:product_category => "AuthenticBrandZone").where.not(id: 1).limit(6) 
 

     @first_women_fashion_products = Product.where(:product_category => "WomenFashion").last(6)
     @second_women_fashion_products = Product.where(:product_category => "WomenFashion").where.not(id: 1).limit(6) 

     @first_men_fashion_products = Product.where(:product_category => "MenFashion").last(6)
     @second_men_fashion_products = Product.where(:product_category => "MenFashion").where.not(id: 1).limit(6) 

     @first_digital_marketings = Product.where(:product_category => "Digital&Mobile").last(6)
     @second_digital_marketings = Product.where(:product_category => "Digital&Mobile").where.not(id: 1).limit(6) 

     @first_home_livings = Product.where(:product_category => "Home&Living").last(6)
     @second_home_livings = Product.where(:product_category => "Home&Living").where.not(id: 1).limit(6) 

     @first_health_beauty = Product.where(:product_category => "Health&Beauty").last(6)
     @second_health_beauty = Product.where(:product_category => "Health&Beauty").where.not(id: 1).limit(6) 

     @first_food_beverage = Product.where(:product_category => "Food&Beverage").last(6)
     @second_food_beverage = Product.where(:product_category => "Food&Beverage").where.not(id: 1).limit(6) 


  end

  # GET /frontends/1
  # GET /frontends/1.json
  def show
  end

  # GET /frontends/new
  def new
    @frontend = Frontend.new
  end

  # GET /frontends/1/edit
  def edit
  end

  # POST /frontends
  # POST /frontends.json
  def create
    @frontend = Frontend.new(frontend_params)

    respond_to do |format|
      if @frontend.save
        format.html { redirect_to @frontend, notice: 'Frontend was successfully created.' }
        format.json { render :show, status: :created, location: @frontend }
      else
        format.html { render :new }
        format.json { render json: @frontend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frontends/1
  # PATCH/PUT /frontends/1.json
  def update
    respond_to do |format|
      if @frontend.update(frontend_params)
        format.html { redirect_to @frontend, notice: 'Frontend was successfully updated.' }
        format.json { render :show, status: :ok, location: @frontend }
      else
        format.html { render :edit }
        format.json { render json: @frontend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frontends/1
  # DELETE /frontends/1.json
  def destroy
    @frontend.destroy
    respond_to do |format|
      format.html { redirect_to frontends_url, notice: 'Frontend was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frontend
      @frontend = Frontend.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def frontend_params
      params.fetch(:frontend, {})
    end
end
