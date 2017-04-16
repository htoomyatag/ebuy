class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  before_filter :ebuy_cart
  before_action :set_locale
  helper_method :round_up



  protect_from_forgery with: :null_session
  skip_before_filter :verify_authenticity_token  
  before_action :set_locale
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token

  
  
  before_filter :configure_permitted_parameters, if: :devise_controller?
  
  protected

  def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys: [:buyer_name,:buyer_phone,:buyer_township,:buyer_address,:email, :password,:password_confirmation, :remember_me])
     devise_parameter_sanitizer.permit(:sign_in, keys: [:email,:password,:password_confirmation,:username])

  end


  def ebuy_cart
    @cart = current_cart
    @currency_exchange = CurrencyExchange.pluck(:currency_rate).last
    @theadmin = "theadmin"
    @theproductlist = Product.pluck(:short_title)
    @myproductlist = @theproductlist.to_s.gsub('"','').gsub("[","").gsub("]","").gsub(', ',',')

  end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options
    { locale: I18n.locale }
  end







 private
  def current_cart

      Cart.find(session[:cart_id])
      rescue ActiveRecord::RecordNotFound
      cart = Cart.create
      session[:cart_id] = cart.id
      cart
      
  end

  def current_cart_mobi

         @mycart_number = Cart.maximum(:id)
         if @mycart_number.nil?
            @cart_number =  1
         else
            @cart_number = Cart.maximum(:id) + 1
         end

          @session_cart = @cart_number
          
          Cart.find(@session_cart)
          rescue ActiveRecord::RecordNotFound
          cart = Cart.create
          @session_cart = cart.id
          cart

  end


  def current_cart_mobi_with_key

     

          @session_cart = Random.rand(1001...2001) 

          
          Cart.find(@session_cart)
          rescue ActiveRecord::RecordNotFound
          cart = Cart.create(:id => @session_cart)
          @session_cart = @session_cart
          cart

  end

  def reset_cart
     Cart.find(session[:cart_id])
      rescue ActiveRecord::RecordNotFound
      session[:cart_id] = nil
      cart
  end




end
