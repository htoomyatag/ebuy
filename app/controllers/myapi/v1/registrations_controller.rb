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
                      :data => { :user => resource,
                                 :auth_token => current_user.authentication_token, :user_id => current_user.id, :user_name => current_user.name, :email => current_user.email, :user_type_id => current_user.user_type_id} }
    else
      render :status => :unprocessable_entity,
             :json => { :success => false,
                        :info => resource.errors,
                        :data => {} }
    end
  end


  def user_new
    @user = User.create(
      :user_type_id =>  params[:user_type] ,
      :name => params[:name], 
      :email => params[:email],
      :password => params[:password],
      :password_confirmation => params[:password_confirmation],
      :phone => params[:phone],

      :personal_name => params[:personal_name],
      :personal_address => params[:personal_address],
      :personal_nrc_number => params[:personal_nrc_number],
      :personal_nrc_front => params[:personal_nrc_front],
      :personal_nrc_back => params[:personal_nrc_back],

      :staff_name => params[:staff_name],
      :staff_nrc_number => params[:staff_nrc_number],
      :staff_address => params[:staff_address],
      :staff_nrc_front => params[:staff_nrc_front],
      :staff_nrc_back => params[:staff_nrc_back],
      :company_licensce => params[:company_licensce],
      :company_name => params[:company_name],

      :retail_name => params[:retail_name],
      :retail_address => params[:retail_address],
      :retail_nrc_number => params[:retail_nrc_number],
      :retail_nrc_front => params[:retail_nrc_front],
      :retail_nrc_back => params[:retail_nrc_back],
      :shop_licensce => params[:shop_licensce],
      :shop_name => params[:shop_name]

      )
  end






private

def sign_up_params
    params.require(:user).permit(:full_name, :email, :password, :password_confirmation)
end

 



end