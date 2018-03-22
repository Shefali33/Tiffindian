class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :contact_no, :master_role_id])
  end

   # private

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

end
