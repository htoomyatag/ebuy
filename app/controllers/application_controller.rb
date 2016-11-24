class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :ebuy_cart
  before_action :set_locale
  

 

  def ebuy_cart
    @cart = current_cart
    @currency_exchange = CurrencyExchange.pluck(:currency_rate).last
  end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
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
