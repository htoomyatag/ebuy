class Myapi::V1::SessionsController < Devise::SessionsController
  skip_before_filter :verify_authenticity_token, :if => Proc.new { |c| c.request.format == 'application/json' }


  skip_before_filter :verify_signed_out_buyer, only: :destroy
  respond_to :json



  def create


    warden.authenticate!(:scope => resource_name, :recall => "#{controller_path}#failure")
    render :status => 200,
           :json => { :success => true,
                      :info => "Logged in",
                      :data => {:buyer_id => current_buyer.id, :buyer_name => current_buyer.buyer_name, :buyer_email => current_buyer.email}}  
  end

  
  def destroy
    warden.authenticate!(:scope => resource_name, :recall => "#{controller_path}#failure")
    current_buyer.update_column(:authentication_token, nil)
    render :status => 200,
           :json => { :success => true,
                      :info => "Logged out",
                      :data => {} }
  end

  def my_sign_out

      render :status => 200,
           :json => { :success => true,
                      :info => "Logged out",
                      :data => {} }

  end


  def failure
    render :status => 401,
           :json => { :success => false,
                      :info => "Login Failed",
                      :data => {} }
  end


  
end