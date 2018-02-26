class SessionsController < ApplicationController

  skip_before_action :require_login, except: [:destory]

  def create
    if login(params[:username], params[:password])
      current_user.is_online
      flash[:success] = "Welcome!"
      redirect_back_or_to dashboard_index_path
    else
      flash[:warning] = "username/password incorrect"
      render 'new'
    end

  end

  def destroy
    current_user.is_offline
    logout
    flash[:success] = 'Come back again!'
    redirect_to login_path
  end
end
