class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # # jika tidak menggunakan concerns untuk permitted parameter devise
  # before_action :configure_permitted_parameters, if: :devise_controller?

  # def configure_permitted_parameters
  # 	devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  # 	devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  # end

  # Jika Menggunakan Concerns untuk permitted parameter devise
  include DeviseWhitelist  #in module /controllers/concerns/devise_whiteliset.rb

  # before_action :set_source

  # def set_source
  # 	session[:source] = params[:q] if params[:q]
  # end

  include SetSource # diambil dari nama class set_source.rb module SetSource

end
