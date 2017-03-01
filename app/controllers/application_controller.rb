class ApplicationController < ActionController::Base
  before_action :authenticate_scout!

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, :keys => [:player_id, :name])

    devise_parameter_sanitizer.permit(:account_update, :keys => [:player_id, :name])
  end
end
