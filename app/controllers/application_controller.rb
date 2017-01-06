class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :ebuy_cart
  before_action :set_locale
  helper_method :round_up

  
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
    @myproductlist = @theproductlist.to_s.gsub('"','').gsub(" ","").gsub("[","").gsub("]","")

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

  def reset_cart
     Cart.find(session[:cart_id])
      rescue ActiveRecord::RecordNotFound
      session[:cart_id] = nil
      cart
  end









end
