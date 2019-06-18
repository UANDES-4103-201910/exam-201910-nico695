class ApplicationController < ActionController::Base
	protected

		def configure_permitted_parameters
			devise_parameter_sanitizer.permit :sign_up, keys: [:fname , :lname]
			devise_parameter_sanitizer.permit(:account_update) do |u|
				u.permit(:name, :lastname, :email, :city, :password, :password_confirmation, :current_password, :bio)
			end
		end
end
