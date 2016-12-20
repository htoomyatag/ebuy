class AdminsController < ApplicationController
  before_action :set_admin, only: [:show, :edit, :update, :destroy]
  layout "backend"
  before_filter :authenticate_admin!, only: [:buyer_list, :dashboard, :show, :edit, :update, :destroy]
  
  # GET /admins
  # GET /admins.json

    def chat_to_seller
        
        @users = BUyer.where("id = ?", params[:id])

        @user_name = Buyer.where("id = ?", params[:buyer_id]).pluck(:buyer_name)
        @raw_user_name = @user_name.to_s.gsub("[", "")
        
        @raw_user_name2 = @raw_user_name.to_s.gsub("]", "")
        @my_user_name = @raw_user_name2.to_s.gsub("\"", "")

        code_one = current_user.buyer_name.to_s+@my_user_name
        code_two = @my_user_name+current_user.buyer_name.to_s

        @products = Product.where("user_id = ?", params[:user_id])
        @sender_messages = Message.where(:conversation_code => code_one)
        @receiver_messages = Message.where(:conversation_code => code_two)

        @messages = Message.where.any_of(@sender_messages, @receiver_messages)

    


  end


  def index
    @admins = Admin.all
  end


  def buyer_list
      @buyers = Buyer.all
  end

  def dashboard
    @products = Product.distinct.count('id')
    @orders = Order.distinct.count('id')
    @currency_exchanges = CurrencyExchange.pluck('currency_rate').last


  end

  # GET /admins/1
  # GET /admins/1.json
  def show
  end

  # GET /admins/new
  def new
    @admin = Admin.new
  end

  # GET /admins/1/edit
  def edit
  end

  # POST /admins
  # POST /admins.json
  def create
    @admin = Admin.new(admin_params)

    respond_to do |format|
      if @admin.save
        format.html { redirect_to @admin, notice: 'Admin was successfully created.' }
        format.json { render :show, status: :created, location: @admin }
      else
        format.html { render :new }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admins/1
  # PATCH/PUT /admins/1.json
  def update
    respond_to do |format|
      if @admin.update(admin_params)
        format.html { redirect_to @admin, notice: 'Admin was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin }
      else
        format.html { render :edit }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admins/1
  # DELETE /admins/1.json
  def destroy
    @admin.destroy
    respond_to do |format|
      format.html { redirect_to admins_url, notice: 'Admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin
      @admin = Admin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_params
      params.require(:admin).permit(:username, :email, :password)
    end


    def sign_up_params
      params.require(:admin).permit(:email, :password, :password_confirmation)
    end
end
