class ApplicationController < ActionController::Base
  include Pundit
  before_action :authenticate_user!
  protect_from_forgery with: :exception

  #before_action is a rails thingy
end
