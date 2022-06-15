class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :null_session, prepend: true
  respond_to :html

  layout :layout_by_resource

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password, :password_confirmation])
  end

  private

  def layout_by_resource
    devise_controller? ? "devise" : "application"
  end
end
