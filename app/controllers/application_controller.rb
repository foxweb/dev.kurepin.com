class ApplicationController < ActionController::Base
  include Clearance::Authentication
  protect_from_forgery

  def current_puffer_user
    current_user
  end

end
