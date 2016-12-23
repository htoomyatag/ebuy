class RequestProductsController < ApplicationController
  before_action :set_request_product, only: [:show, :edit, :update, :destroy]

  # GET /request_products
  # GET /request_products.json
  def index
    @request_products = RequestProduct.all
  end

  def thanks_for_request

  end

  # GET /request_products/1
  # GET /request_products/1.json
  def show
  end

  # GET /request_products/new
  def new
    @request_product = RequestProduct.new
  end

  # GET /request_products/1/edit
  def edit
  end

  # POST /request_products
  # POST /request_products.json
  def create
    @request_product = RequestProduct.new(request_product_params)

    respond_to do |format|
      if @request_product.save
        format.html { redirect_to thanks_for_request_path, notice: 'Request product was successfully created.' }
        format.json { render :show, status: :created, location: @request_product }
      else
        format.html { render :new }
        format.json { render json: @request_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /request_products/1
  # PATCH/PUT /request_products/1.json
  def update
    respond_to do |format|
      if @request_product.update(request_product_params)
        format.html { redirect_to @request_product, notice: 'Request product was successfully updated.' }
        format.json { render :show, status: :ok, location: @request_product }
      else
        format.html { render :edit }
        format.json { render json: @request_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /request_products/1
  # DELETE /request_products/1.json
  def destroy
    @request_product.destroy
    respond_to do |format|
      format.html { redirect_to other_request_products_path, notice: 'Request product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request_product
      @request_product = RequestProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_product_params
      params.require(:request_product).permit(:title, :actual_price, :discount_price, :quantity, :specs, :product_category, :pick_up, :ebuy_delivery, :delivery_time, :start_to_sell_on)
    end
end
