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
  include CurrentUserConcern
  include DefaultPageContent
  # byebug

## CARA 1 TIDAK MENGGUNAKAN HELPER DAN GEM
  before_action :set_copyright

  def set_copyright
    @copyright = DevcampViewTool::Renderer.copyright 'Jordan Hudgens', 'All right reserved'
  end
end

# JIKA TIDAK INSTALL MELALUI GEM YANG DIBUAT TADI  gem 'devcamp_view_tool', git: 'https://github.com/danigunawan/professional-rails-lima-development-course-114-115'

module DevcampViewTool
  class Renderer
    def self.copyright name, msg
      "&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
    end
  end
end