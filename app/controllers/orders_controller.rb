class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  layout "backend"
  before_filter :authenticate_admin!, except: [:create]
  # GET /orders
  # GET /orders.json
  def index
    if !params[:payment_type].nil?
    @orders = Order.where(:payment_type => params[:payment_type])
    else
    @orders = Order.all
    end
  end


  def order_complete

  end



   



   



  # GET /orders/1
  # GET /orders/1.json
  def show

      if !@order.cart_id.nil?
         @line_items = LineItem.where("cart_id = ? ", @order.cart_id)
      end

  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:delivery_method, :product_quantity, :product_model,:guest, :buyer_id,:buyer_name,:buyer_email,:buyer_phone,:buyer_township,:buyer_city ,:buyer_address,:cart_id,:product_name,:product_size,:product_color,:product_message ,:order_status,:payment_type)
    end
end
