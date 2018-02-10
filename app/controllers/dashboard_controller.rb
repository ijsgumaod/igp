class DashboardController < ApplicationController

  def online_users
    @online_users = User.select('id','name','online').where(online: true)
    respond_to do |format|
      format.json {render :json => @online_users }
    end
  end

  def index
    if logged_in?
      @room = Room.all
      respond_to do |format|
        format.html
        format.json { render :json => @room }
      end
    else
      redirect_to log_in_path
    end

  end
end
