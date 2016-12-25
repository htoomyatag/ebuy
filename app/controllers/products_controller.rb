class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  layout "backend"
  before_filter :authenticate_admin!, except: [:create]
  # GET /products
  # GET /products.json
  def index
    
     if !params[:product_title].nil? && params[:product_category] == ""
        @products = Product.where("title LIKE ?", params[:product_title]).all
     elsif params[:product_title] == "" && !params[:product_category].nil?
        @products = Product.where("product_category LIKE ?", params[:product_category]).all
     elsif !params[:product_category].nil? && !params[:product_category].nil?
        @products = Product.where("product_category LIKE ?", params[:product_category]).where("title LIKE ?", params[:product_title]).all
      elsif !params[:time_sale].nil?
        @products = Product.where("time_sale LIKE ?", params[:time_sale])
     else 
      
      # @products = Product.all  
   
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

       # order number
   @product_number = Product.maximum(:id)
   if @product_number.nil?
      @myproduct_number =  1001
   else
      @myproduct_number = Product.maximum(:id) + 1
   end


  end

  # GET /products/1/edit
  def edit


  if !@product.specsq.nil?

    @my_product_specsq = @product.specsq.to_s
    @specsq = @product.specsq.to_s.gsub('"','')


  else
    @specsq = ""
  end


  if !@product.specsa.nil?

    @my_product_specsa = @product.specsa.to_s
    @specsa = @product.specsa.to_s.gsub('"','')


  else
    @specsa = ""
  end


  if !@product.question.nil?
    @question = @product.question.to_s.gsub('"','')
  else
    @question = ""
  end


  if !@product.answer.nil?
    @answer = @product.answer.to_s.gsub('"','')
  else
    @answer = ""
  end





  if !@product.notice.nil?
    @product_notice = @product.notice 
  else
    @product_notice = "<p>No data</p>"
  end


  if !@product.description.nil?
    @product_description = @product.description
  else
    @product_description= "<p>No data</p>"
  end
  
  if !@product.product_size.nil?

    @my_product_size = '<span>'+@product.product_size.gsub(',',',</span><span>')+'</span>'
    @product_size = @my_product_size.gsub("<span></span>","")+"<input type='text' placeholder='Add size'>"


  else
    @product_size = "<input type='text' value='' placeholder='Add size'>"
  end

  if !@product.product_model.nil?

    @my_product_model = '<span>'+@product.product_model.gsub(',',',</span><span>')+'</span>'
    @product_model = @my_product_model.gsub("<span></span>","")+"<input type='text' placeholder='Add model'>"


  else
    @product_model = "<input type='text' value='' placeholder='Add model'>"
  end

  if !@product.product_color.nil?

    @my_product_color = '<span>'+@product.product_color.gsub(',',',</span><span>')+'</span>'
    @product_color = @my_product_color.gsub("<span></span>","")+"<input type='text' placeholder='Add color'>"

  else
    @product_color = "<input type='text' value='' placeholder='Add color'>"
  end



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
      params.require(:product).permit(:id, :ship_from,:product_childsubcategory,:product_model, :time_sale,:short_title,:show_at,:description, :notice, :product_code_1,:product_code_2,:product_code_3,:product_code_4,:product_code_5,:other_avatar1,:other_avatar2,:other_avatar3,:other_avatar4,:other_avatar5,:avatar1,:avatar2,:avatar3,:avatar4,:avatar5,:product_subcategory, :end_on, :product_size, :product_color, :delivery_rate, :product_video,:start_to_sell_on, :delivery_time,:pick_up, :ebuy_delivery,:product_category, :title, :actual_price, :discount_price, :quantity, specsq: [], specsa: [], question: [], answer: [])
    end
end




      

