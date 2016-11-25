class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  layout "backend"
  # GET /products
  # GET /products.json
  def index
    
     if !params[:product_title].nil? && params[:product_category] == ""
        @products = Product.where("title LIKE ?", params[:product_title]).all
     elsif params[:product_title] == "" && !params[:product_category].nil?
        @products = Product.where("product_category LIKE ?", params[:product_category]).all
     elsif !params[:product_category].nil? && !params[:product_category].nil?
        @products = Product.where("product_category LIKE ?", params[:product_category]).where("title LIKE ?", params[:product_title]).all
     else 
        @products = Product.all
     end


  end




  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit

  respond_to do |format|
  if @product.save
    format.html { render :edit }
    format.js {render layout: false}
  end
end
end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:description, :notice, :product_code_1,:product_code_2,:product_code_3,:product_code_4,:product_code_5,:other_avatar1,:other_avatar2,:other_avatar3,:other_avatar4,:other_avatar5,:avatar1,:avatar2,:avatar3,:avatar4,:avatar5,:product_subcategory, :end_on, :product_size, :product_color, :delivery_rate, :product_video,:start_to_sell_on, :delivery_time,:pick_up, :ebuy_delivery,:product_category, :title, :actual_price, :discount_price, :quantity, specsq: [], specsa: [], question: [], answer: [])
    end
end




      

