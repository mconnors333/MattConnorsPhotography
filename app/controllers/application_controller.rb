class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

    protected

      def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :phone_number, :email, :password, :password_confirmation])
        devise_parameter_sanitizer.permit(:account_update) { |u|
          u.permit(:first_name, :last_name, :phone_number, :password, :password_confirmation, :current_password)
        }
      end

      def after_sign_in_path_for(resource)
        stored_location_for(resource) || albums_path
      end
end
