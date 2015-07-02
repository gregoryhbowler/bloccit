class ApplicationController < ActionController::Base
# Prevent CSRF attacks by raising an exception.
# For APIs, you may want to use :null_session instead.
protect_from_forgery with: :exception
before_action :configure_permited_paramaters, if: :devise_controller?  



protected

  def flash_attack
    flash[:notice] = "Uh oh you got flashed"
  end


  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) >> :name
  end

end