class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:landing]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    tasks_path
  end

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/create.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name, :nickname, :avatar, :position, :phone_number, :admin, :team_id])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:full_name, :nickname, :avatar, :position, :phone_number, :admin, :team_id])
  end
end
