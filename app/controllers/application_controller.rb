class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :contact_no, :master_role_id])
  end

  

  # Overwriting the sign_out redirect path method
  # def after_sign_up_path_for(resource_or_scope)
  #   if resource.master_role_id== '2'
  #     new_user_session_path
  #   elsif resourceresource.master_role_id == '3'
  #     new_admin_session_path
  #   else
  #     root_path
  #   end
  # end
   private #condition after log_in of supplier and customer
   def after_sign_in_path_for(resource)
     if resource.master_role_id == 3
      users_path# as defined in config/routes.rb
    elsif resource.master_role_id == 2
       new_user_path
    end
  end

end
