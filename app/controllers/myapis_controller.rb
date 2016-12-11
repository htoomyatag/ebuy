class MyapisController < ApplicationController
  before_action :set_myapi, only: [:show, :edit, :update, :destroy]
protect_from_forgery with: :null_session
  # GET /myapis
  # GET /myapis.json
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
