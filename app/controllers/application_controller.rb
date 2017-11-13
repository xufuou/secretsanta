class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :except => [:home]

  protected
  def after_sign_in_path_for(resource)
  	'/santa/letter' # Or :prefix_to_your_route
  end

end
