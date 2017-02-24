class ApplicationController < ActionController::Base
  before_action :authenticate_scout!

  protect_from_forgery with: :exception
end
