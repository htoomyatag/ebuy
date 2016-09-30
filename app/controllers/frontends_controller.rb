class FrontendsController < ApplicationController
  before_action :set_frontend, only: [:show, :edit, :update, :destroy]

  # GET /frontends
  # GET /frontends.json

  def product_info

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
        @products = Product.where("title LIKE ?", params[:title]).limit(10) 
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
