class LineItemsController < ApplicationController
  before_action :set_line_item, only: [:show, :edit, :update, :destroy]

  # GET /line_items
  # GET /line_items.json
  def index
    @line_items = LineItem.all
  end

  # GET /line_items/1
  # GET /line_items/1.json
  def show
  end

  # GET /line_items/new
  def new
    @line_item = LineItem.new
  end

  # GET /line_items/1/edit
  def edit
  end

  # POST /line_items
  # POST /line_items.json

  def round_up(number)




length = (number.to_s).length
my_length = length-3
  first_three_number = (number.to_s).first(my_length).to_s
  last_three_number = (number.to_s).last(3).to_s


      if 500 <= last_three_number.to_i

        myfirst_three_number = first_three_number.to_i+1
        $product_price = myfirst_three_number.to_s+"000"

      elsif 500 > last_three_number.to_i


          myfirst_three_number = first_three_number.to_i
          $product_price = myfirst_three_number.to_s+"000"

      end

   
    
  end

  def create
      @cart = current_cart
      product = Product.find(params[:product_id])
      color = params[:product_color]
      delivery_method = params[:delivery_method]
      size = params[:product_size]
      quantity = params[:product_quantity].to_i
      product_model = params[:product_model]
      @line_item = @cart.add_item(product.id,size,color,delivery_method,quantity,product_model)
      respond_to do |format|
            if @line_item.save
              format.html { redirect_to request.referer }
              format.xml { render :xml => @line_item, :status => :created, :location => @line_item }
            else
              format.html { render :action => "new" }
              format.xml { render :xml => @line_item.errors, :status => :unprocessable_entity }
            end
        end
   end

  def cart_item
      
      @coupons = Coupon.all


      if params[:cart_id]
         @line_items = LineItem.where("cart_id = ? ", params[:cart_id])
      end

  end

   




  # PATCH/PUT /line_items/1
  # PATCH/PUT /line_items/1.json
  def update
    respond_to do |format|
      if @line_item.update(line_item_params)
        format.html { redirect_to @line_item, notice: 'Line item was successfully updated.' }
        format.json { render :show, status: :ok, location: @line_item }
      else
        format.html { render :edit }
        format.json { render json: @line_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line_items/1
  # DELETE /line_items/1.json
  def destroy
    @line_item.destroy
    respond_to do |format|
      format.html { redirect_to request.referer, notice: 'Line item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_item
      @line_item = LineItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def line_item_params
      params.require(:line_item).permit(:product_model,:product_id, :cart_id, :buyer_id, :quantity, :product_size, :product_color, :delivery_method)
    end
end
