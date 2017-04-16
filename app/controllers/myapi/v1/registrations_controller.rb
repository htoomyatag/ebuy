class Myapi::V1::RegistrationsController < Devise::RegistrationsController
  # skip_before_filter :verify_authenticity_token,
  #                    :if => Proc.new { |c| c.request.format == 'application/json' }

  skip_before_filter :verify_authenticity_token  

 before_filter :configure_permitted_parameters
 respond_to :json

  def create
    build_resource
    if resource.save
      sign_in resource
      render :status => 200,
           :json => { :success => true,
                      :info => "Registered",
                      :data => { :buyer => resource,:buyer_id => current_buyer.id} }
    else
      render :status => :unprocessable_entity,
             :json => { :success => false,
                        :info => resource.errors,
                        :data => {} }
    end
  end


  def buyer_new
    @buyer = Buyer.create(

      :buyer_name => params[:buyer_name],
      :buyer_phone => params[:buyer_phone],
      :buyer_township => params[:buyer_township],
      :buyer_address => params[:buyer_address],
      :email => params[:email],
      :password => params[:password],
      :password_confirmation => params[:password_confirmation]

      )

     if !@buyer.save
           render :json => { :success => false}
     else
      render :json => { :success => true}

     end

  end



private

def sign_up_params
    params.require(:buyer).permit(:buyer_name, :buyer_phone, :buyer_township, :buyer_address, :email, :password, :password_confirmation)
end

 



end