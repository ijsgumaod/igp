class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #protect_from_forgery with: :null_session

  before_action :require_login#, except: [:index]

  private
   def not_authenticated
     flash[:warning] = "You have to authenticate to access this page."
     redirect_to login_path
   end

end
