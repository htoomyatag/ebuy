class Admins::SessionsController < Devise::SessionsController

  layout "backend"

   def after_sign_out_path_for(admins)
  		admin_session_path
  	end

  	def after_sign_in_path_for(admins)
  	 	dashboard_path
  	end


 
end
